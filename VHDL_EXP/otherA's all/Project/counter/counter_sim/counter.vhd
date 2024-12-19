-------------------------------------------------------
--! @file count.vhd
--! @brief counter
-------------------------------------------------------

--! standard libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--! entity IO
entity counter is
    generic (MAX : integer :=100);
    port
    (   clock, reset : in std_logic;
        dout : out std_logic_vector(15 downto 0));
end;

--! RTL
architecture a of counter is
    signal count : unsigned(15 downto 0);
begin
    process (clock) is
	    variable up : boolean :=true; --up为true时为增计数，为false时为减计数
    begin
        if rising_edge(clock) then
            if reset='1' then
                count<=to_unsigned(0,count'length);
            else
			    if up=true then
				    if count=MAX-1 then
					    up:=false;
					else
					    up:=true;
					end if;
                    count <= count+1;
				else
				    if count=1 then
					    up:=true;
					else
					    up:=false;
					end if;
				    count <= count-1;
				end if;
            end if;
        end if;
    end process;
    
    dout<=std_logic_vector(count);
    
end;
