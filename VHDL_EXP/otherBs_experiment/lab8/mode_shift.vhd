library ieee;                    
use  ieee.std_logic_1164.all;     
use  ieee.std_logic_unsigned.all; 

entity mode_shift is
 port(
 	clk_in: in std_logic;              --12MHz时钟
	rst_n_in:in std_logic;			    --复位信号输入
	btn_state: in std_logic;        --模式控制按键状态
    mode:out std_logic	                --模式（0-255 or 0-3.3）
	);
 end  mode_shift;
 
 architecture modeshift of mode_shift is
 
 signal moderec:std_logic;	--记录当前模式
 signal btn_state_ls:std_logic;	--前一采样时刻模式
 
 begin
 
    process(clk_in,rst_n_in)
	begin
		if (rst_n_in='0') then	--复位
			moderec<='0';
		elsif (rising_edge(clk_in)) then
			if (btn_state='0' and btn_state_ls='1') then    --按键按下后改变状态
				moderec <= not moderec;
			end if;
		end if;
	end process;
	
	process(clk_in)
	begin
		if(rising_edge(clk_in))then
			btn_state_ls<=btn_state;
			mode<=moderec;
		end if;
	end process;
	
end modeshift;