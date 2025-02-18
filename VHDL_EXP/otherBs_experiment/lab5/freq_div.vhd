library ieee;
use ieee.std_logic_1164.all;

entity freqdivider is
port
(
	clk			:in std_logic;		--12MHz
	clk8hz		:inout std_logic;
	clk40hz		:inout std_logic 
);
end entity;

architecture freqdivider_arch of freqdivider is
	begin
	---------8HZ Clock---------
	process (clk)
		variable cnt8 :integer :=0;
		begin
		if rising_edge(clk) then
			if cnt8 = 750000 then
				clk8hz <= not clk8hz;
				cnt8 := 0;
			else 
				cnt8 := cnt8 + 1;
			end if;
		end if;
	end process;

	---------40Hz Clock---------
	process (clk)
		variable cnt40 : integer :=0;
		begin
		if rising_edge(clk) then
			if cnt40 = 150000 then   
				clk40hz <= not clk40hz;
				cnt40 := 0;
			else
				cnt40 := cnt40 + 1;
			end if;
		end if;
	end process;
	
end freqdivider_arch;
