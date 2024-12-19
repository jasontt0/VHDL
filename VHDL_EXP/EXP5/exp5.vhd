LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

---------------------------------------------------------------------------------------------

ENTITY piano IS
	PORT (
		switch : IN STD_LOGIC; -- 切换乐曲编号的按键
		mode : IN STD_LOGIC; -- 切换演奏模式或播放模式的按键
		clk : IN STD_LOGIC; -- 系统时钟信号
		col : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- 矩阵按键列信号
		row : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0); -- 矩阵按键行信号
		beep : OUT STD_LOGIC -- 蜂鸣器输出信号
	);
END ENTITY;

ARCHITECTURE piano_arch OF piano IS
	-- 信号声明
	SIGNAL clk_music : STD_LOGIC; -- 控制蜂鸣器的音频频率
	SIGNAL mode_num : STD_LOGIC; -- 当前模式，'1'为演奏，'0'为播放
	SIGNAL cnt : INTEGER RANGE 0 TO 1000000; -- 分频计数器
	SIGNAL pitch : INTEGER RANGE 0 TO 10000000; -- 当前音高对应的分频值
	SIGNAL clk40hz : STD_LOGIC; -- 40Hz 时钟信号，用于矩阵键盘扫描
	SIGNAL clk8hz : STD_LOGIC; -- 8Hz 时钟信号，用于播放音乐
	SIGNAL tone1, tone2, tone : INTEGER RANGE 0 TO 10; -- tone1: 演奏音符, tone2: 播放音符, tone: 当前音符
	SIGNAL music_num : INTEGER RANGE 0 TO 2; -- 当前乐曲编号
	SIGNAL row_num : INTEGER RANGE 0 TO 1; -- 当前矩阵键盘行号
	SIGNAL rowcol : STD_LOGIC_VECTOR(7 DOWNTO 0); -- 按键矩阵行列合并信号

	-- 组件声明
	COMPONENT freqdivider IS
		PORT (
			clk : IN STD_LOGIC; -- 输入时钟信号
			clk8hz : INOUT STD_LOGIC; -- 输出8Hz时钟信号
			clk40hz : INOUT STD_LOGIC -- 输出40Hz时钟信号
		);
	END COMPONENT;

	COMPONENT song IS
		PORT (
			clk8hz : IN STD_LOGIC; -- 输入8Hz时钟信号
			tone2 : OUT INTEGER RANGE 0 TO 10; -- 输出自动播放的音符
			music_num : INOUT INTEGER RANGE 0 TO 2 -- 当前乐曲编号
		);
	END COMPONENT;

	---------------------------------------------------------------------------------------------

