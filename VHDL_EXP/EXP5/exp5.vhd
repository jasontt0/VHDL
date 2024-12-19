LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

---------------------------------------------------------------------------------------------

ENTITY piano IS
	PORT (
		switch : IN STD_LOGIC; -- �л�������ŵİ���
		mode : IN STD_LOGIC; -- �л�����ģʽ�򲥷�ģʽ�İ���
		clk : IN STD_LOGIC; -- ϵͳʱ���ź�
		col : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- ���󰴼����ź�
		row : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0); -- ���󰴼����ź�
		beep : OUT STD_LOGIC -- ����������ź�
	);
END ENTITY;

ARCHITECTURE piano_arch OF piano IS
	-- �ź�����
	SIGNAL clk_music : STD_LOGIC; -- ���Ʒ���������ƵƵ��
	SIGNAL mode_num : STD_LOGIC; -- ��ǰģʽ��'1'Ϊ���࣬'0'Ϊ����
	SIGNAL cnt : INTEGER RANGE 0 TO 1000000; -- ��Ƶ������
	SIGNAL pitch : INTEGER RANGE 0 TO 10000000; -- ��ǰ���߶�Ӧ�ķ�Ƶֵ
	SIGNAL clk40hz : STD_LOGIC; -- 40Hz ʱ���źţ����ھ������ɨ��
	SIGNAL clk8hz : STD_LOGIC; -- 8Hz ʱ���źţ����ڲ�������
	SIGNAL tone1, tone2, tone : INTEGER RANGE 0 TO 10; -- tone1: ��������, tone2: ��������, tone: ��ǰ����
	SIGNAL music_num : INTEGER RANGE 0 TO 2; -- ��ǰ�������
	SIGNAL row_num : INTEGER RANGE 0 TO 1; -- ��ǰ��������к�
	SIGNAL rowcol : STD_LOGIC_VECTOR(7 DOWNTO 0); -- �����������кϲ��ź�

	-- �������
	COMPONENT freqdivider IS
		PORT (
			clk : IN STD_LOGIC; -- ����ʱ���ź�
			clk8hz : INOUT STD_LOGIC; -- ���8Hzʱ���ź�
			clk40hz : INOUT STD_LOGIC -- ���40Hzʱ���ź�
		);
	END COMPONENT;

	COMPONENT song IS
		PORT (
			clk8hz : IN STD_LOGIC; -- ����8Hzʱ���ź�
			tone2 : OUT INTEGER RANGE 0 TO 10; -- ����Զ����ŵ�����
			music_num : INOUT INTEGER RANGE 0 TO 2 -- ��ǰ�������
		);
	END COMPONENT;

	---------------------------------------------------------------------------------------------

