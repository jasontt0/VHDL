library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity LCD_display is
port(
	rst_n_in: in std_logic;
	clk_in:in std_logic;
	DA_LCD,CLK_LCD,RST_LCD,DC_LCD,BL_LCD :out std_logic;--用于控制LCD
	realv_1 : in integer range 0 to 9;
	realv_2 : in integer range 0 to 9;
	realv_3 : in integer range 0 to 9;
	realv_4 : in integer range 0 to 9;
	realv_5 : in integer range 0 to 9;
	hundred : in integer range 0 to 9;
    decade : in integer range 0 to 9;  
	unit : in integer range 0 to 9;
	mode:in std_logic
);
end LCD_display;

architecture behavioral of LCD_display is
	constant LCDW : integer := 132;		--液晶屏像素宽度
	constant LCDH : integer :=162;		--液晶屏像素高度
	constant red : std_logic_vector(15 downto 0):= "1111100000000000";
	constant green: std_logic_vector(15 downto 0):= "0000011111100000";
	constant blue : std_logic_vector(15 downto 0):= "0000000000011111";
	constant black : std_logic_vector(15 downto 0):= "0000000000000000";
	constant white : std_logic_vector(15 downto 0):= "1111111111111111";
	constant yellow : std_logic_vector(15 downto 0):= "1111111111100000";	--颜色常量
	constant high : std_logic:= '1';
	constant low: std_logic:='0';
	constant init_depth : integer := 73;	--LCD初始化的命令及数据的数量

	type TwoDim_Array is array(natural range <>) of std_logic_vector(11 downto 0);   --数字0~9点阵数据
	constant digit0:TwoDim_Array(0 to 12):=(    
	"000000000000","000111111000","001100001100","011000000110","110000000011","110000000011","110000000011",
	"110000000011","110000000011","110000000011","011000000110","001100001100","000111111000"
	);
	constant digit1:TwoDim_Array(0 to 12):=(    
	"000000000000","000000110000","000000110000","000011110000","000111110000","000000110000","000000110000",
	"000000110000","000000110000","000000110000","000000110000","000000110000","000111111000"
	);
	constant digit2:TwoDim_Array(0 to 12):=(    
	"000000000000","000011111000","000110001100","001100001100","001100001100","000000001100","000000001100",
	"000000011000","000000110000","000001100000","000011000000","000110000000","001111111100"
	);
	constant digit3:TwoDim_Array(0 to 12):=(    
	"000000000000","000011110000","001111111100","001100001100","000000001100","000000111100","000011110000",
	"000011110000","000000111100","000000001100","001100001100","001111111100","000011110000"
	);
	constant digit4:TwoDim_Array(0 to 12):=(    
	"000000000000","000000111000","000001111000","000011011000","000110011000","001100011000","011000011000",
	"011111111110","011111111110","000000011000","000000011000","000000011000","000000011000"
	);
	constant digit5:TwoDim_Array(0 to 12):=(    
	"000000000000","001100000000","001100000000","001111111100","001100000000","001100000000","000011111000",
	"000000001100","000000000110","000000000110","000000000110","000000001100","001111110000"
	);
	constant digit6:TwoDim_Array(0 to 12):=(    
	"000000000000","000000110000","000001100000","000011000000","000110000000","001100000000","011111111000",
	"011110011100","011000000110","011000000110","011000000110","011100001110","001111111100"
	);
	constant digit7:TwoDim_Array(0 to 12):=(    
	"000000000000","011111111110","011111111110","000000001100","000000011000","000000110000","000001100000",
	"000001100000","000011000000","000011000000","000110000000","000110000000","000110000000"
	);
	constant digit8:TwoDim_Array(0 to 12):=(    
	"000000000000","000111111000","001100001100","011000000110","011000000110","001100001100","000111111000",
	"000111111000","001100001100","011000000110","011000000110","001100001100","000111111000"
	);
	constant digit9:TwoDim_Array(0 to 12):=(    
	"000000000000","001111111100","011100001110","011000000110","011000000110","011000000110","001110011110",
	"000111111110","000000001100","000000011000","000000110000","000001100000","000011000000"
	);

	type LCD_state is (idle,main,init,scan,write,delay);