BEGIN
	-- 频率分频器实例化，用于生成 8Hz 和 40Hz 时钟信号
	U1 : freqdivider PORT MAP
	(
		clk => clk,
		clk8hz => clk8hz,
		clk40hz => clk40hz
	);

	-- 歌曲模块实例化，用于自动播放生成音符
	U2 : song PORT MAP
	(
		clk8hz => clk8hz,
		tone2 => tone2,
		music_num => music_num
	);

	-----------------------------------------------------------

	-- 模式切换：按下 mode 按键时切换演奏模式或播放模式
	PROCESS (mode)
	BEGIN
		IF falling_edge(mode) THEN -- mode 按键下降沿检测
			IF mode_num = '1' THEN
				mode_num <= '0'; -- 切换到播放模式，mode_num=0
			ELSE
				mode_num <= '1'; -- 切换到演奏模式，mode_num=1
			END IF;
		END IF;
	END PROCESS;

	-- 乐曲切换：按下 switch 按键时切换乐曲编号
	PROCESS (switch)
	BEGIN
		IF falling_edge(switch) THEN -- switch 按键下降沿检测
			CASE music_num IS
				WHEN 0 =>
					music_num <= 1; -- 切换到乐曲 1
				WHEN 1 =>
					music_num <= 2; -- 切换到乐曲 2
				WHEN 2 =>
					music_num <= 0; -- 切换回乐曲 0
				WHEN OTHERS =>
					music_num <= 0; -- 默认情况下切换到乐曲 0
			END CASE;
		END IF;
	END PROCESS;

	-- process(switch)
	-- begin
	-- 	if falling_edge(switch) then	-- switch 按键下降沿检测
	-- 		if music_num = 0 then
	-- 			music_num <= 1;		-- 切换到乐曲 0
	-- 		else
	-- 			music_num <= 0;
	-- 		end if;
	-- 	end if;
	-- end process;

	-- 矩阵键盘扫描，控制行号切换
	PROCESS (clk40hz, row_num)
		VARIABLE tmp : INTEGER RANGE 0 TO 1 := 0;
	BEGIN
		IF (clk40hz = '1') THEN -- 在 40Hz 时钟信号上升沿
			IF tmp = 0 THEN
				tmp := 1; -- 切换到下一行
			ELSE
				tmp := 0;
			END IF;
		END IF;
		row_num <= tmp; -- 更新当前扫描行号
		CASE row_num IS
			WHEN 0 => row <= "1110"; -- 扫描第一行
			WHEN OTHERS => row <= "1101";-- 扫描第二行
		END CASE;
	END PROCESS;

	-- 合并矩阵键盘的行列信号，用于按键识别
	rowcol <= row & col;

	-- 按键检测和音符生成
	PROCESS (clk40hz)
	BEGIN
		IF rising_edge(clk40hz) THEN -- 在 40Hz 时钟信号上升沿
			IF mode_num = '1' THEN -- 如果是演奏模式
				CASE rowcol IS
					WHEN "11101110" => tone1 <= 1; -- 按键对应音符 1
					WHEN "11101101" => tone1 <= 2; -- 按键对应音符 2
					WHEN "11101011" => tone1 <= 3;
					WHEN "11100111" => tone1 <= 4;
					WHEN "11101111" => IF tone1 <= 4 AND tone1 >= 1 THEN
						tone1 <= 0;
				END IF; -- 防抖
				WHEN "11011110" => tone1 <= 5;
				WHEN "11011101" => tone1 <= 6;
				WHEN "11011011" => tone1 <= 7;
				WHEN "11010111" => tone1 <= 8;
				WHEN "11011111" => IF tone1 <= 8 AND tone1 >= 5 THEN
				tone1 <= 0;
			END IF;
			WHEN OTHERS => tone1 <= tone1; -- 保持当前音符
		END CASE;
	END IF;
END IF;
END PROCESS;

-- 根据模式选择当前音符，并设置对应的音高
PROCESS (clk_music, tone, tone1, tone2, mode_num)
BEGIN
	IF mode_num = '0' THEN -- 如果是播放模式
		tone <= tone2; -- 使用播放模式的音符
	ELSE -- 如果是演奏模式
		tone <= tone1; -- 使用演奏模式的音符
	END IF;

	-- 根据音符选择音高 (C 大调)
	CASE tone IS
		WHEN 1 => pitch <= 11465; -- C4 -> 低八度so
		WHEN 2 => pitch <= 10216; -- D4
		WHEN 3 => pitch <= 9101; -- E4
		WHEN 4 => pitch <= 8590; -- F4 -> do
		WHEN 5 => pitch <= 7653; -- G4
		WHEN 6 => pitch <= 6818; -- A4
		WHEN 7 => pitch <= 6074; -- B4
		WHEN 8 => pitch <= 5736; -- C5 -> so
		WHEN 9 => pitch <= 5106; -- D5
		WHEN 10 => pitch <= 4548; -- E5
		WHEN OTHERS => pitch <= 0; -- 未定义音符时静音
	END CASE;
END PROCESS;

-- 蜂鸣器控制逻辑
PROCESS (clk, pitch)
BEGIN
	IF rising_edge(clk) THEN -- 系统时钟上升沿
		IF cnt = pitch THEN -- 当计数器到达音高值
			cnt <= 0; -- 重置计数器
			clk_music <= NOT clk_music; -- 翻转蜂鸣器时钟信号
		ELSE
			cnt <= cnt + 1; -- 增加计数器
		END IF;
		beep <= clk_music; -- 输出蜂鸣器信号
	END IF;
END PROCESS;

END;