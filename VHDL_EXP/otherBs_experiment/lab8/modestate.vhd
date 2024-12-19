 library ieee;                    
 use  ieee.std_logic_1164.all;     
 use  ieee.std_logic_unsigned.all; 
 
 --ģʽ����ģ��
 
 entity ModeCtrler is 
 port (
	clk_in:in std_logic;			--12MHz Clock
	rst_n_in:in std_logic;			--��λ�ź�
	mode_key_state3:in std_logic;   --�������mode���м������
	mode:out std_logic	             --��ǰģʽ����0-255����0-3.3��
 );
 end ModeCtrler;
 
 architecture ModeCtrl of ModeCtrler is

 signal moderec:std_logic;	--��¼��ǰ״̬
 signal mode_key_state3_ls:std_logic;          --����ǰ��mode���м������


 begin
	process(clk_in,rst_n_in)
	begin
		if (rst_n_in='0') then	--��λ
			moderec<='0';
		elsif (rising_edge(clk_in)) then
			if (mode_key_state3='0' and mode_key_state3_ls='1') then    --��������ʱ
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