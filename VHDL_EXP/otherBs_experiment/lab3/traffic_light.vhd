LIBRARY IEEE;
USE IEEE.Std_Logic_1164.ALL;
USE IEEE.Std_Logic_Arith.ALL;
USE IEEE.Std_Logic_UNSIGNED.ALL;

ENTITY traffic_lights IS
PORT
(
	set1: IN Std_Logic;--按键1
	set2: IN Std_Logic;--按键2
	set3: IN Std_Logic;--按键3
	set4: IN Std_Logic;--按键4
	clk: IN Std_Logic;--内部时钟信号
	red1: OUT Std_Logic;--横向红灯
	green1: OUT Std_Logic;--横向绿灯
	yellow1: OUT Std_Logic;--蓝灯，无�	red2: OUT Std_Logic;  --纵向红灯
	green2: OUT Std_Logic;--纵向绿灯
	yellow2: OUT Std_Logic--蓝灯，无�	an0: OUT Std_Logic;--个位显示数码�	an1: OUT Std_Logic;--十位显示数码�	a_to_g0: OUT Std_Logic_Vector(6 DOWNTO 0);--数码管七�	a_to_g1: OUT Std_Logic_Vector(6 DOWNTO 0)--数码管七�);
);
END traffic_lights;


ARCHITECTURE lights OF traffic_lights IS

TYPE light_state IS (red_green,red_yellow,green_red,yellow_red,yellow_shining,reset);--五种状�

