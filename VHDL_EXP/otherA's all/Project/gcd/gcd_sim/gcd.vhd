library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gcd is
    port 
    (
        clock, new_input : in std_logic;
        a, b   : in  unsigned(15 downto 0);
        result : out unsigned(15 downto 0):=to_unsigned(0,16);
        busy   : out std_logic:='0'
    );
end;

architecture rtl of gcd is
begin
    process(clock)
	    variable min : unsigned(15 downto 0);
		variable result_tmp : unsigned(15 downto 0):=to_unsigned(0,16); --缓存result值，在!busy时输出到result
		variable clock_cnt_enable : boolean :=false;
		variable clock_cnt : integer :=0;
		variable busy_state : boolean :=false;
    begin
        if rising_edge(clock) then
		    if new_input='1' then
			    clock_cnt_enable := true;
                if a<=b then
			        min := a;
			    else
			        min := b;
		    	end if;
			    for i in to_integer(min) downto 1 loop
			        if (a mod i=0) and (b mod i=0) then
			   	        result_tmp := to_unsigned(i,16);
					    exit;
				    end if;
			    end loop;
            end if;
			if clock_cnt_enable then
			    if clock_cnt>=0 and clock_cnt<=4 then --此处只是产生了“仿真”的busy信号(5个时钟周期长度)，不是硬件意义上真正的busy信号
			        busy <='1';
			    	busy_state := true;
					clock_cnt := clock_cnt+1;
			    elsif clock_cnt=5 then
			        clock_cnt :=0;
					clock_cnt_enable :=false;
				    busy <='0';
				    busy_state := false;
			    end if;
			end if;
		end if;
		if not busy_state then
		    result <= result_tmp;
		end if;
    end process;
end;

