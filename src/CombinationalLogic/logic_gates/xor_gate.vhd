library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_gate is
    port ( 
        a, b : in std_logic;
        y    : out std_logic
     );
end xor_gate;

architecture Behavioral of xor_gate is
begin
    y <= a xor b;
end Behavioral;