SIGNAL time_cnt,all_time,diff_time: INTEGER RANGE 0 TO 255;--1s计数器，总时间，倒计�SIGNAL present_state,next_state: light_state;--当前状态，下一个状�SIGNAL mode:integer range 0 to 3;--四种模式
SIGNAL clk_1s,clk_half: Std_Logic;--1s时钟�.5s时钟
SIGNAL unit,tens: Std_Logic_Vector(3 DOWNTO 0);--计数低位，高�SIGNAL bin_num: Std_Logic_Vector(7 DOWNTO 0);--8�进制倒计�
BEGIN
----------------------分频模块---------------------------
	clk_1ss: process(clk)--时钟分频模块�s�	variable cnt:integer range 0 to 5999999;
	begin
	  if(clk'event and clk= '1' )then
	     if cnt=5999999 then
		    cnt:=0;
			clk_1s <= not clk_1s;
         else cnt :=cnt+1;
         end if;
      end if;
    end process clk_1ss;
    
	clk_halfs: process(clk)--时钟分频模块�.5s�	variable cnt_half:integer range 0 to 2999999;
	begin
	  if(clk'event and clk= '1' )then
	     if cnt_half=2999999 then
		    cnt_half:=0;
			clk_half <= not clk_half;
         else cnt_half :=cnt_half+1;
         end if;
      end if;
    end process clk_halfs;

	diff_time <= all_time - time_cnt;--倒计时为总时间减去时间计�	bin_num <= CONV_STD_LOGIC_VECTOR(diff_time,8);--十进制数转化�位二进制�-------------------倒计时取出十位和个位-------------------
	process(bin_num)
  begin
       if (bin_num(4)='1' or (bin_num(3)='1' and (bin_num(2)='1' or bin_num(1)='1'))) then
	   tens<="0001";--倒计时超�0则十位为1
	   else tens<="0000";
	   end if;
  end process;
  
  process(bin_num)
  begin
	   if(bin_num(3)='1' and (bin_num(2)='1' or bin_num(1)='1')) then--超过�	   unit<=CONV_STD_LOGIC_VECTOR(unsigned(bin_num(3 DOWNTO 0))-10,4);--个位为低四位�0后的�	   elsif(bin_num(4)='1') then	    unit<=CONV_STD_LOGIC_VECTOR(CONV_INTEGER(bin_num(3 DOWNTO 0))+6,4);--超过15个位为低四位�后的数，即为超过20的数的个�	   else unit<=bin_num(3 DOWNTO 0);--小于10直接取低四位
	   end if;
  end process;
 ----------------------按键模块--------------------------- 
	PROCESS(clk_1s,set4)
	BEGIN
				IF rising_edge(clk_1s) THEN
				IF set1 = '0' THEN --按键1为mode0，主次干道模�				present_state <= red_green;--初始状态为横向红纵向绿
				mode<=0;
				time_cnt <= 0;
			    ELSIF set2 = '0' THEN --按键2为mode1，双向对等模�				present_state <= red_green;
				mode<=1;
				time_cnt <= 0;
			    ELSIF set3 = '0' THEN--按键3为mode2，双向黄闪模�				present_state <= yellow_shining;
				mode<=2;
				time_cnt <= 0;
				elsif (set4='0') THEN--按键4为reset
				present_state <= present_state;--初始状态为黄闪
                mode<=0;
				time_cnt <= 0;
			    ELSE
				present_state <= next_state;
				IF diff_time = 1 THEN--倒计时为1时更新计数器
					time_cnt <= 0;
				ELSE
					time_cnt <= time_cnt + 1;--计数�s增加1
				end if;
				end if;
				end if;
					
				
	END PROCESS;
-------------------状态转移模�-----------------------------
	PROCESS(diff_time,present_state,mode)
	BEGIN
	    if(mode= 0 or mode = 1) then
		CASE present_state IS
		WHEN red_green => --红绿状�			IF diff_time = 1 THEN--倒计时为1时状态转�				next_state <= red_yellow;--转化为红黄状�			ELSE
				next_state <= red_green;--保持不变
			END IF;
		WHEN red_yellow =>--红黄状�			IF diff_time = 1 THEN
				next_state <= green_red;--转化为绿红状�			ELSE
				next_state <= red_yellow;--保持不变
			END IF;
		WHEN green_red =>--绿红状�			IF diff_time = 1 THEN
				next_state <= yellow_red;--转化为黄红状�			ELSE
				next_state <= green_red;--不变
			END IF;
		WHEN yellow_red =>--黄红状�			IF diff_time = 1 THEN
				next_state <= red_green;--红绿状�			ELSE
				next_state <= yellow_red;--不变
			END IF;
		end case;
		
		elsif(mode=2) then
		    next_state <= yellow_shining;
		else
		    next_state <=red_green;
        end if;
		
	END PROCESS;
-----------------输出模块----------------------
	process(present_state,mode,clk_half,clk_1s)
	begin
	yellow1<='1';
	yellow2<='1';
	if mode=1 then--模式1（不对等�	case present_state is
		WHEN red_green => all_time <= 16;--主干道绿灯时�	
	    WHEN red_yellow => all_time <= 3;--黄灯时间
	    WHEN green_red=> all_time <= 12;--次干道绿灯时�		WHEN yellow_red=> all_time <= 3;--黄灯时间
		WHEN OTHERS=> all_time <= 10;
	end case;
	case present_state is--除红灯情况绿灯都�		 WHEN red_green=>green1 <= '1' ;
		 WHEN red_yellow=>green1 <= '1';
		 WHEN yellow_shining=>green1 <= ('0' OR clk_half) ;
	     WHEN OTHERS=>green1 <= '0';
	end case;
	case present_state is--除绿灯情况红灯都�		 WHEN green_red=>red1 <= '1';
		 WHEN yellow_shining=>red1 <= ('0' OR clk_half) ;
		 WHEN OTHERS=>red1 <= '0';
	end case;
	case present_state is--蓝灯不亮
		 WHEN yellow_shining=>yellow1 <= ('1' OR clk_half) ;	 
	     WHEN yellow_red=>yellow1 <= '1' ;		 
		  WHEN OTHERS=>yellow1 <= '1';		 
	end case;
	
	case present_state is--除红灯情况绿灯都�		 WHEN green_red=>green2 <= '1' ;
		 WHEN yellow_red=>green2 <= '1';
		 WHEN yellow_shining=>green2 <= ('0' OR clk_half) ;
		 WHEN OTHERS=>green2 <= '0';
	end case;
	case present_state is--除绿灯情况红灯都�		 WHEN red_green=>red2 <= '1';
		 WHEN yellow_shining=>red2 <= ('0' OR clk_half) ;
	     WHEN OTHERS=>red2 <= '0';
	end case;
	case present_state is--蓝灯不亮
		 WHEN yellow_shining=>yellow2 <= ('1' OR clk_half) ;		 
		 WHEN red_yellow=>yellow2 <= '1';		
	     WHEN OTHERS=>yellow2 <= '1' ;  
	end case;
	case present_state is--黄闪时数码管�	     WHEN yellow_shining=>an0 <= '1';
		 WHEN OTHERS=>an0 <= '0';
	end case;
	case present_state is--黄闪时数码管�		 WHEN yellow_shining=>an1 <= '1';
		 WHEN OTHERS=>an1 <= '0' ;
	end case;
	
	elsif(mode=0 or mode=2)then
	case present_state is
		WHEN red_green=> all_time <= 16;--主干道绿灯时�		WHEN red_yellow=> all_time <= 3;--黄灯时间
		WHEN green_red=> all_time <= 16;--次干道绿灯时�		WHEN yellow_red=> all_time <= 3;--黄灯时间
		WHEN OTHERS=> all_time <= 12;
	end case;
	case present_state is--除红灯情况绿灯都�		 WHEN red_green=>green1 <= '1' ;
		 WHEN red_yellow=>green1 <= '1';
		 WHEN yellow_shining=>green1 <= ('0' OR clk_half) ;
	     WHEN OTHERS=>green1 <= '0';
	end case;
	case present_state is--除绿灯情况红灯都�		 WHEN green_red=>red1 <= '1';
		 WHEN yellow_shining=>red1 <= ('0' OR clk_half) ;
		 WHEN OTHERS=>red1 <= '0';
	end case;

	case present_state is--除红灯情况绿灯都�		 WHEN green_red=>green2 <= '1' ;
		 WHEN yellow_red=>green2<='1';
		 WHEN yellow_shining=>green2<= ('0' OR clk_half) ;
		 WHEN OTHERS=>green2 <= '0';
	end case;
	case present_state is--除绿灯情况红灯都�		 WHEN red_green=>red2 <= '1';
		 WHEN yellow_shining=>red2 <= ('0' OR clk_half) ;
	     WHEN OTHERS=>red2 <= '0';
	end case;
	case present_state is--黄闪时数码管�	     WHEN yellow_shining=>an0 <= '1';
		 WHEN OTHERS=>an0 <= '0';
	end case;
	case present_state is--黄闪时数码管�		 WHEN yellow_shining=>an1 <= '1';
		 WHEN OTHERS=>an1 <= '0' ;
	end case;
	
	else
	  
	    
	end if;

	end process;
------------------数码管显示模�-------------------------
	a_to_g0 <= "1111110" WHEN unit = "0000" ELSE
			  "0110000" WHEN unit = "0001" ELSE
			  "1101101" WHEN unit = "0010" ELSE
			  "1111001" WHEN unit = "0011" ELSE
			  "0110011" WHEN unit = "0100" ELSE
			  "1011011" WHEN unit = "0101" ELSE
			  "1011111" WHEN unit = "0110" ELSE
			  "1110000" WHEN unit = "0111" ELSE
			  "1111111" WHEN unit = "1000" ELSE
			  "1111011" WHEN unit = "1001" ELSE
			  "1110111" WHEN unit= "1010" ELSE
			  "0011111" WHEN unit = "1011" ELSE
			  "1001110" WHEN unit= "1100" ELSE
			  "0111101" WHEN unit = "1101" ELSE
			  "1001111" WHEN unit = "1110" ELSE
			  "1000111" WHEN unit = "1111" ELSE
			  "0001000";
			  
	a_to_g1 <= "1111110" WHEN tens = "0000" ELSE
			  "0110000" WHEN tens = "0001" ELSE
			  "1101101" WHEN tens = "0010" ELSE
			  "1111001" WHEN tens = "0011" ELSE
			  "0110011" WHEN tens = "0100" ELSE
			  "1011011" WHEN tens = "0101" ELSE
			  "1011111" WHEN tens = "0110" ELSE
			  "1110000" WHEN tens = "0111" ELSE
			  "1111111" WHEN tens = "1000" ELSE
			  "1111011" WHEN tens = "1001" ELSE
			  "1110111" WHEN tens= "1010" ELSE
			  "0011111" WHEN tens = "1011" ELSE
			  "1001110" WHEN tens= "1100" ELSE
			  "0111101" WHEN tens = "1101" ELSE
			  "1001111" WHEN tens = "1110" ELSE
			  "1000111" WHEN tens = "1111" ELSE
			  "0001000";
END lights;
