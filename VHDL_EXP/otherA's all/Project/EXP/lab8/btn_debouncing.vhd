library ieee;                    
use  ieee.std_logic_1164.all;     
use  ieee.std_logic_unsigned.all; 
 
--ѭ����������ȥ��
 
 entity btn_debouncing is 
 port(
	clk_in: in std_logic;                 --12MHzʱ��
	mode_btn_in: in std_logic;           
	btn_state:out std_logic	                    --����״̬
	);
 end btn_debouncing;
 
 
 architecture CycleSample of btn_debouncing is
 
 signal btnsampler_clk_cnt:integer:=0;		--�����������ڷ�Ƶ
 signal btnsampler_clk:std_logic;	
 signal btnsampler_clk_ls:std_logic;
 signal btnsamp_store:std_logic_vector(2 downto 0); 	--��3��btn״̬�����б�

 begin
	--��Ƶ��T=20ms
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
			btnsampler_clk_ls<=btnsampler_clk;            --��¼ǰһ�ε�״̬
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
			btn_state<=btnsamp_store(0) and btnsamp_store(1) and btnsamp_store(2);	--����60ms�������������ڣ�ȷ�ϰ���
		end if;
	end process;


 end CycleSample;