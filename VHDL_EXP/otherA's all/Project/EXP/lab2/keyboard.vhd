library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity KEY_BOARD_SUB is--按键模块
port(clk:in std_logic;
	column:in std_logic_vector(3 downto 0);	
	row:buffer std_logic_vector(3 downto 0);
	key_code: buffer integer range 0 to 16
	);
end KEY_BOARD_SUB;

architecture Behavioral of KEY_BOARD_SUB is
signal key_num: std_logic_vector(7 downto 0);--行向量和列向量的组合
type key_state_enum is(row0,row1,row2,row3);--键状态的枚举类型
signal clk1: std_logic;--分频后的时钟
signal FS:std_logic_vector(15 downto 0);--分频次数

begin

process(clk)--时钟分频模块
begin
   if clk'event and clk='1' then
      if FS=40000 then--分频40000次
         FS <= "0000000000000000";
      else
         FS <= FS+1;
      end if;
   end if;
end process;
clk1 <= FS(15);

process(clk1)--得到行向量的值
variable key_state: key_state_enum := row0;
begin
	if (clk1' event and clk1='1') then 
		case key_state is
			when row0 =>
				row <= "1110";
				key_state := row1;
			when row1 =>
				row <= "1101";
				key_state := row2;
			when row2 =>
				row <= "1011";
				key_state := row3;
			when row3 =>
				row <= "0111";
				key_state := row0;
			when others =>
				row <= "1110";
				key_state := row1;
		end case;
	end if;
end process;

key_num <= row & column;--按键编码为行向量与列向量拼接

process(clk1)--读取按键代表按键值的编码，得到按键值
variable key_read_state_cnt :integer range 0 to 3 := 0;
variable key_read: std_logic_vector(15 downto 0) := (others => '0');
begin
	if (clk1'event and clk1='1') then
		case key_num is--不同的编码对应不同位置的按键
			when "11101110" =>   key_code <= 1;
			when "11101101" =>   key_code <= 2;
			when "11101011" =>   key_code <= 3;
			when "11100111" =>   key_code <= 4;
			when "11101111" =>	 if(key_code <= 4 and key_code >= 1) then key_code <= 0; end if;

			when "11011110" =>   key_code <= 5;
			when "11011101" =>   key_code <= 6;
			when "11011011" =>   key_code <= 7;
			when "11010111" =>   key_code <= 8;
			when "11011111" =>   if(key_code <= 8 and key_code >= 5) then key_code <= 0; end if;

			when "10111110" =>   key_code <= 9;
			when "10111101" =>   key_code <= 10;
			when "10111011" =>   key_code <= 11;
			when "10110111" =>   key_code <= 12;
			when "10111111" =>   if(key_code<= 12 and key_code >= 9) then key_code <= 0; end if;
	
			when "01111110" =>   key_code <= 13;
			when "01111101" =>   key_code <= 14;
			when "01111011" =>   key_code <= 15;
			when "01110111" =>   key_code <= 16;
			when "01111111" =>	 if(key_code<= 16 and key_code>= 13) then key_code <= 0; end if;

			when  others    =>   key_code <= key_code;
		end case;
	end if;

end process;

end Behavioral;