library ieee;                    
use  ieee.std_logic_1164.all;     
use  ieee.std_logic_unsigned.all; 
--数据传输模块
 
entity ctrlword_595 is
port(
	clk_in:in std_logic;		--12MHz时钟
	rst_n_in:in std_logic;		--复位信号
	
	signal ctrlword_595_1:in std_logic_vector(15 downto 0);	
    signal ctrlword_595_2:in std_logic_vector(15 downto 0);	
    signal ctrlword_595_3:in std_logic_vector(15 downto 0);	
    signal ctrlword_595_4:in std_logic_vector(15 downto 0);	
    signal ctrlword_595_5:in std_logic_vector(15 downto 0);	
    signal ctrlword_595_6:in std_logic_vector(15 downto 0);	
	
	din:out std_logic;		--给74HC595的串行数据
	sck:out std_logic;		--给74HC595的输入时钟
	rck:out std_logic		--给74HC595的输出时钟
);
end ctrlword_595;
 
architecture Parallelout of ctrlword_595 is

	signal shift_clock_cnt:integer:=0;		--分频用计数器
	signal shift_clock:std_logic:='1';    
	signal shift_clock_ls:std_logic;      
	signal shift_cnt:integer range 0 to 15;   --移位计数器，记录已传几位数据  
	signal paralout_clk:std_logic;		--并行输出脉冲信号
 
	signal codeword_partnum: integer range 0 to 5;  --指示传输用那一段控制字
	signal codeword_part0: std_logic_vector(15 downto 0);
	signal codeword_part1: std_logic_vector(15 downto 0);
	signal codeword_part2: std_logic_vector(15 downto 0);
	signal codeword_part3: std_logic_vector(15 downto 0);
	signal codeword_part4: std_logic_vector(15 downto 0);
	signal codeword_part5: std_logic_vector(15 downto 0);
 
begin 
	codeword_part0 <= ctrlword_595_1(15 downto 0);	--存储各位数码管控制字
	codeword_part1 <= ctrlword_595_2(15 downto 0);
	codeword_part2 <= ctrlword_595_3(15 downto 0);
	codeword_part3 <= ctrlword_595_4(15 downto 0);
	codeword_part4 <= ctrlword_595_5(15 downto 0);
	codeword_part5 <= ctrlword_595_6(15 downto 0);
 
	--12MHz分频为2MHz
	process(clk_in,rst_n_in)
	begin
		if (rst_n_in='0') then	
			shift_clock_cnt<=0;
			shift_clock<='1';
		elsif (rising_edge(clk_in)) then
			shift_clock_cnt<=shift_clock_cnt+1;
			if (shift_clock_cnt=2) then                   
				shift_clock<=not shift_clock;					
				shift_clock_cnt<=0;	
			end if;
		end if;	
	end process;
	sck<=shift_clock;	--输出给595作为输入时钟

	process(clk_in)
	begin
		if(rising_edge(clk_in)) then
			shift_clock_ls<=shift_clock;                  --记录前一个状态
		end if;
	end process;
	

	process(clk_in,rst_n_in)
	begin
		if (rst_n_in='0') then
			shift_cnt<=0;
		elsif (rising_edge(clk_in)) then
			if (shift_clock='1' and shift_clock_ls='0') then   --确认shift_clock上升沿
				if (shift_cnt=15) then                          --传16位后置零
					shift_cnt<=0;
				else
					shift_cnt<=shift_cnt+1;                     
				end if;
			end if;
		end if;
	end process;
	
	--传16位后并行输出它们
	process(shift_cnt,rst_n_in)
	begin
		if (rst_n_in='0') then               --复位
			paralout_clk<='0';
		elsif (shift_cnt=0) then
			paralout_clk<='1';                  --当shift_cnt=0时，输出数据
		else
			paralout_clk<='0';
		end if;
	end process;
	rck<=paralout_clk;		--595输出数据的脉冲信号
	
	process(clk_in,rst_n_in)
	begin
		if (rst_n_in='0') then               --复位
			din<='0';
		elsif (rising_edge(clk_in)) then
			if (shift_clock='0' and shift_clock_ls='1') then    --在SCK的下降沿写入din（上升沿计数）
				case codeword_partnum is
					when 0=> din<=codeword_part0(shift_cnt);
					when 1=> din<=codeword_part1(shift_cnt);
					when 2=> din<=codeword_part2(shift_cnt);
					when 3=> din<=codeword_part3(shift_cnt);
					when 4=> din<=codeword_part4(shift_cnt);
					when 5=> din<=codeword_part5(shift_cnt);
					when others=> null;                          
				end case;
				if (shift_cnt=15) then	                         
					if (codeword_partnum=5) then
						codeword_partnum<=0;                                --传完6*16bit，开始下一次传输
					else
						codeword_partnum<=codeword_partnum+1;                          --每传16bit进入下一部分
					end if;
				end if;
			end if;
		end if;
	end process;
 end Parallelout;