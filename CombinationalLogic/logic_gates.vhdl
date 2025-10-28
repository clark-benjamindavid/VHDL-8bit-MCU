library IEEE;
use IEEE.std_logic_1164.ALL;

library IEEE;
use IEEE.std_logic_1164.ALL;

entity and_gate is
    Port ( 
        a, b : in std_logic;
        y    : out std_logic
    );
end and_gate;

architecture Behavioral of and_gate is
begin
    y <= a and b;
end Behavioral;


library IEEE;
use IEEE.std_logic_1164.ALL;

entity or_gate is
    Port ( 
        a, b : in std_logic;
        y    : out std_logic 
    );
end or_gate;

architecture Behavioral of or_gate is
begin
    y <= a or b;
end Behavioral;


library IEEE;
use IEEE.std_logic_1164.ALL;

entity not_gate is
    Port (
        a : in std_logic;
        y : out std_logic
    );
end not_gate;

architecture Behavioral of not_gate is
begin
    y <= not a;
end Behavioral;


library IEEE;
use IEEE.std_logic_1164.ALL;

entity xor_gate is
    Port ( 
        a, b : in std_logic;
        y    : out std_logic
     );
end xor_gate;

architecture Behavioral of xor_gate is
begin
    y <= a xor b;
end Behavioral;

library IEEE;
use IEEE.std_logic_1164.ALL;

entity nand_gate is
    Port (
        a, b : in std_logic;
        y : out std_logic
    );
end nand_gate;

architecture behavioral of nand_gate is
begin
    y <= a nand b;
end behavioral;

library IEEE;
use IEEE.std_logic_1164.ALL;

entity nor_gate is
    Port (
        a, b : in std_logic;
        y : out std_logic
    );
end nor_gate;

architecture behavioral of nor_gate is
begin
    y <= a nor b;
end behavioral;

----------------------------------------------
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

