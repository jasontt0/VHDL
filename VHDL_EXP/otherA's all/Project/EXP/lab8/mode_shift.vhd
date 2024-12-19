library ieee;                    
use  ieee.std_logic_1164.all;     
use  ieee.std_logic_unsigned.all; 

entity mode_shift is
 port(
 	clk_in: in std_logic;              --12MHzʱ��
	rst_n_in:in std_logic;			    --��λ�ź�����
	btn_state: in std_logic;        --ģʽ���ư���״̬
    mode:out std_logic	                --ģʽ��0-255 or 0-3.3��
	);
 end  mode_shift;
 
 architecture modeshift of mode_shift is
 
 signal moderec:std_logic;	--��¼��ǰģʽ
 signal btn_state_ls:std_logic;	--ǰһ����ʱ��ģʽ
 
 begin
 
    process(clk_in,rst_n_in)
	begin
		if (rst_n_in='0') then	--��λ
			moderec<='0';
		elsif (rising_edge(clk_in)) then
			if (btn_state='0' and btn_state_ls='1') then    --�������º�ı�״̬
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