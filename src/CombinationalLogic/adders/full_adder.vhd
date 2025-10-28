library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.adders_pkg.all;

entity full_adder is
    port (
        a, b, c_in : std_logic;
        s, c_out : out std_logic
    );
end full_adder;

architecture behavior of full_adder is
    signal sum1, carry1, carry2 : std_logic;
begin
    HA1: half_adder port map (
        a => a,
        b => b,
        s => sum1,
        c_out => carry1
    );


    HA2: half_adder port map (
        a => sum1,
        b => c_in,
        s => s,
        c_out => carry2
    );

    c_out <= carry1 or carry2;

end behavior;



    
