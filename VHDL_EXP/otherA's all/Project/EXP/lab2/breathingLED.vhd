library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PWM_LED is
port(clk: in std_logic;--内部时钟变量
	led: out std_logic_vector(7 downto 0);--控制LED灯变量
	reset: in std_logic;--重置信号
	lumUP: in std_logic;--控制增大亮度变量
	lumDN: in std_logic;--控制降低亮度变量
	frqUP: in std_logic;--控制呼吸频率加快变量
	frqDN: in std_logic--控制呼吸频率减慢变量
	);
end PWM_LED;


architecture Behavior of PWM_LED is

signal sawtooth_cnt: integer range 0 to 65535:= 0;--产生锯齿波用计数器
signal triangle_cnt: integer range 0 to 65535 := 0;--产生三角波用计数器
signal lumlevel: integer range 1 to 5 := 3;--亮度级数，一共五级
signal lumdivision: integer;
signal frqnum: integer;--频率计数最大值
signal frqlevel: integer range 1 to 5 := 3;--呼吸频率级数，一共五级
signal count_flag: bit := '1';--控制产生三角波用计数器是增加还是减少
signal lumUP_1,lumUP_2,lumUP_3: std_logic ;--用于控制按键功能，下同
signal lumDN_1,lumDN_2,lumDN_3: std_logic ;
signal frqUP_1,frqUP_2,frqUP_3: std_logic ;
signal frqDN_1,frqDN_2,frqDN_3: std_logic ;
signal btn: std_logic_vector(3 downto 0) := "0000";--按键

begin

process (clk,reset)
begin
	if(reset = '1') then--当reset按键按下时，执行系统重置
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
	elsif (clk' event and clk='1') then--通过变量值控制按键功能

		if (lumUP = '1') then--产生控制按键功能为提升亮度的信号
			lumUP_1 <= lumUP;
			lumUP_2 <= lumUP_1;
			lumUP_3 <= lumUP_2;
		else
			lumUP_1 <= '0';
			lumUP_2 <= '0';
			lumUP_3 <= '0';
		end if;

		if (lumDN = '1') then--产生控制按键功能为降低亮度的信号
			lumDN_1 <= lumDN;
			lumDN_2 <= lumDN_1;
			lumDN_3 <= lumDN_2;
		else
			lumDN_1 <= '0';
			lumDN_2 <= '0';
			lumDN_3 <= '0';	
		end if;

		if (frqUP = '1') then--产生控制按键功能为提升呼吸频率的信号
			frqUP_1 <= frqUP;
			frqUP_2 <= frqUP_1;
			frqUP_3 <= frqUP_2;
		else
			frqUP_1 <= '0';
			frqUP_2 <= '0';
			frqUP_3 <= '0';
		end if;		

		if (frqDN = '1') then--产生控制按键功能为降低呼吸频率的信号
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

process (clk)--将上面用于控制按键功能的变量的值通过逻辑语句处理后赋给按键数组
begin
		btn(0) <= frqUP_1 and (frqUP_2 and (not frqUP_3));
        btn(1) <= frqDN_1 and (frqDN_2 and (not frqDN_3));
        btn(2) <= lumUP_1 and (lumUP_2 and (not lumUP_3));
		btn(3) <= lumDN_1 and (lumDN_2 and (not lumDN_3));	
end process;

process (btn,reset)--系统重置模式												
begin
	if(reset = '1') then--当系统重置时，亮度和频率均在第三档
		frqlevel <= 3;
		lumlevel <= 3;
	elsif (clk' event and clk='1') then

		case(btn) is
		
			when "0001" =>--频率增加
				if (frqlevel < 5) then
					frqlevel <= frqlevel + 1;
				else
					frqlevel <= frqlevel;		
				end if ;

			when "0010" =>--频率减小
				if (frqlevel > 1) then
					frqlevel <= frqlevel - 1;
				else
					frqlevel <= frqlevel;		
				end if ;			
				
			when "0100" =>--亮度增加
				if (lumlevel < 5) then
					lumlevel <= lumlevel + 1;
				else
					lumlevel <= lumlevel;		
				end if ;

			when "1000" =>--亮度降低
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

process(clk)--更新参数
begin
	if (clk' event and clk='1') then
		case(lumlevel) is--不同的亮度级数对应不同lumdivision
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

		case(frqlevel) is--不同的频率能级对应不同的frqnum
		
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

process (clk,reset)--计数器产生锯齿波信号
begin
	if(reset = '1') then--重置
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

process (clk,reset)--计数器产生三角波信号
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
				if (count_flag = '1') then--控制计数是增加还是降低，从而产生三角波
					if (triangle_cnt >= frqnum/lumdivision) then--当计数大于frqnum/lumdivision时，计数开始降低
						count_flag <= '0'; 
					else
						triangle_cnt <= triangle_cnt + 1;
					end if;
				else
					if (triangle_cnt = 0) then--当计数降低到0时，计数开始降低
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

process (clk,reset)--产生呼吸灯波
begin
	if(reset = '1') then
		led <= "11111111";
	elsif (triangle_cnt > sawtooth_cnt) then--比较锯齿波计数和三角波计数大小，控制LED亮灭
		led <= "00000000";
	else
		led <= "11111111";
	end if ;

end process;

end Behavior;