library ieee;
use ieee.std_logic_1164.all;

entity lab1_top is
port(
	key			:in std_logic_vector(0 to 3);		--核心板按键（从上到下L14,M13,M14,N14）
	clk  		:in std_logic;							--系统时钟，12MHz
	col			:in std_logic_vector(0 to 3);		--矩阵按键col（从大到小N6,P6,N5,L3），0表示该列被按下
	row			:buffer std_logic_vector(0 to 3);	--矩阵按键row（从大到小P7,N7,P8,N8），0表示该行被按下
	seg_left 	:out std_logic_vector(0 to 6);		--核心板数码管左（从大到小B9,A9,E2,E1,F2,C11,A10）
	seg_right	:out std_logic_vector(0 to 6);		--核心板数码管右（从大到小A11,B12,H2,H1,J1,B14,C12）
	sel_left	:out std_logic;							--数码管选择左（C9）
	sel_right	:out std_logic							--数码管选择右（A12）
);
end entity;

architecture lab1_arch of lab1_top is
	signal clk40hz			:std_logic;
	signal btn_num			:integer range 0 to 20;		--矩阵按键值&核心板按键值
	signal rowcol			:std_logic_vector(0 to 7);
	
	component freqdivider is
	port
	(
		clk				:in std_logic;		--12MHz
		clk40hz			:inout std_logic
	);
	end component;

	component seg is
	port
	(
		clk					:in std_logic;							--12MHz
		seg_left 			:out std_logic_vector(0 to 6);
		seg_right			:out std_logic_vector(0 to 6);
		sel_left			:out std_logic;
		sel_right			:out std_logic;
		btn_num				:in integer range 0 to 20				--矩阵按键值
	);
	end component;

begin
	U1:freqdivider port map
	(
		clk=>clk,clk40hz=>clk40hz
	);
	U2:seg port map
	(
		clk=>clk,seg_left=>seg_left,seg_right=>seg_right,
		sel_left=>sel_left,sel_right=>sel_right,btn_num=>btn_num
	);	
	
	----------以40Hz的频率循环扫描4行--------
	process(clk40hz)
		variable row_num	:integer :=0;
	begin
		if rising_edge(clk40hz) then
			case row_num is
				when 0=> 		row <= "0111";row_num := 1;	--当前扫描行号为1，下一轮跳到2
				when 1=> 		row <= "1011";row_num := 2;	--当前扫描行号为2，下一轮跳到3
				when 2=> 		row <= "1101";row_num := 3;	--当前扫描行号为3，下一轮跳到4
				when 3=> 		row <= "1110";row_num := 0;	--当前扫描行号为4，下一轮跳到1
				when others=>   null;
			end case;
		end if;
	end process;
	
	rowcol <= row & col;--并置row与col
	
	process(clk40hz,rowcol,btn_num,key)
	begin
		if rising_edge(clk40hz) then
			if key = "0111" then
				btn_num <= 17;
			elsif key = "1011" then
				btn_num <= 18;
			elsif key = "1101" then
				btn_num <= 19;
			elsif key = "1110" then
				btn_num <= 20;
			else
				case rowcol is
					when "01110111" => btn_num <= 1;
					when "01111011" => btn_num <= 2;
					when "01111101" => btn_num <= 3;
					when "01111110" => btn_num <= 4;
					when "01111111" => if ((btn_num >= 1 and btn_num <= 4) or (btn_num >= 17 and btn_num <= 20)) then 
										btn_num <= 0;end if;

					when "10110111" => btn_num <= 5;
					when "10111011" => btn_num <= 6;
					when "10111101" => btn_num <= 7;
					when "10111110" => btn_num <= 8;
					when "10111111" => if ((btn_num >= 5 and btn_num <= 8) or (btn_num >= 17 and btn_num <= 20)) then 
										btn_num <= 0;end if;

					when "11010111" => btn_num <= 9;
					when "11011011" => btn_num <= 10;
					when "11011101" => btn_num <= 11;
					when "11011110" => btn_num <= 12;
					when "11011111" => if ((btn_num >= 9 and btn_num <= 12) or (btn_num >= 17 and btn_num <= 20)) then 
										btn_num <= 0;end if;

					when "11100111" => btn_num <= 13;
					when "11101011" => btn_num <= 14;
					when "11101101" => btn_num <= 15;
					when "11101110" => btn_num <= 16;
					when "11101111" => if ((btn_num >= 13 and btn_num <= 16) or (btn_num >= 17 and btn_num <= 20)) then 
										btn_num <= 0;end if;
					when others =>	btn_num <= btn_num;
				end case;	
			end if;
		end if;
	end process;
end;
