library ieee;                    
 use  ieee.std_logic_1164.all;  
 use  ieee.std_logic_unsigned.all;
 use ieee.std_logic_arith.all;
--二进制转BCD模块
  
 entity binary_to_BCD is
 port(
    rst_n_in:in std_logic;                              --复位信号
    ADC_level:in std_logic_vector(7 downto 0);           --ADC得到的数据
	mode:in std_logic;                       --模式（0-255 or 0-3.3）
	
	 
	realv_1 : out integer range 0 to 9;
	realv_2 : out integer range 0 to 9;
	realv_3 : out integer range 0 to 9;
	realv_4 : out integer range 0 to 9;
	realv_5 : out integer range 0 to 9;                 --真实电压五位数据
	
	hundreds:out integer range 0 to 9; 	
	decade:out integer range 0 to 9; 	
	unit:out integer range 0 to 9;  	--量化电平三位数据	
	
	ctrlword_595_1:out std_logic_vector(15 downto 0);	
    ctrlword_595_2:out std_logic_vector(15 downto 0);	
    ctrlword_595_3:out std_logic_vector(15 downto 0);	
    ctrlword_595_4:out std_logic_vector(15 downto 0);	
    ctrlword_595_5:out std_logic_vector(15 downto 0);	
    ctrlword_595_6:out std_logic_vector(15 downto 0)
 );
 end binary_to_BCD;
 
 architecture BCDencoder of binary_to_BCD is


--量化电平显示
signal hundreds_r:integer range 0 to 9; --百位
signal decade_r:integer range 0 to 9; --十位
signal unit_r:integer range 0 to 9; --个位
--转换为实际电压后显示
signal realv_1_r:integer range 0 to 9; --个位
signal realv_2_r:integer range 0 to 9; --十分位
signal realv_3_r:integer range 0 to 9; --百分位
signal realv_4_r:integer range 0 to 9; --千分位
signal realv_5_r:integer range 0 to 9; --万分位
--量化电平转化为BCD
signal adclevel_bcd:std_logic_vector(11 downto 0);	--三位数据对应12位BCD码
--真实电压转化为BCD
signal voltage_code:std_logic_vector(15 downto 0);
signal realvoltage_bcd:std_logic_vector(19 downto 0);	--五位数据对应20位BCD码

type TwoDim_Array is array(natural range <>) of std_logic_vector(7 downto 0);   --二维数组
constant enable_digit:TwoDim_Array(0 to 6):=(      --选择数码管（"11111111"为关闭）
"01111111","10111111","11011111",
"11101111","11110111","11111011","11111111");	

constant segmentdecode:TwoDim_Array(0 to 16):=(     --不带小数点，数码管0~F
"11111100","01100000","11011010","11110010",
"01100110","10110110","10111110","11100000",
"11111110","11110110","11101110","00111110",
"10011100","01111010","10011110","10001110",
"00000000");