BEGIN
	-- Ƶ�ʷ�Ƶ��ʵ�������������� 8Hz �� 40Hz ʱ���ź�
	U1 : freqdivider PORT MAP
	(
		clk => clk,
		clk8hz => clk8hz,
		clk40hz => clk40hz
	);

	-- ����ģ��ʵ�����������Զ�������������
	U2 : song PORT MAP
	(
		clk8hz => clk8hz,
		tone2 => tone2,
		music_num => music_num
	);

	-----------------------------------------------------------

	-- ģʽ�л������� mode ����ʱ�л�����ģʽ�򲥷�ģʽ
	PROCESS (mode)
	BEGIN
		IF falling_edge(mode) THEN -- mode �����½��ؼ��
			IF mode_num = '1' THEN
				mode_num <= '0'; -- �л�������ģʽ��mode_num=0
			ELSE
				mode_num <= '1'; -- �л�������ģʽ��mode_num=1
			END IF;
		END IF;
	END PROCESS;

	-- �����л������� switch ����ʱ�л��������
	PROCESS (switch)
	BEGIN
		IF falling_edge(switch) THEN -- switch �����½��ؼ��
			CASE music_num IS
				WHEN 0 =>
					music_num <= 1; -- �л������� 1
				WHEN 1 =>
					music_num <= 2; -- �л������� 2
				WHEN 2 =>
					music_num <= 0; -- �л������� 0
				WHEN OTHERS =>
					music_num <= 0; -- Ĭ��������л������� 0
			END CASE;
		END IF;
	END PROCESS;

	-- process(switch)
	-- begin
	-- 	if falling_edge(switch) then	-- switch �����½��ؼ��
	-- 		if music_num = 0 then
	-- 			music_num <= 1;		-- �л������� 0
	-- 		else
	-- 			music_num <= 0;
	-- 		end if;
	-- 	end if;
	-- end process;

	-- �������ɨ�裬�����к��л�
	PROCESS (clk40hz, row_num)
		VARIABLE tmp : INTEGER RANGE 0 TO 1 := 0;
	BEGIN
		IF (clk40hz = '1') THEN -- �� 40Hz ʱ���ź�������
			IF tmp = 0 THEN
				tmp := 1; -- �л�����һ��
			ELSE
				tmp := 0;
			END IF;
		END IF;
		row_num <= tmp; -- ���µ�ǰɨ���к�
		CASE row_num IS
			WHEN 0 => row <= "1110"; -- ɨ���һ��
			WHEN OTHERS => row <= "1101";-- ɨ��ڶ���
		END CASE;
	END PROCESS;

	-- �ϲ�������̵������źţ����ڰ���ʶ��
	rowcol <= row & col;

	-- ����������������
	PROCESS (clk40hz)
	BEGIN
		IF rising_edge(clk40hz) THEN -- �� 40Hz ʱ���ź�������
			IF mode_num = '1' THEN -- ���������ģʽ
				CASE rowcol IS
					WHEN "11101110" => tone1 <= 1; -- ������Ӧ���� 1
					WHEN "11101101" => tone1 <= 2; -- ������Ӧ���� 2
					WHEN "11101011" => tone1 <= 3;
					WHEN "11100111" => tone1 <= 4;
					WHEN "11101111" => IF tone1 <= 4 AND tone1 >= 1 THEN
						tone1 <= 0;
				END IF; -- ����
				WHEN "11011110" => tone1 <= 5;
				WHEN "11011101" => tone1 <= 6;
				WHEN "11011011" => tone1 <= 7;
				WHEN "11010111" => tone1 <= 8;
				WHEN "11011111" => IF tone1 <= 8 AND tone1 >= 5 THEN
				tone1 <= 0;
			END IF;
			WHEN OTHERS => tone1 <= tone1; -- ���ֵ�ǰ����
		END CASE;
	END IF;
END IF;
END PROCESS;

-- ����ģʽѡ��ǰ�����������ö�Ӧ������
PROCESS (clk_music, tone, tone1, tone2, mode_num)
BEGIN
	IF mode_num = '0' THEN -- ����ǲ���ģʽ
		tone <= tone2; -- ʹ�ò���ģʽ������
	ELSE -- ���������ģʽ
		tone <= tone1; -- ʹ������ģʽ������
	END IF;

	-- ��������ѡ������ (C ���)
	CASE tone IS
		WHEN 1 => pitch <= 11465; -- C4 -> �Ͱ˶�so
		WHEN 2 => pitch <= 10216; -- D4
		WHEN 3 => pitch <= 9101; -- E4
		WHEN 4 => pitch <= 8590; -- F4 -> do
		WHEN 5 => pitch <= 7653; -- G4
		WHEN 6 => pitch <= 6818; -- A4
		WHEN 7 => pitch <= 6074; -- B4
		WHEN 8 => pitch <= 5736; -- C5 -> so
		WHEN 9 => pitch <= 5106; -- D5
		WHEN 10 => pitch <= 4548; -- E5
		WHEN OTHERS => pitch <= 0; -- δ��������ʱ����
	END CASE;
END PROCESS;

-- �����������߼�
PROCESS (clk, pitch)
BEGIN
	IF rising_edge(clk) THEN -- ϵͳʱ��������
		IF cnt = pitch THEN -- ����������������ֵ
			cnt <= 0; -- ���ü�����
			clk_music <= NOT clk_music; -- ��ת������ʱ���ź�
		ELSE
			cnt <= cnt + 1; -- ���Ӽ�����
		END IF;
		beep <= clk_music; -- ����������ź�
	END IF;
END PROCESS;

END;