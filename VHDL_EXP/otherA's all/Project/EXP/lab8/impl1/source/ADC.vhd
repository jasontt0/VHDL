library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
--ADC模块

entity ADC is 
port(
	clk_in : in std_logic;   --12MHz时钟
	rst_n_in : in std_logic;  --复位信号
	scl_out :out std_logic;   --I2C总线与PCF8591通信的scl
	sda_out : inout std_logic;   --I2C总线与PCF8591通信的sda
	ADC_level :out std_logic_vector(7 downto 0)  --ADC采样数据
);
end ADC;

architecture behavior of ADC is
	signal clk_divided: std_logic:='0';   --分频后时钟信号
	shared variable scl_out_r:std_logic;
	shared variable sda_out_r:std_logic;
begin
	--将12MHz分频，分频后4个周期完成16bit数据传输
	--I2C最高频率100kHz，分频至少30倍
	process(clk_in)
		constant cnt_num :integer := 10000;	--分频倍数为2*cnt_num
		variable cnt_divided:integer range 0 to cnt_num;
		variable temp_divided : std_logic := '0'; 
	begin
		if (clk_in'event and clk_in = '1') then 
			if (rst_n_in = '0') then   --复位
				cnt_divided :=0;
				temp_divided := '0';
			elsif (cnt_divided >= cnt_num -1)then   
				cnt_divided := 0;
				temp_divided := not temp_divided;
			else
				cnt_divided := cnt_divided + 1;
			end if;
		end if;
		clk_divided <= temp_divided;
	end process;
	
	process(clk_divided)
		type i2c_state is(IDLE, MAIN, START, WRITE, READ, STOP);--PCF8591的状态
		variable state: i2c_state;
		variable ADC_level_r:std_logic_vector(7 downto 0);
		variable data_write:std_logic_vector(7 downto 0);
		variable cnt,cnt_start,cnt_write,cnt_stop:integer range 0 to 8;
		variable cnt_main:integer range 0 to 15;
		variable cnt_read:integer range 0 to 31;
	begin
		if(clk_divided'event and clk_divided ='1') then 
			if (rst_n_in = '0') then   --复位，将相关数据初始化
				scl_out_r:= '1';
				sda_out_r:= '1';
				cnt := 0;
				cnt_main := 0;
				cnt_read := 0;
				cnt_start := 0;
				cnt_stop := 0;
				cnt_write := 0;
	            ADC_level<= "00000000";
				state := IDLE;
			else
				case (state) is
					when IDLE =>       --软件自复位，用于程序跑飞后处理
						scl_out_r:= '1';
						sda_out_r:= '1';
						cnt := 0;
						cnt_main := 0;
						cnt_read := 0;
						cnt_start := 0;
						cnt_stop := 0;
						cnt_write := 0;
						ADC_level<= "00000000";
						state := MAIN;
					when MAIN=>
						if (cnt_main >=7) then   --cnt_main对MAIN中子状态进行控制
							cnt_main:=7;
						else 
							cnt_main := cnt_main + 1;
						end if;
						case (cnt_main) is 
							when 1=>state := START;cnt_start:=0;cnt:=0;                           --I2C通信时序中的START
							when 2=>data_write :="10010000";state:= WRITE;cnt_write:=0;cnt:=0;    --A0,A1,A2接GND，写地址为90H
							when 3=>data_write :="00000000";state:= WRITE;cnt_write:=0;cnt:=0;    --控制字00H，采用4通道ADC中的通道0
							when 4=>state := STOP;cnt_stop:=0;cnt:=0;                             --I2C通信时序中的STOP
							when 5=>state := START;cnt_start:=0;cnt:=0;                           --I2C通信时序中的START
							when 6=>data_write :="10010001";state:= WRITE;cnt_write:=0;cnt:=0;    --A0,A1,A2接GND，读地址为91H
							when 7=>state:= READ;cnt_read:=0;cnt:=0;                              --读取采样数据
							when 8=>state:= STOP;	cnt_stop:=0;cnt:=0;                            --I2C通信时序中的STOP，读取完成标志
							when 9=>state:= MAIN;                                                  --预留状态，不执行
							when others=>state:= IDLE;                                             --失控进入自复位
						end case;
					when START=>                    --I2C通信时序中的起始START
						if (cnt_start >= 6) then    --cnt_start对START中子状态进行控制
							cnt_start := 1;
						else 
							cnt_start := cnt_start + 1;
						end if;
						case (cnt_start) is
							when 1|2=>sda_out_r:= '1';scl_out_r:= '1';   --将SCL和SDA拉高，保持4.7μs以上
							when 3|4=>sda_out_r:= '0';                 --SDA拉低至SCL拉低，之间需要保持4.0μs以上
							when 5=>scl_out_r:= '0';                    
							when 6=>scl_out_r:= '0';state:= MAIN;      --SCL拉低，同时返回MAIN
							when others =>state:= IDLE;               --失控进入自复位
						end case;
					when WRITE =>                --I2C通信时序中的写操作WRITE和相应判断操作ACK
						if (cnt <= 6) then        --共需发送8bit，cnt控制循环次数
							if (cnt_write >=4)then
								cnt_write :=1;
								cnt := cnt+1;
							else
								cnt_write := cnt_write + 1;
								cnt := cnt;
							end if;
						else 
							cnt_write := cnt_write + 1;
							cnt := cnt;
						end if;
						case cnt_write is         --cnt_write对WRITE中子状态进行控制
							when 1=>scl_out_r:='0';sda_out_r:=data_write(7-cnt);    --SCL拉低，SDA输出对应位
							when 2|3=>scl_out_r:='1';                              --SCL拉高，保持4.0μs以上
							when 4=>scl_out_r:='0';                                --SCL拉低，准备发送下一bit
							when 5=>sda_out_r:='Z';                                --释放SDA线，准备接收从设备(PCF8591)响应
							when 6=>scl_out_r:='1';                                --SCL拉高，保持4.0μs以上
							when 7=>state := state;                              
							when 8=>scl_out_r:= '0';state := MAIN;                 --SCL拉低，返回MAIN
							when others =>state:= IDLE;                           --失控进入自复位
						end case;
					when READ=>                    --I2C通信时序中的读操作READ和返回ACK
						if(cnt <= 6) then          --共需要接收8bit，cnt控制循环次数
							if (cnt_read>=4) then 
								cnt_read :=1;
								cnt := cnt+1;
							else
								cnt_read := cnt_read + 1;
								cnt := cnt;
							end if;
						else
							cnt_read := cnt_read + 1;
							cnt := cnt;
						end if;
						case (cnt_read) is         
							when 1=>									
								scl_out_r:= '0';
								sda_out_r:= 'Z';     --SCL拉低，释放SDA线，准备接收从设备数据
							when 2=>
								scl_out_r:= '1';     --SCL拉高，保持4.0μs以上
							when 3=>
								ADC_level_r(7-cnt):=sda_out;    --读取从设备返回的数据
							when 4=>
								scl_out_r:= '0';     --SCL拉低，准备接收下1bit的数据
							when 5=> 
								sda_out_r:= '0';
								ADC_level <= ADC_level_r;	--将接收的数据锁存
							when 6=>
								scl_out_r:= '1';      
							when 7=> 
								scl_out_r:= '1';      --SCL拉高，保持4.0μs以上
							when 8=>
								scl_out_r:='0';
								state:=MAIN;        --SCL拉低，返回MAIN状态
							when others =>
								state:= IDLE;       --失控进入自复位
						end case;
					when STOP=>                   --I2C通信时序中的结束STOP
						if (cnt_stop >= 6) then   --cnt_stop对STOP中子状态进行控制
							cnt_stop := 1;
						else
							cnt_stop := cnt_stop + 1;
						end if ;
						case (cnt_stop) is 
							when 1|2=>
								sda_out_r:= '0';     --SDA拉低，准备STOP
							when 3|4=>
								scl_out_r:= '1';     --SCL提前比SDA拉高提前4.0μs
							when 5=> 
								sda_out_r:= '1';     
							when 6 =>
								sda_out_r:= '1';	--SDA拉高
								state:= MAIN;       --完成STOP,返回MAIN
  							when others =>
								state:= IDLE;       --失控进入自复位
						end case;
					when others =>
						state:= IDLE;
				end case;
			end if;
		end if;
	end process;
	
	sda_out<=sda_out_r;
	scl_out<=scl_out_r;		--通讯总线输出
end behavior;