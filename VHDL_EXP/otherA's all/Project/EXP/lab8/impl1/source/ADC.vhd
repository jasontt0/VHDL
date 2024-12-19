library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
--ADCģ��

entity ADC is 
port(
	clk_in : in std_logic;   --12MHzʱ��
	rst_n_in : in std_logic;  --��λ�ź�
	scl_out :out std_logic;   --I2C������PCF8591ͨ�ŵ�scl
	sda_out : inout std_logic;   --I2C������PCF8591ͨ�ŵ�sda
	ADC_level :out std_logic_vector(7 downto 0)  --ADC��������
);
end ADC;

architecture behavior of ADC is
	signal clk_divided: std_logic:='0';   --��Ƶ��ʱ���ź�
	shared variable scl_out_r:std_logic;
	shared variable sda_out_r:std_logic;
begin
	--��12MHz��Ƶ����Ƶ��4���������16bit���ݴ���
	--I2C���Ƶ��100kHz����Ƶ����30��
	process(clk_in)
		constant cnt_num :integer := 10000;	--��Ƶ����Ϊ2*cnt_num
		variable cnt_divided:integer range 0 to cnt_num;
		variable temp_divided : std_logic := '0'; 
	begin
		if (clk_in'event and clk_in = '1') then 
			if (rst_n_in = '0') then   --��λ
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
		type i2c_state is(IDLE, MAIN, START, WRITE, READ, STOP);--PCF8591��״̬
		variable state: i2c_state;
		variable ADC_level_r:std_logic_vector(7 downto 0);
		variable data_write:std_logic_vector(7 downto 0);
		variable cnt,cnt_start,cnt_write,cnt_stop:integer range 0 to 8;
		variable cnt_main:integer range 0 to 15;
		variable cnt_read:integer range 0 to 31;
	begin
		if(clk_divided'event and clk_divided ='1') then 
			if (rst_n_in = '0') then   --��λ����������ݳ�ʼ��
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
					when IDLE =>       --����Ը�λ�����ڳ����ܷɺ���
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
						if (cnt_main >=7) then   --cnt_main��MAIN����״̬���п���
							cnt_main:=7;
						else 
							cnt_main := cnt_main + 1;
						end if;
						case (cnt_main) is 
							when 1=>state := START;cnt_start:=0;cnt:=0;                           --I2Cͨ��ʱ���е�START
							when 2=>data_write :="10010000";state:= WRITE;cnt_write:=0;cnt:=0;    --A0,A1,A2��GND��д��ַΪ90H
							when 3=>data_write :="00000000";state:= WRITE;cnt_write:=0;cnt:=0;    --������00H������4ͨ��ADC�е�ͨ��0
							when 4=>state := STOP;cnt_stop:=0;cnt:=0;                             --I2Cͨ��ʱ���е�STOP
							when 5=>state := START;cnt_start:=0;cnt:=0;                           --I2Cͨ��ʱ���е�START
							when 6=>data_write :="10010001";state:= WRITE;cnt_write:=0;cnt:=0;    --A0,A1,A2��GND������ַΪ91H
							when 7=>state:= READ;cnt_read:=0;cnt:=0;                              --��ȡ��������
							when 8=>state:= STOP;	cnt_stop:=0;cnt:=0;                            --I2Cͨ��ʱ���е�STOP����ȡ��ɱ�־
							when 9=>state:= MAIN;                                                  --Ԥ��״̬����ִ��
							when others=>state:= IDLE;                                             --ʧ�ؽ����Ը�λ
						end case;
					when START=>                    --I2Cͨ��ʱ���е���ʼSTART
						if (cnt_start >= 6) then    --cnt_start��START����״̬���п���
							cnt_start := 1;
						else 
							cnt_start := cnt_start + 1;
						end if;
						case (cnt_start) is
							when 1|2=>sda_out_r:= '1';scl_out_r:= '1';   --��SCL��SDA���ߣ�����4.7��s����
							when 3|4=>sda_out_r:= '0';                 --SDA������SCL���ͣ�֮����Ҫ����4.0��s����
							when 5=>scl_out_r:= '0';                    
							when 6=>scl_out_r:= '0';state:= MAIN;      --SCL���ͣ�ͬʱ����MAIN
							when others =>state:= IDLE;               --ʧ�ؽ����Ը�λ
						end case;
					when WRITE =>                --I2Cͨ��ʱ���е�д����WRITE����Ӧ�жϲ���ACK
						if (cnt <= 6) then        --���跢��8bit��cnt����ѭ������
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
						case cnt_write is         --cnt_write��WRITE����״̬���п���
							when 1=>scl_out_r:='0';sda_out_r:=data_write(7-cnt);    --SCL���ͣ�SDA�����Ӧλ
							when 2|3=>scl_out_r:='1';                              --SCL���ߣ�����4.0��s����
							when 4=>scl_out_r:='0';                                --SCL���ͣ�׼��������һbit
							when 5=>sda_out_r:='Z';                                --�ͷ�SDA�ߣ�׼�����մ��豸(PCF8591)��Ӧ
							when 6=>scl_out_r:='1';                                --SCL���ߣ�����4.0��s����
							when 7=>state := state;                              
							when 8=>scl_out_r:= '0';state := MAIN;                 --SCL���ͣ�����MAIN
							when others =>state:= IDLE;                           --ʧ�ؽ����Ը�λ
						end case;
					when READ=>                    --I2Cͨ��ʱ���еĶ�����READ�ͷ���ACK
						if(cnt <= 6) then          --����Ҫ����8bit��cnt����ѭ������
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
								sda_out_r:= 'Z';     --SCL���ͣ��ͷ�SDA�ߣ�׼�����մ��豸����
							when 2=>
								scl_out_r:= '1';     --SCL���ߣ�����4.0��s����
							when 3=>
								ADC_level_r(7-cnt):=sda_out;    --��ȡ���豸���ص�����
							when 4=>
								scl_out_r:= '0';     --SCL���ͣ�׼��������1bit������
							when 5=> 
								sda_out_r:= '0';
								ADC_level <= ADC_level_r;	--�����յ���������
							when 6=>
								scl_out_r:= '1';      
							when 7=> 
								scl_out_r:= '1';      --SCL���ߣ�����4.0��s����
							when 8=>
								scl_out_r:='0';
								state:=MAIN;        --SCL���ͣ�����MAIN״̬
							when others =>
								state:= IDLE;       --ʧ�ؽ����Ը�λ
						end case;
					when STOP=>                   --I2Cͨ��ʱ���еĽ���STOP
						if (cnt_stop >= 6) then   --cnt_stop��STOP����״̬���п���
							cnt_stop := 1;
						else
							cnt_stop := cnt_stop + 1;
						end if ;
						case (cnt_stop) is 
							when 1|2=>
								sda_out_r:= '0';     --SDA���ͣ�׼��STOP
							when 3|4=>
								scl_out_r:= '1';     --SCL��ǰ��SDA������ǰ4.0��s
							when 5=> 
								sda_out_r:= '1';     
							when 6 =>
								sda_out_r:= '1';	--SDA����
								state:= MAIN;       --���STOP,����MAIN
  							when others =>
								state:= IDLE;       --ʧ�ؽ����Ը�λ
						end case;
					when others =>
						state:= IDLE;
				end case;
			end if;
		end if;
	end process;
	
	sda_out<=sda_out_r;
	scl_out<=scl_out_r;		--ͨѶ�������
end behavior;