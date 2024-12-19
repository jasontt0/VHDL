 library ieee;                    
 use  ieee.std_logic_1164.all;     
 use  ieee.std_logic_unsigned.all; 
 
 --模式控制模块
 
 entity ModeCtrler is 
 port (
	clk_in:in std_logic;			--12MHz Clock
	rst_n_in:in std_logic;			--复位信号
	mode_key_state3:in std_logic;   --采样后的mode（中间变量）
	mode:out std_logic	             --当前模式（是0-255还是0-3.3）
 );
 end ModeCtrler;
 
 architecture ModeCtrl of ModeCtrler is

 signal moderec:std_logic;	--记录当前状态
 signal mode_key_state3_ls:std_logic;          --采样前的mode（中间变量）


 begin
	process(clk_in,rst_n_in)
	begin
		if (rst_n_in='0') then	--复位
			moderec<='0';
		elsif (rising_edge(clk_in)) then
			if (mode_key_state3='0' and mode_key_state3_ls='1') then    --按键按下时
				moderec <= not moderec;
			end if;
		end if;
	end process;
	
	process(clk_in)
	begin
		if (rising_edge(clk_in)) then
			mode_key_state3_ls<=mode_key_state3;
			mode<=moderec;
		end if;
	end process;
	
	
 
 end ModeCtrl;