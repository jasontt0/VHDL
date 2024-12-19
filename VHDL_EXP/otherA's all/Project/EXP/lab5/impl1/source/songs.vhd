library ieee;
use ieee.std_logic_1164.all;

entity song is
port
(
	clk8hz						:in std_logic;
	tone2						:out integer range 0 to 10;
	music_num					:in integer range 0 to 1 :=0
);
end entity;

architecture song_arch of song is
	signal ptr1						:integer range 0 to 239;
	signal ptr2						:integer range 0 to 181;
	signal mn_former				:integer range 0 to 1 :=0;
	type pitch_array1 is array (0 to 239) of integer;
	type pitch_array2 is array (0 to 181) of integer;
	constant little_star			:pitch_array1 :=(1,1,1,1,0,1,1,1,1,0,5,5,5,5,0,5,5,5,5,0,6,6,6,6,0,6,6,6,6,0,5,5,5,5,0,0,0,0,0,0,
													4,4,4,4,0,4,4,4,4,0,3,3,3,3,0,3,3,3,3,0,2,2,2,2,0,2,2,2,2,0,1,1,1,1,0,0,0,0,0,0,
													5,5,5,5,0,5,5,5,5,0,4,4,4,4,0,4,4,4,4,0,3,3,3,3,0,3,3,3,3,0,2,2,2,2,0,0,0,0,0,0,
													5,5,5,5,0,5,5,5,5,0,4,4,4,4,0,4,4,4,4,0,3,3,3,3,0,3,3,3,3,0,2,2,2,2,0,0,0,0,0,0,
													1,1,1,1,0,1,1,1,1,0,5,5,5,5,0,5,5,5,5,0,6,6,6,6,0,6,6,6,6,0,5,5,5,5,0,0,0,0,0,0,
													4,4,4,4,0,4,4,4,4,0,3,3,3,3,0,3,3,3,3,0,2,2,2,2,0,2,2,2,2,0,1,1,1,1,0,0,0,0,0,0);
	constant thx					:pitch_array2 :=(4,4,0,5,5,0,6,6,0,8,8,0,6,6,0,6,6,6,6,0,5,0,5,4,4,0,5,5,5,5,0,4,4,0,2,2,0,4,4,0,5,5,0,6,6,6,6,6,6,6,6,0,
													4,4,0,2,2,0,4,4,4,4,0,1,0,1,5,5,0,4,4,4,4,0,6,6,0,5,5,0,5,5,0,4,4,0,5,5,5,5,0,
													4,4,0,5,5,0,6,6,0,8,8,0,6,6,0,6,6,6,6,0,5,0,5,4,4,0,5,5,5,5,0,4,4,0,2,2,0,4,4,0,5,5,0,6,6,6,6,6,6,6,6,0,
													4,4,0,2,2,0,4,4,4,4,0,1,0,1,5,5,0,4,4,4,4,0,6,6,0,5,5,0,5,5,0,2,2,0,4,4,4,4,0);
	
	begin
	process(clk8hz, music_num)
		begin
		if music_num /= mn_former then
			mn_former <= music_num; 
			ptr1 <= 0;  					--切歌后从头播放
			ptr2 <= 0;
		else
			if rising_edge(clk8hz) then		--每0.125s变换音符
				if ptr1 = 239 then ptr1 <= 0;
				else ptr1 <= ptr1 + 1;
				end if;
				if ptr2 = 181 then ptr2 <= 0;
				else ptr2 <= ptr2 + 1;
				end if;
			end if;
			case music_num is
				when 0=>					--Music 1
					tone2<=little_star(ptr1);
				when 1=>					--Music 2
					tone2<=thx(ptr2);
			end case;
		end if;
	end process;
end song_arch;