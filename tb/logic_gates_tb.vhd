Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.logic_gates_pkg.all;

entity logic_gates_tb is
end logic_gates_tb;

architecture sim of logic_gates_tb is
    signal a, b : std_logic := '0';
    signal y_and, y_or, y_not, y_xor, y_nand, y_nor : std_logic;
begin  
    u1: and_gate port map (a => a, b => b, y => y_and);
    u2: or_gate port map (a => a, b => b, y => y_or);
    u3: not_gate port map (a => a, y => y_not);
    u4: xor_gate port map (a => a, b => b, y => y_xor);
    u5: nand_gate port map (a => a, b => b, y => y_nand);
    u6: nor_gate port map (a => a, b => b, y => y_nor);

    process
    begin
        a <= '0'; b <= '0'; 
        wait for 10 ns;

        a <= '0'; b <= '1'; 
        wait for 10 ns;

        a <= '1'; b <= '0'; 
        wait for 10 ns;

        a <= '1'; b <= '1'; 
        wait for 10 ns;
        
        wait;
    end process;
end sim;
