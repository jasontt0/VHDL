library ieee;
use ieee.std_logic_1164.all;

-- 实体定义：freqdivider，用于分频生成两个时钟信号
entity freqdivider is
port
(
	clk			:in std_logic;		-- 输入时钟信号，假设频率为 12MHz
	clk8hz		:inout std_logic;	-- 输出 8Hz 时钟信号
	clk40hz		:inout std_logic 	-- 输出 40Hz 时钟信号
);
end entity;

architecture freqdivider_arch of freqdivider is
begin
	-- 8Hz 时钟生成逻辑
	process (clk)
		variable cnt8 :integer := 0;	-- 定义计数器，初始值为 0
	begin
		if rising_edge(clk) then		-- 检测时钟上升沿
			if cnt8 = 750000 then		-- 当计数器达到 750,000 时翻转 clk8hz
				clk8hz <= not clk8hz;	-- 翻转 clk8hz 信号
				cnt8 := 0;				-- 重置计数器
			else 
				cnt8 := cnt8 + 1;		-- 计数器递增
			end if;
		end if;
	end process;

	-- 40Hz 时钟生成逻辑
	process (clk)
		variable cnt40 : integer := 0;	-- 定义计数器，初始值为 0
	begin
		if rising_edge(clk) then		-- 检测时钟上升沿
			if cnt40 = 150000 then		-- 当计数器达到 150,000 时翻转 clk40hz
				clk40hz <= not clk40hz;	-- 翻转 clk40hz 信号
				cnt40 := 0;				-- 重置计数器
			else
				cnt40 := cnt40 + 1;		-- 计数器递增
			end if;
		end if;
	end process;
	
end freqdivider_arch;
