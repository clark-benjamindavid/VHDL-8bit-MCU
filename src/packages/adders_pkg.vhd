library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package adders_pkg is
    component half_adder is
        port (
            a, b : in std_logic;
            c_out, s : out std_logic
        );
    end component half_adder;
    
    component full_adder is
        port (
            a, b, c_in : in std_logic;
            s, c_out : out std_logic  
        );
    end component full_adder;
end package adders_pkg;
