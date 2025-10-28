library IEEE;
use IEEE.std_logic_1164.ALL;

package logic_gates_pkg is  
    -- AND GATE
    component and_gate  
        Port (
            a, b : in std_logic;
            y : out std_logic
        );
    end component;

    -- OR GATE
    component or_gate 
        Port (
            a, b : in std_logic;
            y : out std_logic
        );
    end component;

    -- NOT GATE
    component not_gate
        Port (
            a : in std_logic;
            y : out std_logic
        );
    end component;

    -- XOR GATE
    component xor_gate
        Port (
            a, b : in std_logic;
            y : out std_logic
        );
    end component;
    
    -- NAND GATE
    component nand_gate
        Port (
            a, b : in std_logic;
            y : out std_logic
        );
    end component;

    -- NOR GATE
    component nor_gate
        Port (
            a, b : in std_logic;
            y : out std_logic
        );
    end component;
end package;

