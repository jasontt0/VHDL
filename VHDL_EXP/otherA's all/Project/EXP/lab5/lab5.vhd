library ieee;
use ieee.std_logic_1164.all;

entity piano is
port(
	switch: in std_logic;								--key2
	mode:	in std_logic;								--key1
	clk:  	in std_logic;
	col:	in std_logic_vector(3 downto 0);			--矩阵按键col
	row:	buffer std_logic_vector(3 downto 0);		--矩阵按键row
	beep:	out std_logic								--spisi蜂鸣器
);
end entity;

architecture piano_arch of piano is
	signal clk_music		:std_logic;						--蜂鸣器频率
	signal mode_num			:std_logic;						--模式，1为演奏，0为播放
	signal cnt				:integer range 0 to 1000000;	
	signal pitch			:integer range 0 to 10000000;	--音高对应频率
	signal clk40hz			:std_logic;
	signal clk8hz			:std_logic;
	signal tone1,tone2,tone	:integer range 0 to 10;			--演奏音符，播放音符，实际音符
	signal music_num		:integer range 0 to 1;			--乐曲数
	signal row_num			:integer range 0 to 1;
	signal rowcol			:std_logic_vector(7 downto 0);
	
	component freqdivider is
	port
	(
		clk						:in std_logic;
		clk8hz					:inout std_logic;
		clk40hz					:inout std_logic 
	);
	end component;

	component song is
	port
	(
		clk8hz					:in std_logic;
		tone2					:out integer range 0 to 10;
		music_num				:inout integer range 0 to 1
	);
	end component;

	begin
	U1:freqdivider port map
	(
		clk=>clk,clk8hz=>clk8hz,clk40hz=>clk40hz
	);
	U2:song port map
	(
		clk8hz=>clk8hz,tone2=>tone2,music_num=>music_num
	);
 
	process(mode)
		begin
		if falling_edge(mode) then		--KEY1按下,改变mode_num
			if mode_num = '1' then
				mode_num <= '0';
			else
				mode_num <= '1';
			end if;
		end if;
	end process;

	process(switch)
		begin
		if falling_edge(switch) then	--KEY2按下,改变music_num
			if music_num = 1 then
				music_num <= 0;
			else
				music_num <= 1;
			end if;
		end if;
	end process;
	
	process(clk40hz,row_num)
		variable tmp: integer range 0 to 1 :=0;
		begin
		if (clk40hz = '1') then
			if tmp = 0 then
				tmp := 1;
			else 
				tmp := 0;
			end if;
		end if;
		row_num <= tmp;	--分频，扫描按键矩阵前两行
		case row_num is
			when 0=> 		row <= "1110";	--扫描行数选择1
			when others=> 	row <= "1101";	--扫描行数选择2
		end case;
	end process;
	
	rowcol <= row & col;

	process(clk40hz)
		begin
		if rising_edge(clk40hz) then
			if mode_num = '1' then		--演奏模式
				case rowcol is
					when "11101110" =>	tone1 <= 1;
					when "11101101" => 	tone1 <= 2;
					when "11101011" => 	tone1 <= 3;
					when "11100111" => 	tone1 <= 4;
					when "11101111" =>	if tone1<=4 and tone1>=1 then tone1<=0;end if;
				
					when "11011110" => 	tone1 <= 5;
					when "11011101" => 	tone1 <= 6;
					when "11011011" => 	tone1 <= 7;
					when "11010111" => 	tone1 <= 8;
					when "11011111" =>	if tone1<=8 and tone1>=5 then tone1<=0;end if;
					
					when others=> 		tone1 <= tone1;
				end case;				
			end if;
		end if;
	end process;

	process(clk_music,tone,tone1,tone2,mode_num)
		begin
		if mode_num = '0'		--播放
		  then tone <= tone2;
		else					--演奏
		  tone <= tone1;
		end if;
		case tone is						--C大调do-……-do
			when 1=> 	pitch <= 11465;
			when 2=> 	pitch <= 10216;
			when 3=> 	pitch <= 9101;
			when 4=> 	pitch <= 8590;
			when 5=> 	pitch <= 7653;
			when 6=> 	pitch <= 6818;
			when 7=>	pitch <= 6074;
			when 8=> 	pitch <= 5736;
			when 9=> 	pitch <= 5106;
			when 10=>	pitch <= 4548;
			
			when others=> pitch <= 0;
		end case;
	end process;

	process(clk, pitch)
		begin
		if rising_edge(clk)then
			if(cnt = pitch) then	--对应音高分频
				cnt <= 0;
				clk_music <= not clk_music;
			else
				cnt <= cnt + 1;
			end if;
			beep <= clk_music;
		end if;
	end process;


end;
