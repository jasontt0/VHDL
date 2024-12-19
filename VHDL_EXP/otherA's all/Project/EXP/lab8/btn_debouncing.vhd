library ieee;                    
use  ieee.std_logic_1164.all;     
use  ieee.std_logic_unsigned.all; 
 
--循环采样按键去抖
 
 entity btn_debouncing is 
 port(
	clk_in: in std_logic;                 --12MHz时钟
	mode_btn_in: in std_logic;           
	btn_state:out std_logic	                    --按键状态
	);
 end btn_debouncing;
 
 
 architecture CycleSample of btn_debouncing is
 
 signal btnsampler_clk_cnt:integer:=0;		--计数器，用于分频
 signal btnsampler_clk:std_logic;	
 signal btnsampler_clk_ls:std_logic;
 signal btnsamp_store:std_logic_vector(2 downto 0); 	--存3个btn状态用于判别

 begin
	--分频至T=20ms
	process(clk_in)
	begin
		if (rising_edge(clk_in)) then
			btnsampler_clk_cnt<=btnsampler_clk_cnt+1;
			if (btnsampler_clk_cnt=120000) then
				btnsampler_clk<=not btnsampler_clk;      
				btnsampler_clk_cnt<=0;						
			end if;
		end if;	
	end process;
	
	process(clk_in)
	begin
		if (rising_edge(clk_in)) then
			btnsampler_clk_ls<=btnsampler_clk;            --记录前一次的状态
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


 end CycleSample;