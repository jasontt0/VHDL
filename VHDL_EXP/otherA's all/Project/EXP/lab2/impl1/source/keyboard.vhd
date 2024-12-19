library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity KEY_BOARD_SUB is--按键模块
port(
	clk:in std_logic;
	col:in std_logic_vector(0 to 3);	
	row:buffer std_logic_vector(0 to 3);
	key_code: buffer integer range 0 to 16
);
end KEY_BOARD_SUB;

architecture Behavioral of KEY_BOARD_SUB is
	signal rowcol: std_logic_vector(7 downto 0);--行向量和列向量的组合
	signal clk300hz: std_logic;--40000分频后的时钟
	signal FS:std_logic_vector(15 downto 0);--分频次数

begin
--	process(clk)--时钟分频模块，这种方法会改变占空比
--	begin
--		if clk'event and clk='1' then
--			if FS=40000 then--分频40000次
--				FS <= "0000000000000000";
--			else
--				FS <= FS+1;
--			end if;
--		end if;
--	end process;
	
--	clk300hz <= FS(15);
	
	process(clk)
		variable cnt: integer :=0; 
	begin
		if (rising_edge(clk)) then
			if (cnt <= 20000) then
				cnt := cnt + 1;
			else
				cnt := 0;
				clk300hz <= not clk300hz;
			end if;
		end if;
	end process;

	process(clk300hz)--得到行向量的值
		variable row_num: integer range 0 to 3 := 0;
	begin
		if (clk300hz' event and clk300hz='1') then 
			case row_num is
				when 0 =>
					row <= "0111";
					row_num := 1;
				when 1 =>
					row <= "1011";
					row_num := 2;
				when 2 =>
					row <= "1101";
					row_num := 3;
				when 3 =>
					row <= "1110";
					row_num := 0;
				when others =>
					row <= "0111";
					row_num := 1;
			end case;
		end if;
	end process;

	rowcol <= row & col;--按键编码为行向量与列向量拼接

	process(clk300hz)--读取按键代表按键值的编码，得到按键值
	begin
		if (clk300hz'event and clk300hz='1') then
			case rowcol is--不同的编码对应不同位置的按键
				when "01110111" =>   key_code <= 1;
				when "01111011" =>   key_code <= 2;
				when "01111101" =>   key_code <= 3;
				when "01111110" =>   key_code <= 4;
				when "01111111" =>	 if(key_code >= 1 and key_code <= 4) then key_code <= 0; end if;

				when "10110111" =>   key_code <= 5;
				when "10111011" =>   key_code <= 6;
				when "10111101" =>   key_code <= 7;
				when "10111110" =>   key_code <= 8;
				when "10111111" =>   if(key_code >= 5 and key_code <= 8) then key_code <= 0; end if;

				when "11010111" =>   key_code <= 9;
				when "11011011" =>   key_code <= 10;
				when "11011101" =>   key_code <= 11;
				when "11011110" =>   key_code <= 12;
				when "11011111" =>   if(key_code >= 9 and key_code <= 12) then key_code <= 0; end if;
	
				when "11100111" =>   key_code <= 13;
				when "11101011" =>   key_code <= 14;
				when "11101101" =>   key_code <= 15;
				when "11101110" =>   key_code <= 16;
				when "11101111" =>	 if(key_code >= 13 and key_code <= 16) then key_code <= 0; end if;

				when  others    =>   key_code <= key_code;
			end case;
		end if;
	end process;

end Behavioral;