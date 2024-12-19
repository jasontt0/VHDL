library ieee;
use ieee.std_logic_1164.all;
---------------------------------
entity vote5 is
    port
    (   a  : in  std_logic_vector(4 downto 0);
        f  : out std_logic );
end;
---------------------------------
architecture arch of vote5 is
begin
    -- add your code below
	--process(a)is
	--    variable count:integer:=0;
	--begin
	--    for i in 0 to 4 loop
	--	    if(a(i)='1')then
	--		    count:=count+1;
	--		else
	--		    count:=count+0;
	--		end if;
	--	end loop;
	--    if(count>=3)then
	--	    f<='1';
	--	else
	--	    f<='0';
	--	end if;
	--end process;
	with a select
	f<='1' when "00111",
	   '1' when "01011",
	   '1' when "01101",
	   '1' when "01110",
	   '1' when "10011",
	   '1' when "10101",
	   '1' when "10110",
	   '1' when "11001",
	   '1' when "11010",
	   '1' when "11100",
	   '1' when "01111",
	   '1' when "10111",
	   '1' when "11011",
	   '1' when "11101",
	   '1' when "11110",
	   '1' when "11111",
	   '0' when others;    
end architecture;

