library ieee;
use ieee.std_logic_1164.all;

entity freqdivider is
port
(
	clk			:in std_logic;		-- ‰»Î12MHzµƒ ±÷”
	clk40hz		:inout std_logic;
	clk10hz		:inout std_logic 
);
end entity;

architecture freqdivider_arch of freqdivider is
begin
	---------40HZ Clock---------
	process (clk)
		variable cnt1 :integer :=0;
		begin
		if rising_edge(clk) then
			if cnt1 = 150000 then
				clk40hz <= not clk40hz;
				cnt1 := 0;
			else 
				cnt1 := cnt1 + 1;
			end if;
		end if;
	end process;

	---------10Hz Clock---------
	process (clk)
		variable cnt2 : integer :=0;
		begin
		if rising_edge(clk) then
			if cnt2 = 600000 then   
				clk10hz <= not clk10hz;
				cnt2 := 0;
			else
				cnt2 := cnt2 + 1;
			end if;
		end if;
	end process;
end freqdivider_arch;
