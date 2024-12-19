library ieee;
use ieee.std_logic_1164.all;

library work;
use work.all;

entity tb is
end entity tb;

architecture arch of tb is

    component counter is
        generic (MAX : integer :=100);
        port
        (   clock, reset : in std_logic;
            dout : out std_logic_vector(15 downto 0));
    end component;

    signal clock : std_logic :='0';
    signal reset : std_logic :='0';
    
    signal dout : std_logic_vector(15 downto 0);
    signal clock_cnt : integer :=0;
begin
    
    clock<=not clock'delayed(10 ns);
    
    process (clock) is
    begin
        if rising_edge(clock) then
            clock_cnt<=clock_cnt+1;
        end if;
    end process;
    
    reset <='1' when clock_cnt<10 else '0';
           
    DUT: counter
    generic map (MAX=>70) --此处修改计数值上限
    port map
    (
        clock => clock,
        reset => reset,
        dout  => dout
    );

end architecture arch;

    


