library ieee;                    
 use  ieee.std_logic_1164.all;  
 use  ieee.std_logic_unsigned.all;
 use ieee.std_logic_arith.all;
--������תBCDģ��
  
 entity binary_to_BCD is
 port(
    rst_n_in:in std_logic;                              --��λ�ź�
    ADC_level:in std_logic_vector(7 downto 0);           --ADC�õ�������
	mode:in std_logic;                       --ģʽ��0-255 or 0-3.3��
	
	 
	realv_1 : out integer range 0 to 9;
	realv_2 : out integer range 0 to 9;
	realv_3 : out integer range 0 to 9;
	realv_4 : out integer range 0 to 9;
	realv_5 : out integer range 0 to 9;                 --��ʵ��ѹ��λ����
	
	hundreds:out integer range 0 to 9; 	
	decade:out integer range 0 to 9; 	
	unit:out integer range 0 to 9;  	--������ƽ��λ����	
	
	ctrlword_595_1:out std_logic_vector(15 downto 0);	
    ctrlword_595_2:out std_logic_vector(15 downto 0);	
    ctrlword_595_3:out std_logic_vector(15 downto 0);	
    ctrlword_595_4:out std_logic_vector(15 downto 0);	
    ctrlword_595_5:out std_logic_vector(15 downto 0);	
    ctrlword_595_6:out std_logic_vector(15 downto 0)
 );
 end binary_to_BCD;
 
 architecture BCDencoder of binary_to_BCD is


--������ƽ��ʾ
signal hundreds_r:integer range 0 to 9; --��λ
signal decade_r:integer range 0 to 9; --ʮλ
signal unit_r:integer range 0 to 9; --��λ
--ת��Ϊʵ�ʵ�ѹ����ʾ
signal realv_1_r:integer range 0 to 9; --��λ
signal realv_2_r:integer range 0 to 9; --ʮ��λ
signal realv_3_r:integer range 0 to 9; --�ٷ�λ
signal realv_4_r:integer range 0 to 9; --ǧ��λ
signal realv_5_r:integer range 0 to 9; --���λ
--������ƽת��ΪBCD
signal adclevel_bcd:std_logic_vector(11 downto 0);	--��λ���ݶ�Ӧ12λBCD��
--��ʵ��ѹת��ΪBCD
signal voltage_code:std_logic_vector(15 downto 0);
signal realvoltage_bcd:std_logic_vector(19 downto 0);	--��λ���ݶ�Ӧ20λBCD��

type TwoDim_Array is array(natural range <>) of std_logic_vector(7 downto 0);   --��ά����
constant enable_digit:TwoDim_Array(0 to 6):=(      --ѡ������ܣ�"11111111"Ϊ�رգ�
"01111111","10111111","11011111",
"11101111","11110111","11111011","11111111");	

constant segmentdecode:TwoDim_Array(0 to 16):=(     --����С���㣬�����0~F
"11111100","01100000","11011010","11110010",
"01100110","10110110","10111110","11100000",
"11111110","11110110","11101110","00111110",
"10011100","01111010","10011110","10001110",
"00000000");

