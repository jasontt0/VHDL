library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PWM_LED is
port(clk: in std_logic;--�ڲ�ʱ�ӱ���
	led: out std_logic_vector(7 downto 0);--����LED�Ʊ���
	reset: in std_logic;--�����ź�
	lumUP: in std_logic;--�����������ȱ���
	lumDN: in std_logic;--���ƽ������ȱ���
	frqUP: in std_logic;--���ƺ���Ƶ�ʼӿ����
	frqDN: in std_logic--���ƺ���Ƶ�ʼ�������
	);
end PWM_LED;


architecture Behavior of PWM_LED is

signal sawtooth_cnt: integer range 0 to 65535:= 0;--������ݲ��ü�����
signal triangle_cnt: integer range 0 to 65535 := 0;--�������ǲ��ü�����
signal lumlevel: integer range 1 to 5 := 3;--���ȼ�����һ���弶
signal lumdivision: integer;
signal frqnum: integer;--Ƶ�ʼ������ֵ
signal frqlevel: integer range 1 to 5 := 3;--����Ƶ�ʼ�����һ���弶
signal count_flag: bit := '1';--���Ʋ������ǲ��ü����������ӻ��Ǽ���
signal lumUP_1,lumUP_2,lumUP_3: std_logic ;--���ڿ��ư������ܣ���ͬ
signal lumDN_1,lumDN_2,lumDN_3: std_logic ;
signal frqUP_1,frqUP_2,frqUP_3: std_logic ;
signal frqDN_1,frqDN_2,frqDN_3: std_logic ;
signal btn: std_logic_vector(3 downto 0) := "0000";--����

begin

