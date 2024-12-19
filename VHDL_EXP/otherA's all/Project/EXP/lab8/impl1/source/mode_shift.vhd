library ieee;                    
use  ieee.std_logic_1164.all;     
use  ieee.std_logic_unsigned.all; 

entity mode_shift is
port(
 	clk_in: in std_logic;              --12MHz时钟
	rst_n_in:in std_logic;			    --复位信号输入
	mode_btn_in:in std_logic;
    mode:out std_logic	                --模式（0-255 or 0-3.3）
);
end  mode_shift;
 
architecture modeshift of mode_shift is
	signal btnsampler_clk_cnt:integer:=0;		--计数器，用于分频
	signal btnsampler_clk:std_logic;	
	signal btnsampler_clk_ls:std_logic;
	signal btnsamp_store:std_logic_vector(2 downto 0); 	--存3个btn状态用于判别
	signal mode_reord:std_logic;	--记录当前模式
	signal btn_state_ls:std_logic;	--前一采样时刻模式
	signal btn_state:std_logic;
 
begin
	--分频至T=20ms，即50Hz
	process(clk_in)
	begin
		if (rising_edge(clk_in)) then
			btnsampler_clk_cnt <= btnsampler_clk_cnt + 1;
			if (btnsampler_clk_cnt = 120000) then
				btnsampler_clk <= not btnsampler_clk;      
				btnsampler_clk_cnt <= 0;						
			end if;
		end if;	
	end process;
	
	process(clk_in)
	begin
		if (rising_edge(clk_in)) then
			btnsampler_clk_ls <= btnsampler_clk;            --记录前一次的状态
		end if;
	end process;
	
	process(clk_in)
	begin
		if (rising_edge(clk_in)) then
			if (btnsampler_clk='1' and btnsampler_clk_ls='0') then
				btnsamp_store(2)<=mode_btn_in;
				btnsamp_store(1)<=btnsamp_store(2);
				btnsamp_store(0)<=btnsamp_store(1);
			end if;
			btn_state<=btnsamp_store(0) and btnsamp_store(1) and btnsamp_store(2);	--持续60ms（三个采样周期）确认按下
		end if;
	end process;
 
    process(clk_in,rst_n_in)
	begin
		if (rst_n_in='0') then	--复位
			mode_reord<='0';
		elsif (rising_edge(clk_in)) then
			if (btn_state='0' and btn_state_ls='1') then    --按键按下后改变状态
				mode_reord <= not mode_reord;
			end if;
		end if;
	end process;
	
	process(clk_in)
	begin
		if(rising_edge(clk_in))then
			btn_state_ls <= btn_state;
			mode <= mode_reord;
		end if;
	end process;
	
end modeshift;