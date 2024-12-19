library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PWM_LED_top is
port(
    clk: in std_logic;--内部时钟信号
	led: out std_logic_vector(7 downto 0);--控制LED灯变量
	lumUP: in std_logic;--控制增大亮度变量
	lumDN: in std_logic;--控制降低亮度变量
	frqUP: in std_logic;--控制呼吸频率加快变量
	frqDN: in std_logic;--控制呼吸频率减慢变量
	col:in std_logic_vector(3 downto 0);	--列
	row:buffer std_logic_vector(3 downto 0)--行
);
end PWM_LED_top;

architecture PWM_LED of PWM_LED_top is

    signal reset: std_logic;--重置信号
	signal key_code: integer range 0 to 16;--代表按键编号的变量

	component PWM_LED --产生呼吸灯信号模块 
	port(
		clk: in std_logic;
		led: out std_logic_vector(7 downto 0);
		reset: in std_logic;
		lumUP: in std_logic;
		lumDN: in std_logic;
		frqUP: in std_logic;
		frqDN: in std_logic
	);
	end component;  

	component KEY_BOARD_SUB--按键信号读取模块
	port(  
		clk:in std_logic;
		col:in std_logic_vector(3 downto 0);	
		row:buffer std_logic_vector(3 downto 0);
		key_code: buffer integer range 0 to 16
	);  
	end component;  

begin

	instant1: PWM_LED port map--产生呼吸灯信号模块 
	(
		clk => clk,
		led => led,
		reset => reset,
		lumUP =>lumUP,
		lumDN => lumDN,
		frqUP => frqUP,
		frqDN => frqDN
	);

	instant2: KEY_BOARD_SUB port map --按键信号读取模块 
	(  
		clk => clk,
		col => col,
		row => row,
		key_code => key_code
	); 

	process(key_code)
	begin
		if key_code = 1 then--当第一个按键按键被按下时，重置信号触发
			reset <= '1';
		else
			reset <= '0';
		end if;
	end process;
end PWM_LED;