constant segmentdecode_dp:TwoDim_Array(0 to 16):=(      --��С���㣬�����0.~F.
"11111101","01100001","11011011","11110011",
"01100111","10110111","10111111","11100001",
"11111111","11110111","11101111","00111111",
"10011101","01111011","10011111","10001111",
"00000000");

 
 begin

    process(ADC_level,rst_n_in)       --ת��ΪBCD��
	variable z: STD_LOGIC_VECTOR (19 downto 0);
	variable tmp_data: std_logic_vector (7 downto 0);
  begin
    for i in 0 to 19 loop
  z(i) := '0';                     --��ʼ��z
    end loop;
   z(10 downto 3) := ADC_level;		--��ʼֱ��������λ��ADC_level���11111111��������λ��ȡǰ��λ�ſ��ܴ���4��
     for i in 0 to 4 loop          
  if z(11 downto 8) > 4 then 
      z(11 downto 8) := z(11 downto 8) + 3;
  end if;
   if z(15 downto 12) > 4 then 
      z(15 downto 12) := z(15 downto 12) + 3;
    end if;
  z(18 downto 1) := z(17 downto 0);
     end loop;		
   adclevel_bcd <= z(19 downto 8); 		--��λ���������Ʊ�ʾ��0~255תΪ12bitBCD��
   --hundreds_r<=conv_integer(adclevel_bcd(11 downto 8));
   decade_r<=conv_integer(adclevel_bcd(7 downto 4));
   unit_r<=conv_integer(adclevel_bcd(3 downto 0));		--�ֱ���ȡ��λ����
	tmp_data(7 downto 0):=ADC_level;
	if(tmp_data>="11001000")then
		hundreds_r<=2;
	elsif(tmp_data>="01100100")then
		hundreds_r<=1;
	else
		hundreds_r<=0;
	end if;
	 end process;
	
	--��ѹת��BCD��
  process(ADC_level)
    variable z: STD_LOGIC_VECTOR (35 downto 0);
	begin
	voltage_code<=('0'&ADC_level&"0000000")+("00000000"&ADC_level);		--��ADC��������ʵ�ʵ�ѹ,ADC*129��ʵ�ʵ�ѹ=V_adc*0.0129��
    for i in 0 to 39 loop
  z(i) := '0';
    end loop;
   z(15 downto 0) := voltage_code;
     for i in 0 to 15 loop
  if z(19 downto 16) > 4 then 
      z(19 downto 16) := z(19 downto 16) + 3;
  end if;
   if z(23 downto 20) > 4 then 
      z(23 downto 20) := z(23 downto 20) + 3;
    end if;
  if z(27 downto 24) > 4 then 
      z(27 downto 24) := z(27 downto 24) + 3;
    end if;
	if z(31 downto 28) > 4 then 
      z(31 downto 28) := z(31 downto 28) + 3;
    end if;
	if z(35 downto 32) > 4 then 
      z(35 downto 32) := z(35 downto 32) + 3;
    end if;
  z(33 downto 1) := z(32 downto 0);
     end loop;
   realvoltage_bcd <= z(35 downto 16);	--��λ���õ���ʵ��ѹ��Ӧ��20bitBCD��
   realv_1_r<=conv_integer(realvoltage_bcd(19 downto 16));
   realv_2_r<=conv_integer(realvoltage_bcd(15 downto 12));
   realv_3_r<=conv_integer(realvoltage_bcd(11 downto 8));
   realv_4_r<=conv_integer(realvoltage_bcd(7 downto 4));
   realv_5_r<=conv_integer(realvoltage_bcd(3 downto 0));
   
	 end process;
	
	--��������
	process(mode)
    begin
	if(mode='0')then  --mode=0��ʾʵ�ʵ�ѹ
		ctrlword_595_1(7 downto 0)<=segmentdecode(0);       --��һ������ܲ���
		ctrlword_595_1(15 downto 8)<=enable_digit(6);              --��һ������ܹر�
		ctrlword_595_2(7 downto 0)<=segmentdecode_dp(realv_1_r);	--�ڶ����������ʾ��ʵ��ѹ��λ����С����
		ctrlword_595_2(15 downto 8)<=enable_digit(1);              --ѡ��ڶ��������
		ctrlword_595_3(7 downto 0)<=segmentdecode(realv_2_r);    --�������������ʾ��ʵ��ѹʮ��λ
		ctrlword_595_3(15 downto 8)<=enable_digit(2);               --ѡ������������
		ctrlword_595_4(7 downto 0)<=segmentdecode(realv_3_r);    --���ĸ��������ʾ��ʵ��ѹ�ٷ�λ
		ctrlword_595_4(15 downto 8)<=enable_digit(3);               --ѡ����ĸ������
		ctrlword_595_5(7 downto 0)<=segmentdecode(realv_4_r);   --������������ʾ��ʵ��ѹǧ��λ
		ctrlword_595_5(15 downto 8)<=enable_digit(4);               --ѡ�����������
		ctrlword_595_6(7 downto 0)<=segmentdecode(realv_5_r);  --�������������ʾ��ʵ��ѹ���λ
		ctrlword_595_6(15 downto 8)<=enable_digit(5);               --ѡ������������
	else	--mode=1��ʾ������ƽ
	   ctrlword_595_1(15 downto 8)<=enable_digit(6);          	 --��һ������ܹر�
	   ctrlword_595_2(15 downto 8)<=enable_digit(6);          	 --�ڶ�������ܹر�
	   ctrlword_595_3(15 downto 8)<=enable_digit(6);             --����������ܹر�
	   ctrlword_595_4(7 downto 0)<=segmentdecode(hundreds_r);      --���ĸ��������ʾ������ƽ��λ
	   ctrlword_595_4(15 downto 8)<=enable_digit(3);               --ѡ����ĸ������
	   ctrlword_595_5(7 downto 0)<=segmentdecode(decade_r);      --������������ʾ������ƽʮλ
	   ctrlword_595_5(15 downto 8)<=enable_digit(4);               --ѡ�����������
	   ctrlword_595_6(7 downto 0)<=segmentdecode(unit_r);      --�������������ʾ������ƽ��λ
	   ctrlword_595_6(15 downto 8)<=enable_digit(5);               --ѡ������������
    end if;
    
end process;
    realv_1<=realv_1_r;
	realv_2<=realv_2_r;
	realv_3<=realv_3_r;
	realv_4<=realv_4_r;
	realv_5<=realv_5_r;
	hundreds<=hundreds_r;
	decade<=decade_r;
	unit<=unit_r;	--ת�����������
 end BCDencoder;