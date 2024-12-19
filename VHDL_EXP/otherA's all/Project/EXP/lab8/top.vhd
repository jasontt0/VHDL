library ieee;                    
use  ieee.std_logic_1164.all;  
use  ieee.std_logic_unsigned.all; 
use  ieee.std_logic_arith.all;
 
 entity dianya is
	port(
		clk_in:in std_logic;	--12MHzʱ��
		
		rst_n_in:in std_logic;			--��λ�ź�����
		mode_btn_in:in std_logic;		--ģʽ���ư�������
		
		adcdisplay:out std_logic_vector(7 downto 0);  --LED����
		scl_out:out std_logic;		--I2C���ߵ�scl
		sda_out:inout std_logic	;	--I2C���ߵ�sda
		din:out std_logic;		--��74HC595�Ĵ�������
		sck:out std_logic;		--��74HC595������ʱ��
		rck:out std_logic;		--��74HC595�����ʱ��
		DA_LCD,CLK_LCD,RST_LCD,DC_LCD,BL_LCD :out std_logic--LCD������
	);
 end dianya;
 
 
 architecture behavior of dianya is
 signal ADC_level: std_logic_vector(7 downto 0);  --ADC������ƽ����
 signal mode:std_logic;		--ģʽ��0-255 or 0-3.3��
 signal btn_state:std_logic;	--����״̬
 signal realv_1,realv_2,realv_3,realv_4,realv_5 :  integer range 0 to 9; --��ʵ��ѹ����λ��
 signal hundreds,decade,unit :  integer range 0 to 9; --������ƽ����λ��
 
--��6������ܵĿ����֡�bit0:С����,bit1-7:�߶εƹ�,bit8-9����,bit10-15ѡ�������
  signal ctrlword_595_1:std_logic_vector(15 downto 0);	
  signal ctrlword_595_2:std_logic_vector(15 downto 0);	
  signal ctrlword_595_3:std_logic_vector(15 downto 0);	
  signal ctrlword_595_4:std_logic_vector(15 downto 0);	
  signal ctrlword_595_5:std_logic_vector(15 downto 0);	
  signal ctrlword_595_6:std_logic_vector(15 downto 0);	

--����ȥ��ģ��
component btn_debouncing
 port(
 	clk_in: in std_logic;              --12MHzʱ��
	mode_btn_in: in std_logic;        --��������
    btn_state:out std_logic	          --����״̬
	);
 end component btn_debouncing;



--ģʽ����ģ��
component mode_shift
 port(
 	clk_in: in std_logic;              --12MHzʱ��
	rst_n_in:in std_logic;			    --��λ�ź�����
	btn_state: in std_logic;        --����״̬
    mode:out std_logic	                --ģʽ��0-255 or 0-3.3��
	);
 end component mode_shift;


 --ADCģ��
 component ADC
 port(
      clk_in:in std_logic;		 --12MHzʱ��
	  rst_n_in:in std_logic;	--��λ�ź�����
	  scl_out :out std_logic;		
	  sda_out : inout std_logic; 			--��PCF8291ͨѶ
	  ADC_level :out std_logic_vector(7 downto 0)	--���������յ�����
	  );
 end component ADC;
 
 
 --BCDת��ģ��
 component trans_BCD
 port(
      rst_n_in:in std_logic;
      ADC_level:in std_logic_vector(7 downto 0);		--��ADC�õ�����
	  mode:in std_logic;	--ģʽ��0-255 or 0-3.3��
	  
	   realv_1 : out integer range 0 to 9;
	   realv_2 : out integer range 0 to 9;
	   realv_3 : out integer range 0 to 9;
	   realv_4 : out integer range 0 to 9;
	   realv_5 : out integer range 0 to 9;    --��ʵ��ѹ��λ����   
	   hundreds : out integer range 0 to 9;
       decade : out integer range 0 to 9;  
	   unit : out integer range 0 to 9;       --������ƽ��λ����
	ctrlword_595_1:out std_logic_vector(15 downto 0);	
	ctrlword_595_2:out std_logic_vector(15 downto 0);	
	ctrlword_595_3:out std_logic_vector(15 downto 0);	
	ctrlword_595_4:out std_logic_vector(15 downto 0);	
	ctrlword_595_5:out std_logic_vector(15 downto 0);	
	ctrlword_595_6:out std_logic_vector(15 downto 0)	--������ܿ�����
	  );
 end component trans_BCD;
 --�������ʾģ��
 component ctrlword_595
  port(
	clk_in:in std_logic;
	rst_n_in:in std_logic;
	

	signal ctrlword_595_1:in std_logic_vector(15 downto 0);	
    signal ctrlword_595_2:in std_logic_vector(15 downto 0);	
    signal ctrlword_595_3:in std_logic_vector(15 downto 0);	
    signal ctrlword_595_4:in std_logic_vector(15 downto 0);	
    signal ctrlword_595_5:in std_logic_vector(15 downto 0);	
    signal ctrlword_595_6:in std_logic_vector(15 downto 0);
	din:out std_logic;
	sck:out std_logic;
	rck:out std_logic
);
end component ctrlword_595;
--LCD��ʾģ��
component LCD_display is
	port(
		rst_n_in: in std_logic;
		clk_in:in std_logic;
		DA_LCD,CLK_LCD,RST_LCD,DC_LCD,BL_LCD :out std_logic; --LCD������
        realv_1 : in integer range 0 to 9;
		realv_2 : in integer range 0 to 9;
		realv_3 : in integer range 0 to 9;
		realv_4 : in integer range 0 to 9;
		realv_5 : in integer range 0 to 9;
		hundreds : in integer range 0 to 9;
        decade : in integer range 0 to 9;  
	    unit : in integer range 0 to 9;
		mode:in std_logic	--ģʽ��0-255 or 0-3.3��
			);
	end component;


 begin
       ADC_work:ADC port map (clk_in,rst_n_in,scl_out,sda_out,ADC_level);
	   btn_debounce:btn_debouncing port map (clk_in,mode_btn_in,btn_state);
	   mode_control:mode_shift port map (clk_in,rst_n_in,btn_state,mode);
       BCD_transform:trans_BCD port map (rst_n_in,ADC_level,mode,realv_1,realv_2,realv_3,realv_4,realv_5,hundreds,decade,unit,ctrlword_595_1,ctrlword_595_2,ctrlword_595_3,ctrlword_595_4,ctrlword_595_5,ctrlword_595_6);
	   datato595:ctrlword_595 port map (clk_in,rst_n_in,ctrlword_595_1,ctrlword_595_2,ctrlword_595_3,ctrlword_595_4,ctrlword_595_5,ctrlword_595_6,din,sck,rck);
	   LCDdisplay:LCD_display port map (rst_n_in, clk_in,DA_LCD,CLK_LCD,RST_LCD,DC_LCD,BL_LCD,realv_1,realv_2,realv_3,realv_4,realv_5,hundreds,decade,unit,mode);
	   
  process(clk_in)
  begin
    if(rising_edge(clk_in))then
	    adcdisplay<= not ADC_level;	--LED��ʾ
	end if;
  end process;
end behavior;

	