process (clk,reset)
begin
	if(reset = '1') then--��reset��������ʱ��ִ��ϵͳ����
			lumUP_1 <= '0';
			lumUP_2 <= '0';
			lumUP_3 <= '0';
			lumDN_1 <= '0';
			lumDN_2 <= '0';
			lumDN_3 <= '0';	
			frqUP_1 <= '0';
			frqUP_2 <= '0';
			frqUP_3 <= '0';
			frqDN_1 <= '0';
			frqDN_2 <= '0';
			frqDN_3 <= '0';
	elsif (clk' event and clk='1') then--ͨ������ֵ���ư�������

		if (lumUP = '1') then--�������ư�������Ϊ�������ȵ��ź�
			lumUP_1 <= lumUP;
			lumUP_2 <= lumUP_1;
			lumUP_3 <= lumUP_2;
		else
			lumUP_1 <= '0';
			lumUP_2 <= '0';
			lumUP_3 <= '0';
		end if;

		if (lumDN = '1') then--�������ư�������Ϊ�������ȵ��ź�
			lumDN_1 <= lumDN;
			lumDN_2 <= lumDN_1;
			lumDN_3 <= lumDN_2;
		else
			lumDN_1 <= '0';
			lumDN_2 <= '0';
			lumDN_3 <= '0';	
		end if;

		if (frqUP = '1') then--�������ư�������Ϊ��������Ƶ�ʵ��ź�
			frqUP_1 <= frqUP;
			frqUP_2 <= frqUP_1;
			frqUP_3 <= frqUP_2;
		else
			frqUP_1 <= '0';
			frqUP_2 <= '0';
			frqUP_3 <= '0';
		end if;		

		if (frqDN = '1') then--�������ư�������Ϊ���ͺ���Ƶ�ʵ��ź�
			frqDN_1 <= frqDN;
			frqDN_2 <= frqDN_1;
			frqDN_3 <= frqDN_2;
		else
			frqDN_1 <= '0';
			frqDN_2 <= '0';
			frqDN_3 <= '0';
		end if;

	end if;

end process;

process (clk)--���������ڿ��ư������ܵı�����ֵͨ���߼���䴦��󸳸���������
begin
		btn(0) <= frqUP_1 and (frqUP_2 and (not frqUP_3));
        btn(1) <= frqDN_1 and (frqDN_2 and (not frqDN_3));
        btn(2) <= lumUP_1 and (lumUP_2 and (not lumUP_3));
		btn(3) <= lumDN_1 and (lumDN_2 and (not lumDN_3));	
end process;

process (btn,reset)--ϵͳ����ģʽ												
begin
	if(reset = '1') then--��ϵͳ����ʱ�����Ⱥ�Ƶ�ʾ��ڵ�����
		frqlevel <= 3;
		lumlevel <= 3;
	elsif (clk' event and clk='1') then

		case(btn) is
		
			when "0001" =>--Ƶ������
				if (frqlevel < 5) then
					frqlevel <= frqlevel + 1;
				else
					frqlevel <= frqlevel;		
				end if ;

			when "0010" =>--Ƶ�ʼ�С
				if (frqlevel > 1) then
					frqlevel <= frqlevel - 1;
				else
					frqlevel <= frqlevel;		
				end if ;			
				
			when "0100" =>--��������
				if (lumlevel < 5) then
					lumlevel <= lumlevel + 1;
				else
					lumlevel <= lumlevel;		
				end if ;

			when "1000" =>--���Ƚ���
				if (lumlevel > 1) then
					lumlevel <= lumlevel - 1;
				else
					lumlevel <= lumlevel;		
				end if ;

			when others => 
				lumlevel <= lumlevel;
				frqlevel <= frqlevel;

		end case ;
	end if;
end process;

process(clk)--���²���
begin
	if (clk' event and clk='1') then
		case(lumlevel) is--��ͬ�����ȼ�����Ӧ��ͬlumdivision
			when 1 =>
				lumdivision <= 625;
			when 2 =>
				lumdivision <= 125;
			when 3 =>
				lumdivision <= 25;
			when 4 =>
				lumdivision <= 5;
			when 5 =>
				lumdivision <= 1;
			when others =>
				lumdivision <= 1;

		end case;

		case(frqlevel) is--��ͬ��Ƶ���ܼ���Ӧ��ͬ��frqnum
		
			when 1 =>
				frqnum <= 1000;
			when 2 =>
				frqnum <= 2000;
			when 3 =>
				frqnum <= 3000;
			when 4 =>
				frqnum <= 4000;
			when 5 =>
				frqnum <= 5000;
			when others =>
				frqnum <= 3000;

		end case;
	
	end if;
end process;

process (clk,reset)--������������ݲ��ź�
begin
	if(reset = '1') then--����
		sawtooth_cnt <= 0;
	elsif (clk' event and clk='1') then
		if (sawtooth_cnt >= frqnum) then
			sawtooth_cnt <= 0;
		else
			sawtooth_cnt <= sawtooth_cnt + 1;
		end if;
	else
		sawtooth_cnt <= sawtooth_cnt;
	end if;
end process;

process (clk,reset)--�������������ǲ��ź�
variable lumcnt: integer range 1 to 625 := 1;
begin
	if (reset = '1') then
		lumcnt := 1;
		triangle_cnt <= 1;
		count_flag <= '1';
	elsif (clk' event and clk='1') then
		if (sawtooth_cnt = frqnum)then
			if (lumcnt >= lumdivision) then
				lumcnt := 1;
				if (count_flag = '1') then--���Ƽ��������ӻ��ǽ��ͣ��Ӷ��������ǲ�
					if (triangle_cnt >= frqnum/lumdivision) then--����������frqnum/lumdivisionʱ��������ʼ����
						count_flag <= '0'; 
					else
						triangle_cnt <= triangle_cnt + 1;
					end if;
				else
					if (triangle_cnt = 0) then--���������͵�0ʱ��������ʼ����
						count_flag <= '1';
					else
						triangle_cnt <= triangle_cnt - 1;
					end if;
				end if ;
			else
				lumcnt := lumcnt + 1;
			end if;

		end if;
	end if;
end process;

process (clk,reset)--���������Ʋ�
begin
	if(reset = '1') then
		led <= "11111111";
	elsif (triangle_cnt > sawtooth_cnt) then--�ȽϾ�ݲ����������ǲ�������С������LED����
		led <= "00000000";
	else
		led <= "11111111";
	end if ;

end process;

end Behavior;