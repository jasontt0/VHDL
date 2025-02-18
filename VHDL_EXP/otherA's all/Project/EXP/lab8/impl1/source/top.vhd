library ieee;                    
use  ieee.std_logic_1164.all;  
use  ieee.std_logic_unsigned.all; 
use  ieee.std_logic_arith.all;
 
entity top is
port(
	clk12MHz:in std_logic;	--12MHz时钟
		
	rst_n_in:in std_logic;			--复位信号输入
	mode_btn_in:in std_logic;		--模式控制按键输入
		
	led:out std_logic_vector(7 downto 0);  --LED亮灭
	scl_out:out std_logic;		--I2C总线的scl
	sda_out:inout std_logic	;	--I2C总线的sda
	din:out std_logic;		--给74HC595的串行数据
	sck:out std_logic;		--给74HC595的输入时钟
	rck:out std_logic;		--给74HC595的输出时钟
	DA_LCD,CLK_LCD,RST_LCD,DC_LCD,BL_LCD :out std_logic;--LCD控制线
	col:in std_logic_vector(3 downto 0);	--列
	row:buffer std_logic_vector(3 downto 0)--行
);
end top;
 
architecture behavior of top is
	signal ADC_level: std_logic_vector(7 downto 0);  --ADC量化电平数据
	signal mode:std_logic;		--模式（0-255 or 0-3.3）
	signal btn_state:std_logic;	--按键状态
	signal realv_1,realv_2,realv_3,realv_4,realv_5 :  integer range 0 to 9; --真实电压（五位）
	signal hundred,decade,unit :  integer range 0 to 9; --量化电平（三位）
 
	--共6个数码管的控制字。bit0:小数点,bit1-7:七段灯管,bit8-9无用,bit10-15选择数码管
	signal ctrlword_595_1:std_logic_vector(15 downto 0);	
	signal ctrlword_595_2:std_logic_vector(15 downto 0);	
	signal ctrlword_595_3:std_logic_vector(15 downto 0);	
	signal ctrlword_595_4:std_logic_vector(15 downto 0);	
	signal ctrlword_595_5:std_logic_vector(15 downto 0);	
	signal ctrlword_595_6:std_logic_vector(15 downto 0);

	--模式控制模块
	component mode_shift
	port(
		clk_in: in std_logic;              --12MHz时钟
		rst_n_in:in std_logic;			    --复位信号输入
		--btn_state: in std_logic;        --按键状态
		mode_btn_in:in std_logic;			--按键输入
		mode:out std_logic	                --模式（0-255 or 0-3.3）
	);
	end component mode_shift;

	--ADC模块
	component ADC
	port(
		clk_in:in std_logic;		 --12MHz时钟
		rst_n_in:in std_logic;	--复位信号输入
		scl_out :out std_logic;		
		sda_out : inout std_logic; 			--与PCF8291通讯
		ADC_level :out std_logic_vector(7 downto 0)	--锁存器接收的数据
	);
	end component ADC;
 
	--BCD转换模块
	component binary_to_BCD
	port(
		rst_n_in:in std_logic;
		ADC_level:in std_logic_vector(7 downto 0);		--从ADC得到数据
		mode:in std_logic;	--模式（0-255 or 0-3.3）
	  
		realv_1 : out integer range 0 to 9;
		realv_2 : out integer range 0 to 9;
		realv_3 : out integer range 0 to 9;
		realv_4 : out integer range 0 to 9;
		realv_5 : out integer range 0 to 9;    --真实电压五位数据   
		hundreds : out integer range 0 to 9;
		decade : out integer range 0 to 9;  
		unit : out integer range 0 to 9;       --量化电平三位数据
		ctrlword_595_1:out std_logic_vector(15 downto 0);	
		ctrlword_595_2:out std_logic_vector(15 downto 0);	
		ctrlword_595_3:out std_logic_vector(15 downto 0);	
		ctrlword_595_4:out std_logic_vector(15 downto 0);	
		ctrlword_595_5:out std_logic_vector(15 downto 0);	
		ctrlword_595_6:out std_logic_vector(15 downto 0)	--各数码管控制字
	);
	end component binary_to_BCD;
 
	--数码管显示模块
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

	--LCD显示模块
	component LCD_display is
	port(
		rst_n_in: in std_logic;
		clk_in:in std_logic;
		DA_LCD,CLK_LCD,RST_LCD,DC_LCD,BL_LCD :out std_logic; --LCD控制线
        realv_1 : in integer range 0 to 9;
		realv_2 : in integer range 0 to 9;
		realv_3 : in integer range 0 to 9;
		realv_4 : in integer range 0 to 9;
		realv_5 : in integer range 0 to 9;
		hundred : in integer range 0 to 9;
        decade : in integer range 0 to 9;  
	    unit : in integer range 0 to 9;
		mode:in std_logic	--模式（0-255 or 0-3.3）
	);
	end component;
	
	component keyboard is--按键模块
	port(
		clk:in std_logic;
		column:in std_logic_vector(3 downto 0);	
		row:buffer std_logic_vector(3 downto 0);
		key_code: buffer integer range 0 to 16
	);
	end component;

begin
	ADC_work:ADC port map (clk12MHz,rst_n_in,scl_out,sda_out,ADC_level);
	mode_control:mode_shift port map (clk12MHz,rst_n_in,mode_btn_in,mode);
    BCD_transform:binary_to_BCD port map (rst_n_in,ADC_level,mode,realv_1,realv_2,realv_3,realv_4,realv_5,hundred,decade,unit,ctrlword_595_1,ctrlword_595_2,ctrlword_595_3,ctrlword_595_4,ctrlword_595_5,ctrlword_595_6);
	datato595:ctrlword_595 port map (clk12MHz,rst_n_in,ctrlword_595_1,ctrlword_595_2,ctrlword_595_3,ctrlword_595_4,ctrlword_595_5,ctrlword_595_6,din,sck,rck);
	LCDdisplay:LCD_display port map (rst_n_in, clk12MHz,DA_LCD,CLK_LCD,RST_LCD,DC_LCD,BL_LCD,realv_1,realv_2,realv_3,realv_4,realv_5,hundred,decade,unit,mode);
	   
	process(clk12MHz)
	begin
		if(rising_edge(clk12MHz))then
			led <= not ADC_level;	--LED显示ADC_level码
		end if;
	end process;
end behavior;
	