constant segmentdecode_dp:TwoDim_Array(0 to 16):=(      --带小数点，数码管0.~F.
"11111101","01100001","11011011","11110011",
"01100111","10110111","10111111","11100001",
"11111111","11110111","11101111","00111111",
"10011101","01111011","10011111","10001111",
"00000000");

 
 begin

    process(ADC_level,rst_n_in)       --转化为BCD码
	variable z: STD_LOGIC_VECTOR (19 downto 0);
	variable tmp_data: std_logic_vector (7 downto 0);
  begin
    for i in 0 to 19 loop
  z(i) := '0';                     --初始化z
    end loop;
   z(10 downto 3) := ADC_level;		--起始直接左移三位（ADC_level最大11111111，左移三位后取前四位才可能大于4）
     for i in 0 to 4 loop          
  if z(11 downto 8) > 4 then 
      z(11 downto 8) := z(11 downto 8) + 3;
  end if;
   if z(15 downto 12) > 4 then 
      z(15 downto 12) := z(15 downto 12) + 3;
    end if;
  z(18 downto 1) := z(17 downto 0);
     end loop;		
   adclevel_bcd <= z(19 downto 8); 		--移位法将二进制表示的0~255转为12bitBCD码
   --hundreds_r<=conv_integer(adclevel_bcd(11 downto 8));
   decade_r<=conv_integer(adclevel_bcd(7 downto 4));
   unit_r<=conv_integer(adclevel_bcd(3 downto 0));		--分别提取三位数据
	tmp_data(7 downto 0):=ADC_level;
	if(tmp_data>="11001000")then
		hundreds_r<=2;
	elsif(tmp_data>="01100100")then
		hundreds_r<=1;
	else
		hundreds_r<=0;
	end if;
	 end process;
	
	--电压转化BCD码
  process(ADC_level)
    variable z: STD_LOGIC_VECTOR (35 downto 0);
	begin
	voltage_code<=('0'&ADC_level&"0000000")+("00000000"&ADC_level);		--由ADC采样计算实际电压,ADC*129（实际电压=V_adc*0.0129）
    for i in 0 to 39 loop
  z(i) := '0';
    end loop;
   z(15 downto 0) := voltage_code;
     for i in 0 to 15 loop
  if z(19 downto 16) > 4 then 
      z(19 downto 16) := z(19 downto 16) + 3;
  end if;
   if z(23 downto 20) > 4 then 
      z(23 downto 20) := z(23 downto 20) + 3;
    end if;
  if z(27 downto 24) > 4 then 
      z(27 downto 24) := z(27 downto 24) + 3;
    end if;
	if z(31 downto 28) > 4 then 
      z(31 downto 28) := z(31 downto 28) + 3;
    end if;
	if z(35 downto 32) > 4 then 
      z(35 downto 32) := z(35 downto 32) + 3;
    end if;
  z(33 downto 1) := z(32 downto 0);
     end loop;
   realvoltage_bcd <= z(35 downto 16);	--移位法得到真实电压对应的20bitBCD码
   realv_1_r<=conv_integer(realvoltage_bcd(19 downto 16));
   realv_2_r<=conv_integer(realvoltage_bcd(15 downto 12));
   realv_3_r<=conv_integer(realvoltage_bcd(11 downto 8));
   realv_4_r<=conv_integer(realvoltage_bcd(7 downto 4));
   realv_5_r<=conv_integer(realvoltage_bcd(3 downto 0));
   
	 end process;
	
	--传输数据
	process(mode)
    begin
	if(mode='0')then  --mode=0显示实际电压
		ctrlword_595_1(7 downto 0)<=segmentdecode(0);       --第一个数码管不用
		ctrlword_595_1(15 downto 8)<=enable_digit(6);              --第一个数码管关闭
		ctrlword_595_2(7 downto 0)<=segmentdecode_dp(realv_1_r);	--第二个数码管显示真实电压个位，带小数点
		ctrlword_595_2(15 downto 8)<=enable_digit(1);              --选择第二个数码管
		ctrlword_595_3(7 downto 0)<=segmentdecode(realv_2_r);    --第三个数码管显示真实电压十分位
		ctrlword_595_3(15 downto 8)<=enable_digit(2);               --选择第三个数码管
		ctrlword_595_4(7 downto 0)<=segmentdecode(realv_3_r);    --第四个数码管显示真实电压百分位
		ctrlword_595_4(15 downto 8)<=enable_digit(3);               --选择第四个数码管
		ctrlword_595_5(7 downto 0)<=segmentdecode(realv_4_r);   --第五个数码管显示真实电压千分位
		ctrlword_595_5(15 downto 8)<=enable_digit(4);               --选择第五个数码管
		ctrlword_595_6(7 downto 0)<=segmentdecode(realv_5_r);  --第六个数码管显示真实电压万分位
		ctrlword_595_6(15 downto 8)<=enable_digit(5);               --选择第六个数码管
	else	--mode=1显示量化电平
	   ctrlword_595_1(15 downto 8)<=enable_digit(6);          	 --第一个数码管关闭
	   ctrlword_595_2(15 downto 8)<=enable_digit(6);          	 --第二个数码管关闭
	   ctrlword_595_3(15 downto 8)<=enable_digit(6);             --第三个数码管关闭
	   ctrlword_595_4(7 downto 0)<=segmentdecode(hundreds_r);      --第四个数码管显示量化电平百位
	   ctrlword_595_4(15 downto 8)<=enable_digit(3);               --选择第四个数码管
	   ctrlword_595_5(7 downto 0)<=segmentdecode(decade_r);      --第五个数码管显示量化电平十位
	   ctrlword_595_5(15 downto 8)<=enable_digit(4);               --选择第五个数码管
	   ctrlword_595_6(7 downto 0)<=segmentdecode(unit_r);      --第六个数码管显示量化电平个位
	   ctrlword_595_6(15 downto 8)<=enable_digit(5);               --选择第六个数码管
    end if;
    
end process;
    realv_1<=realv_1_r;
	realv_2<=realv_2_r;
	realv_3<=realv_3_r;
	realv_4<=realv_4_r;
	realv_5<=realv_5_r;
	hundreds<=hundreds_r;
	decade<=decade_r;
	unit<=unit_r;	--转换后数据输出
 end BCDencoder;