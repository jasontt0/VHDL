library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PWM_LED_top is
port(
    clk: in std_logic;--�ڲ�ʱ���ź�
	led: out std_logic_vector(7 downto 0);--����LED�Ʊ���
	lumUP: in std_logic;--�����������ȱ���
	lumDN: in std_logic;--���ƽ������ȱ���
	frqUP: in std_logic;--���ƺ���Ƶ�ʼӿ����
	frqDN: in std_logic;--���ƺ���Ƶ�ʼ�������
	col:in std_logic_vector(3 downto 0);	--��
	row:buffer std_logic_vector(3 downto 0)--��
);
end PWM_LED_top;

architecture PWM_LED of PWM_LED_top is

    signal reset: std_logic;--�����ź�
	signal key_code: integer range 0 to 16;--��������ŵı���

	component PWM_LED --�����������ź�ģ�� 
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

	component KEY_BOARD_SUB--�����źŶ�ȡģ��
	port(  
		clk:in std_logic;
		col:in std_logic_vector(3 downto 0);	
		row:buffer std_logic_vector(3 downto 0);
		key_code: buffer integer range 0 to 16
	);  
	end component;  

begin

	instant1: PWM_LED port map--�����������ź�ģ�� 
	(
		clk => clk,
		led => led,
		reset => reset,
		lumUP =>lumUP,
		lumDN => lumDN,
		frqUP => frqUP,
		frqDN => frqDN
	);

	instant2: KEY_BOARD_SUB port map --�����źŶ�ȡģ�� 
	(  
		clk => clk,
		col => col,
		row => row,
		key_code => key_code
	); 

	process(key_code)
	begin
		if key_code = 1 then--����һ����������������ʱ�������źŴ���
			reset <= '1';
		else
			reset <= '0';
		end if;
	end process;
end PWM_LED;