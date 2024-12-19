library ieee;
use ieee.std_logic_1164.all;

-- ʵ�嶨�壺freqdivider�����ڷ�Ƶ��������ʱ���ź�
entity freqdivider is
port
(
	clk			:in std_logic;		-- ����ʱ���źţ�����Ƶ��Ϊ 12MHz
	clk8hz		:inout std_logic;	-- ��� 8Hz ʱ���ź�
	clk40hz		:inout std_logic 	-- ��� 40Hz ʱ���ź�
);
end entity;

architecture freqdivider_arch of freqdivider is
begin
	-- 8Hz ʱ�������߼�
	process (clk)
		variable cnt8 :integer := 0;	-- �������������ʼֵΪ 0
	begin
		if rising_edge(clk) then		-- ���ʱ��������
			if cnt8 = 750000 then		-- ���������ﵽ 750,000 ʱ��ת clk8hz
				clk8hz <= not clk8hz;	-- ��ת clk8hz �ź�
				cnt8 := 0;				-- ���ü�����
			else 
				cnt8 := cnt8 + 1;		-- ����������
			end if;
		end if;
	end process;

	-- 40Hz ʱ�������߼�
	process (clk)
		variable cnt40 : integer := 0;	-- �������������ʼֵΪ 0
	begin
		if rising_edge(clk) then		-- ���ʱ��������
			if cnt40 = 150000 then		-- ���������ﵽ 150,000 ʱ��ת clk40hz
				clk40hz <= not clk40hz;	-- ��ת clk40hz �ź�
				cnt40 := 0;				-- ���ü�����
			else
				cnt40 := cnt40 + 1;		-- ����������
			end if;
		end if;
	end process;
	
end freqdivider_arch;