begin

	process (clk_in)
		variable data_reg: std_logic_vector(8 downto 0);
		variable cnt_main,cnt_scan :integer range 0 to 7;
		variable cnt_write :integer range 0 to 31;
		variable cnt_delay,num_delay,cnt,cnt_init : integer range 0 to 65535;
		variable state,state_back:LCD_state:= idle;
		variable high_word: std_logic;
		variable x_cnt,y_cnt:integer range 0 to 255;
		variable data_r:std_logic_vector(131 downto 0):=(others=>'0');
	begin
		if (clk_in'event and clk_in = '1')then 
			if (rst_n_in = '0') then 
				x_cnt := 0;
				y_cnt := 0;
				cnt_main := 0;
				cnt_scan:=0;
				cnt_write := 0;
				cnt_init := 0;
				cnt_delay := 0;
				num_delay := 50;
				high_word :='1';
				BL_LCD <= low;
				state := IDLE;
				state_back := IDLE;                --复位
			else
				case state is
					when IDLE =>
						x_cnt := 0;
						y_cnt := 0;
						cnt_main := 0;
						cnt_scan:=0;
						cnt_write := 0;
						cnt_init := 0;
						cnt_delay := 0;
						num_delay := 10;
						high_word :='1';
						BL_LCD <= low;
						state := main;
						state_back := main;
					when main=>
						case cnt_main is
							when 0=> cnt_main:=1;state:=init;
							when 1=> cnt_main:=2;state:= scan;
							when 2=> cnt_main:=1;
							when others => state := IDLE;
						end case;
					when init=>		--初始化状态
						case cnt_init is 
							when 0=> RST_LCD <= '0';cnt_init:= cnt_init + 1;	--复位有效
							when 1=> num_delay := 3000;state:=delay;state_back:=init;cnt_init := cnt_init + 1;	--延时
							when 2=> RST_LCD <= '1';cnt_init := cnt_init + 1;	--复位恢复
							when 3=> num_delay := 3000;state:= delay;state_back:= init;cnt_init := cnt_init + 1;	--延时
							when 4=> 
								if (cnt >= init_depth) then                   --当73条指令及数据发出后，配置完成
									cnt := 0;
									cnt_init := cnt_init + 1;
								else 
									case cnt is
										when 0 => data_reg := "000010001";num_delay := 50000;cnt:=cnt + 1;state := write ;state_back := init;	--第一条指令需要较长延时
										when 1 => data_reg := "010110001";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 2 => data_reg := "100000101";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 3 => data_reg := "100111100";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 4 => data_reg := "100111100";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 5 => data_reg := "010110010";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 6 => data_reg := "100000101";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 7 => data_reg := "100111100";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 8 => data_reg := "100111100";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 9 => data_reg := "010110011";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 10 => data_reg := "100000101";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 11 => data_reg := "100111100";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 12 => data_reg := "100111100";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 13 => data_reg := "100000101";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 14 => data_reg := "100111100";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 15 => data_reg := "100111100";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 16 => data_reg := "010110100";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 17 => data_reg := "100000011";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 18 => data_reg := "011000000";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 19 => data_reg := "100101000";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 20 => data_reg := "100001000";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 21 => data_reg := "100000100";num_delay := 10 ;cnt:=cnt + 1;state := write ;state_back := init;
										when 22 => data_reg := "011000001";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 23 => data_reg := "111000000";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 24 => data_reg := "011000010";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 25 => data_reg := "100001101";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 26 => data_reg := "100000000";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 27=> data_reg := "011000011";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 28 => data_reg := "110001101";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 29 => data_reg := "100101010";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 30 => data_reg := "011010100";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 31 => data_reg := "110001101";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 32 => data_reg := "111101110";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 33 => data_reg := "000011010";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 34 => data_reg := "000110110";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 35 => data_reg := "111000000";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 36 => data_reg := "011100000";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 37 => data_reg := "100000100";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 38 => data_reg := "100100010";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 39 => data_reg := "100000111";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 40 => data_reg := "100001010";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 41 => data_reg := "100101110";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 42 => data_reg := "100110000";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 43 => data_reg := "100100101";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 44=> data_reg := "100101010";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 45 => data_reg := "100101000";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 46 => data_reg := "100100110";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 47 => data_reg := "100101110";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 48 => data_reg := "100111010";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 49 => data_reg := "100000000";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 50 => data_reg := "100000001";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 51 => data_reg := "100000011";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 52 => data_reg := "100010011";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 53 => data_reg := "011100001";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 54 => data_reg := "100000100";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 55 => data_reg := "100010110";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 56 => data_reg := "100000110";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 57 => data_reg := "100001101";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 58 => data_reg := "100101101";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 59 => data_reg := "100100110";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 60 => data_reg := "100100011";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 61 => data_reg := "100100111";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 62 => data_reg := "100100111";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 63 => data_reg := "100100101";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 64 => data_reg := "100101101";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 65 => data_reg := "100111011";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 66 => data_reg := "100000000";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 67 => data_reg := "100000001";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 68 => data_reg := "100000100";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 69 => data_reg := "100010011";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 70 => data_reg := "000111010";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 71 => data_reg := "100000101";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when 72 => data_reg := "000101001";num_delay := 10;cnt:=cnt + 1;state := write ;state_back := init;
										when others => state  :=  IDLE;
									end case;
								end if;
					when 5=> cnt_init := 0;state := main ;
					when others => state := idle;
					end case;
				when scan =>	--刷屏状态，从RAM中读取数据刷屏
						case cnt_scan is 
							when 0 => 
								if (cnt >=11) then
									cnt:=0;
									cnt_scan := cnt_scan + 1;
								else 	
									case cnt is
										when 0 => data_reg := "000101010";cnt :=cnt + 1;num_delay := 10; state := write;state_back := scan;
										when 1 => data_reg := "100000000";cnt :=cnt + 1;num_delay := 10; state := write;state_back := scan;
										when 2 => data_reg := "100000000";cnt :=cnt + 1;num_delay := 10; state := write;state_back := scan;
										when 3 => data_reg := "100000000";cnt :=cnt + 1;num_delay := 10; state := write;state_back := scan;
										when 4 => data_reg := "110000011";cnt :=cnt + 1;num_delay := 10; state := write;state_back := scan;
										when 5 => data_reg := "000101011";cnt :=cnt + 1;num_delay := 10; state := write;state_back := scan;
										when 6 => data_reg := "100000000";cnt :=cnt + 1;num_delay := 10; state := write;state_back := scan;
										when 7 => data_reg := "100000000";cnt :=cnt + 1;num_delay := 10; state := write;state_back := scan;
										when 8 => data_reg := "100000000";cnt :=cnt + 1;num_delay := 10; state := write;state_back := scan;
										when 9 => data_reg := "110100001";cnt :=cnt + 1;num_delay := 10; state := write;state_back := scan;
										when 10 => data_reg :="000101100";cnt :=cnt + 1;num_delay := 10; state := write;state_back := scan;
										when others => state  := IDLE;
									end case;
								end if;
							when 1 => 
								if (x_cnt <= 0) then 	--确定刷屏的区域坐标
									x_cnt := LCDW;
									if (y_cnt >= LCDH) then 
										y_cnt := 0;
										cnt_scan := cnt_scan + 1;
									else 
										y_cnt := y_cnt + 1;
										cnt_scan := 1;
									end if;
								elsif (mode = '0') then		--根据模式选择显示内容
								    --真实电压显示										
									case realv_1 is
									when 0=>
											data_r(121 downto 110):=digit0(y_cnt);
								     
									when 1=>	
											data_r(121 downto 110):=digit1(y_cnt);
								    
									when 2=>	
											data_r(121 downto 110):=digit2(y_cnt);
								  
									when 3=>	
											data_r(121 downto 110):=digit3(y_cnt);
											
									when others=>
											null;
								  
									end case;
							
									case realv_2 is
							
									when 0=>
											data_r(102 downto 91):=digit0(y_cnt);
								  
									when 1=>
											data_r(102 downto 91):=digit1(y_cnt);
								  
									when 2=>
											data_r(102 downto 91):=digit2(y_cnt);
								     
									when 3=>
											data_r(102 downto 91):=digit3(y_cnt);
								    							
									when 4=>
											data_r(102 downto 91):=digit4(y_cnt);
								     																		
									when 5=>
											data_r(102 downto 91):=digit5(y_cnt);
											
									when 6=>
											data_r(102 downto 91):=digit6(y_cnt);
								    		
									when 7=>
											data_r(102 downto 91):=digit7(y_cnt);
								   	
									when 8=>
											data_r(102 downto 91):=digit8(y_cnt);
								     		
									when 9=>
											data_r(102 downto 91):=digit9(y_cnt);
											
									when others=>
											null;
								    
									end case;						
									case realv_3 is
							
									when 0=>
											data_r(88 downto 77):=digit0(y_cnt);
								    
									when 1=>
											data_r(88 downto 77):=digit1(y_cnt);
								     
									when 2=>

											data_r(88 downto 77):=digit2(y_cnt);	
											
									when 3=>
											data_r(88 downto 77):=digit3(y_cnt);
								    									
									when 4=>
											data_r(88 downto 77):=digit4(y_cnt);
								     																		
									when 5=>
											data_r(88 downto 77):=digit5(y_cnt);	
											
									when 6=>
											data_r(88 downto 77):=digit6(y_cnt);	
											
									when 7=>
											data_r(88 downto 77):=digit7(y_cnt);
											
									when 8=>
											data_r(88 downto 77):=digit8(y_cnt);	
											
									when 9=>
											data_r(88 downto 77):=digit9(y_cnt);
											
									when others=>
											null;
											
									end case;	
									case realv_4 is
							
									when 0=>
											data_r(74 downto 63):=digit0(y_cnt);
									
									when 1=>
											data_r(74 downto 63):=digit1(y_cnt);
								     
									when 2=>
											data_r(74 downto 63):=digit2(y_cnt);	
											
									when 3=>
											data_r(74 downto 63):=digit3(y_cnt);
								    									
									when 4=>
											data_r(74 downto 63):=digit4(y_cnt);
								     																		
									when 5=>
											data_r(74 downto 63):=digit5(y_cnt);
											
									when 6=>
											data_r(74 downto 63):=digit6(y_cnt);	
											
									when 7=>
											data_r(74 downto 63):=digit7(y_cnt);
											
									when 8=>
											data_r(74 downto 63):=digit8(y_cnt);	
											
									when 9=>
											data_r(74 downto 63):=digit9(y_cnt);
											
									when others=>
											null;
									end case;	
						 
									case realv_5 is
							
									when 0=>
											data_r(60 downto 49):=digit0(y_cnt);
									
									when 1=>
											data_r(60 downto 49):=digit1(y_cnt);
								     
									when 2=>
											data_r(60 downto 49):=digit2(y_cnt);	
											
									when 3=>
											data_r(60 downto 49):=digit3(y_cnt);
								    									
									when 4=>
											data_r(60 downto 49):=digit4(y_cnt);
								     																		
									when 5=>
											data_r(60 downto 49):=digit5(y_cnt);	
											
									when 6=>
											data_r(60 downto 49):=digit6(y_cnt);	
											
									when 7=>
											data_r(60 downto 49):=digit7(y_cnt);
											
									when 8=>
											data_r(60 downto 49):=digit8(y_cnt);	
											
									when 9=>
											data_r(60 downto 49):=digit9(y_cnt);
											
									when others=>
									null;
									end case;							 
									case y_cnt is
										  when 0=> data_r:=(others=>'0');
										  when 1=> data_r(107 downto 105):="000"; data_r(46 downto 35):="110000000011"; 
										  when 2=> data_r(107 downto 105):="000"; data_r(46 downto 35):="110000000011"; 
										  when 3=> data_r(107 downto 105):="000"; data_r(46 downto 35):="110000000011"; 
										  when 4=> data_r(107 downto 105):="000"; data_r(46 downto 35):="011000000110"; 
										  when 5=> data_r(107 downto 105):="000"; data_r(46 downto 35):="011000000110";
										  when 6=> data_r(107 downto 105):="000"; data_r(46 downto 35):="011000000110"; 
										  when 7=> data_r(107 downto 105):="000"; data_r(46 downto 35):="001100001100"; 
										  when 8=> data_r(107 downto 105):="000"; data_r(46 downto 35):="001100001100"; 
										  when 9=> data_r(107 downto 105):="000"; data_r(46 downto 35):="001100001100";
										  when 10=> data_r(107 downto 105):="111";data_r(46 downto 35):="000110011000"; 
										  when 11=> data_r(107 downto 105):="111";data_r(46 downto 35):="000110011000"; 
										  when 12=> data_r(107 downto 105):="111";data_r(46 downto 35):="000001100000"; --中间小数点与右侧单位V
										  when others=> data_r:=(others=>'0');
									end case;

									if (high_word = '1') then 
										if (data_r(x_cnt) = '1')then
											data_reg := '1'& red(15 downto 8);	--顶层色为红色
										else 
											data_reg :='1'& white(15 downto 8);		--背景色为黑色
										end if;
									else 
										if (data_r(x_cnt) = '1')then
											data_reg := '1'&red(7 downto 0);
										else 
											data_reg :='1'& white(7 downto 0);
										end if;
										x_cnt := x_cnt - 1;	
									end if;
										high_word := not high_word;
										num_delay := 50;
										state := write ;
										state_back := scan;
										
									else
									
									case hundred is
									when 0=>
											data_r(88 downto 77):=digit0(y_cnt);
								     
									when 1=>	
											data_r(88 downto 77):=digit1(y_cnt);
								    
									when 2=>	
											data_r(88 downto 77):=digit2(y_cnt);
								  
											
									when others=>
											null;
								  
									end case;
							
									case decade is
							
									when 0=>
											data_r(74 downto 63):=digit0(y_cnt);
								  
									when 1=>
											data_r(74 downto 63):=digit1(y_cnt);
								  
									when 2=>
											data_r(74 downto 63):=digit2(y_cnt);
								     
									when 3=>
											data_r(74 downto 63):=digit3(y_cnt);
								    							
									when 4=>
											data_r(74 downto 63):=digit4(y_cnt);
								     																		
									when 5=>
											data_r(74 downto 63):=digit5(y_cnt);
											
									when 6=>
											data_r(74 downto 63):=digit6(y_cnt);
								    		
									when 7=>
											data_r(74 downto 63):=digit7(y_cnt);
								   	
									when 8=>
											data_r(74 downto 63):=digit8(y_cnt);
								     		
									when 9=>
											data_r(74 downto 63):=digit9(y_cnt);
											
									when others=>
											null;
								    
									end case;	
									
									case unit is
							
									when 0=>
											data_r(60 downto 49):=digit0(y_cnt);
								    
									when 1=>
											data_r(60 downto 49):=digit1(y_cnt);
								     
									when 2=>

											data_r(60 downto 49):=digit2(y_cnt);	
											
									when 3=>
											data_r(60 downto 49):=digit3(y_cnt);
								    									
									when 4=>
											data_r(60 downto 49):=digit4(y_cnt);
								     																		
									when 5=>
											data_r(60 downto 49):=digit5(y_cnt);	
											
									when 6=>
											data_r(60 downto 49):=digit6(y_cnt);	
											
									when 7=>
											data_r(60 downto 49):=digit7(y_cnt);
											
									when 8=>
											data_r(60 downto 49):=digit8(y_cnt);	
											
									when 9=>
											data_r(60 downto 49):=digit9(y_cnt);
											
									when others=>
											null;
											
									end case;	
													 
									case y_cnt is
										  when 0=> data_r:=(others=>'0');
										  when 1=> data_r(107 downto 105):="000"; data_r(46 downto 35):="000000000000"; 
										  when 2=> data_r(107 downto 105):="000"; data_r(46 downto 35):="000000000000"; 
										  when 3=> data_r(107 downto 105):="000"; data_r(46 downto 35):="000000000000"; 
										  when 4=> data_r(107 downto 105):="000"; data_r(46 downto 35):="000000000000"; 
										  when 5=> data_r(107 downto 105):="000"; data_r(46 downto 35):="000000000000";
										  when 6=> data_r(107 downto 105):="000"; data_r(46 downto 35):="000000000000"; 
										  when 7=> data_r(107 downto 105):="000"; data_r(46 downto 35):="000000000000"; 
										  when 8=> data_r(107 downto 105):="000"; data_r(46 downto 35):="000000000000"; 
										  when 9=> data_r(107 downto 105):="000"; data_r(46 downto 35):="000000000000";
										  when 10=> data_r(107 downto 105):="000";data_r(46 downto 35):="000000000000"; 
										  when 11=> data_r(107 downto 105):="000";data_r(46 downto 35):="000000000000"; 
										  when 12=> data_r(107 downto 105):="000";data_r(46 downto 35):="000000000000"; 
										  when others=> data_r:=(others=>'0');
									end case;

									if (high_word = '1') then 
										if (data_r(x_cnt) = '1')then
											data_reg := '1'& yellow(15 downto 8);	--顶层色为黄色
										else 
											data_reg :='1'& black(15 downto 8);		--背景色为黑色
										end if;
									else 
										if (data_r(x_cnt) = '1')then
											data_reg := '1'&yellow(7 downto 0);
										else 
											data_reg :='1'& black(7 downto 0);
										end if;
										x_cnt := x_cnt - 1;	
									end if;
										high_word := not high_word;
										num_delay := 50;
										state := write ;
										state_back := scan;
									
								end if;
							when 2 =>
									cnt_scan := 0;
									BL_LCD <= high;
									state := main;
							when others =>
									state := IDLE;
							end case;
				when write =>	--WRITE状态，将数据按照SPI时序发送给屏幕
					if (cnt_write>= 18) then 
						cnt_write := 0;
					else 
						cnt_write := cnt_write + 1;
						case cnt_write is 
							when 1 => DC_LCD <= data_reg(8);	--9为数据最高位为命令数据控制位
							when 2 => CLK_LCD <= low;DA_LCD<= data_reg(7);
							when 3 => CLK_LCD <= high;
							when 4 => CLK_LCD <= low;DA_LCD <=data_reg(6);
							when 5 => CLK_LCD <= high;
							when 6 => CLK_LCD <= low;DA_LCD <=data_reg(5);
							when 7 => CLK_LCD <= high;
							when 8 => CLK_LCD <= low;DA_LCD<= data_reg(4);
							when 9 => CLK_LCD <= high;
							when 10 => CLK_LCD <= low;DA_LCD <=data_reg(3);
							when 11 => CLK_LCD <= high;
							when 12 => CLK_LCD <= low;DA_LCD <=data_reg(2);
							when 13 => CLK_LCD <= high;
							when 14 => CLK_LCD <= low;DA_LCD <=data_reg(1);
							when 15 => CLK_LCD <= high;
							when 16 => CLK_LCD <= low;DA_LCD <=data_reg(0);
							when 17 => CLK_LCD <= high;
							when 18 => CLK_LCD <= low;state := delay;
							when others => state :=  IDLE;	
						end case;					end if;
				when delay =>
					if (cnt_delay >= num_delay) then
						cnt_delay := 0;
						state := state_back;
					else 
						cnt_delay := cnt_delay + 1;
					end if;
				when others => state := IDLE;
			end case;
	end if;
end if;
end process;

end behavioral;

