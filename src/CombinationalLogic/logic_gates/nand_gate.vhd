library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand_gate is
    port (
        a, b : in std_logic;
        y : out std_logic
    );
end nand_gate;

architecture behavioral of nand_gate is
begin
    y <= a nand b;
end behavioral;

