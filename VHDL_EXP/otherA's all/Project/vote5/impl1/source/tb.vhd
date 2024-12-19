library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.all;

entity tb is
end entity tb;

-- testbench
architecture behav of tb is
    -- user circuit
    component vote5 is
        port
        (   a  : in  std_logic_vector(4 downto 0);
            f  : out std_logic );
    end component;

    signal vote_out: std_logic; -- vote output
    signal ref_out : boolean;   -- reference output
    signal cnt     : std_logic_vector(4 downto 0):=(others=>'0');  -- vector with initial value "00000"
    signal clock   : std_logic :='0';
begin
    -- gegerate clock of 100MHz 
    clock<=not clock'delayed(5 ns);
    
    -- generate vote inputs by 5-bit binary counter cnt
    process (clock) is
    begin
        if rising_edge(clock) then
            cnt<=std_logic_vector(unsigned(cnt)+1);
        end if;
    end process;

    -- count for '1's in cnt
    process(cnt) is
        variable n : integer;
    begin
        n:=0;
        for i in cnt'range loop
            if cnt(i)='1' then 
                n:=n+1; 
            end if;
        end loop;
        ref_out<=(n>=3);    -- bool, more '1's than '0's
    end process;
     
    -- device under test
    DUT: vote5
    port map
    (
        a=>cnt,     -- connect 5-bit vector a to cnt        
        f=>vote_out -- connect f to vout
    );

end architecture;

