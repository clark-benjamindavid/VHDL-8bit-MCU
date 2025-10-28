library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate is
    port ( 
        a, b : in std_logic;
        y    : out std_logic 
    );
end or_gate;

architecture Behavioral of or_gate is
begin
    y <= a or b;
end Behavioral;

