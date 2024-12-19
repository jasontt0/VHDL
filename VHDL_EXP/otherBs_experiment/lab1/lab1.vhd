library ieee;
use ieee.std_logic_1164.all;

entity lab1_top is
port(
	key			:in std_logic_vector(0 to 3);			--���İ尴�������ϵ���L14,M13,M14,N14��
	clk  		:in std_logic;							--ϵͳʱ��
	col			:in std_logic_vector(0 to 3);			--���󰴼�col���Ӵ�СN6,P6,N5,L3��
	row			:buffer std_logic_vector(0 to 3);		--���󰴼�row���Ӵ�СP7,N7,P8,N8��
	seg_left 	:out std_logic_vector(0 to 6);			--���İ�������󣨴Ӵ�СB9,A9,E2,E1,F2,C11,A10��
	seg_right	:out std_logic_vector(0 to 6);			--���İ�������ң��Ӵ�СA11,B12,H2,H1,J1,B14,C12��
	sel_left	:out std_logic;							--�����ѡ����C9��
	sel_right	:out std_logic							--�����ѡ���ң�A12��
);
end entity;

architecture lab1_arch of lab1_top is
	signal clk40hz			:std_logic;
	signal btn_num			:integer range 0 to 20;		--���󰴼�ֵ+���İ尴��ֵ
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
		btn_num				:in integer range 0 to 20				--���󰴼�ֵ
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
	----------Keyboard Scanning--------
	process(clk40hz)
		variable row_num	:integer :=0;
		begin
		if rising_edge(clk40hz) then
			case row_num is
				when 0=> 		row <= "0111";row_num := 1;	--ɨ������ѡ��1
				when 1=> 		row <= "1011";row_num := 2;	--ɨ������ѡ��2
				when 2=> 		row <= "1101";row_num := 3;	--ɨ������ѡ��3
				when 3=> 		row <= "1110";row_num := 0;	--ɨ������ѡ��4
			end case;
		end if;
	end process;
	
	rowcol <= row & col;
	
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
					when "01111111" => if ((btn_num <= 4 and btn_num >= 1) or (btn_num <= 20 and btn_num >= 17)) then 
										btn_num <= 0;end if;

					when "10110111" => btn_num <= 5;
					when "10111011" => btn_num <= 6;
					when "10111101" => btn_num <= 7;
					when "10111110" => btn_num <= 8;
					when "10111111" => if ((btn_num <= 8 and btn_num >= 5) or (btn_num <= 20 and btn_num >= 17)) then 
										btn_num <= 0;end if;

					when "11010111" => btn_num <= 9;
					when "11011011" => btn_num <= 10;
					when "11011101" => btn_num <= 11;
					when "11011110" => btn_num <= 12;
					when "11011111" => if ((btn_num <= 12 and btn_num >= 9) or (btn_num <= 20 and btn_num >= 17)) then 
										btn_num <= 0;end if;

					when "11100111" => btn_num <= 13;
					when "11101011" => btn_num <= 14;
					when "11101101" => btn_num <= 15;
					when "11101110" => btn_num <= 16;
					when "11101111" => if ((btn_num <= 16 and btn_num >= 13) or (btn_num <= 20 and btn_num >= 17)) then 
										btn_num <= 0;end if;
					when others =>	btn_num <= btn_num;
				end case;	
			end if;
		end if;
	end process;
end;
