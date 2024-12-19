   
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.all;

entity tb is
end entity tb;

architecture arch of tb is
    component gcd is
        port
        (   clock, new_input : in std_logic;
            a, b   : in  unsigned(15 downto 0);
            result : out unsigned(15 downto 0);
            busy   : out std_logic
		);
    end component;

    signal clock : std_logic :='0';
    signal new_input : std_logic :='0';
	signal in_a : unsigned(15 downto 0):=to_unsigned(0,16);
	signal in_b : unsigned(15 downto 0):=to_unsigned(0,16);
    
    signal out_gcd : unsigned(15 downto 0):=to_unsigned(0,16);
    signal out_busy: std_logic :='0';
	
	type data_in is array (1 to 2, 1 to 10) of integer;
	constant data : data_in :=                
	((0, 1, 10, 1, 35, 105, 90, 65, 50, 85),
	 (0, 5, 10, 21, 42, 20, 75, 45, 20, 95)); --第一行为a的数据表，第二行为b的数据表，用户可以对此进行修改以测试程序输出，但请注意仿真总时长不要超过5us！否则data里的数据将不足以供仿真用
begin
    
    clock <= not clock'delayed(10 ns); --产生周期20ns，占空比50%的时钟信号
    
    process (clock) is
	    variable clock_cnt : integer :=0;
		variable i : integer :=1;
    begin
        if rising_edge(clock) then
            clock_cnt := clock_cnt+1;
			if clock_cnt=25 then
			    clock_cnt := 0;
				i := i+1;
				new_input <= '1';
				in_a <= to_unsigned(data(1,i),16);
				in_b <= to_unsigned(data(2,i),16);
			else
			    new_input <= '0';
			end if;
        end if;
    end process;       
	
    DUT: gcd
    port map
    (
        clock => clock,
        new_input => new_input,
        a => in_a,
		b => in_b,
		result => out_gcd,
		busy => out_busy
    );

end architecture arch;

    


