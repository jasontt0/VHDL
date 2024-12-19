library ieee;
use ieee.std_logic_1164.all;

entity seg is
port
(
	clk					:in std_logic;
	btn_num				:in integer range 0 to 20;				--矩阵按键值
	seg_left 			:out std_logic_vector(0 to 6);			--核心板数码管左
	seg_right			:out std_logic_vector(0 to 6);			--核心板数码管右
	sel_left			:out std_logic;							--数码管选择左，0表示选中
	sel_right			:out std_logic							--数码管选择右，0表示选中
);
end entity;

architecture seg_arch of seg is
	type seg_array is array (0 to 15) of std_logic_vector (0 to 6);
	constant seg7	:seg_array := (	"1111110",  --0   设七段数码管的7段为abcdefg
									"0110000",  --1            aaa
									"1101101",  --2          f     b
									"1111001",  --3          f     b
									"0110011",  --4            ggg
									"1011011",  --5          e     c
									"1011111",  --6          e     c
									"1110000",  --7            ddd
									"1111111",  --8
									"1111011",  --9
									"1110111",  --A(10)
									"0011111",  --b(11)
									"1001110",  --C(12)
									"0111101",  --d(13)
									"1001111",  --E(14)
									"1000111"); --F(15)
									
begin
	process (clk)
	begin
		if rising_edge(clk) then
			case btn_num is
				when 1=> 	seg_left <= seg7(0);
							seg_right <= seg7(1);
				when 2=> 	seg_left <= seg7(0);
							seg_right <= seg7(2);
				when 3=> 	seg_left <= seg7(0);
							seg_right <= seg7(3);
				when 4=> 	seg_left <= seg7(0);
							seg_right <= seg7(4);
				when 5=> 	seg_left <= seg7(0);
							seg_right <= seg7(5);
				when 6=> 	seg_left <= seg7(0);
							seg_right <= seg7(6);
				when 7=> 	seg_left <= seg7(0);
							seg_right <= seg7(7);
				when 8=> 	seg_left <= seg7(0);
							seg_right <= seg7(8);
				when 9=> 	seg_left <= seg7(0);
							seg_right <= seg7(9);
				when 10=> 	seg_left <= seg7(1);
							seg_right <= seg7(0);
				when 11=> 	seg_left <= seg7(1);
							seg_right <= seg7(1);
				when 12=> 	seg_left <= seg7(1);
							seg_right <= seg7(2);
				when 13=> 	seg_left <= seg7(1);
							seg_right <= seg7(3);
				when 14=> 	seg_left <= seg7(1);
							seg_right <= seg7(4);
				when 15=> 	seg_left <= seg7(1);
							seg_right <= seg7(5);
				when 16=> 	seg_left <= seg7(1);
							seg_right <= seg7(6);
				when 17=> 	seg_left <= seg7(0);
							seg_right <= seg7(10);
				when 18=> 	seg_left <= seg7(0);
							seg_right <= seg7(11);
				when 19=> 	seg_left <= seg7(0);
							seg_right <= seg7(12);
				when 20=> 	seg_left <= seg7(0);
							seg_right <= seg7(13);
				when 0=>	seg_left <= seg7(0);
							seg_right <= seg7(0);
				when others=>null;
			 end case;
		end if;
		sel_left <= '0';
		sel_right <= '0';
	end process;
end seg_arch;