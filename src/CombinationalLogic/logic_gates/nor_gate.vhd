library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nor_gate is
    port (
        a, b : in std_logic;
        y : out std_logic
    );
end nor_gate;

architecture behavioral of nor_gate is
begin
    y <= a nor b;
end behavioral;
