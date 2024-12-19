library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gcd is
    port 
    (
        clock, new_input : in std_logic;
        a, b   : in  unsigned(15 downto 0);
        result : out unsigned(15 downto 0):=to_unsigned(0,16);
        busy   : out std_logic
    );
end;

architecture rtl of gcd is
    -- fill you code here
begin
    -- fill your code
    process(clock)
    -- fill your code
    begin
        if rising_edge(clock) then
            -- fill your code
            null;
        end if;
    end process;
    -- fill your code
end;

