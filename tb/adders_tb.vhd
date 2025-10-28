library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.adders_pkg.all;

entity adders_tb is
end adders_tb;

architecture sim of adders_tb is
    signal a, b, c_in : std_logic := '0';
    signal s, c_out : std_logic;
begin

    DUT: full_adder
        port map (
            a => a,
            b => b,
            c_in => c_in,
            s => s,
            c_out => c_out
        );

    -- Test full_adder
    stim_proc: process
    begin
        for i in 0 to 7 loop
            if ((i / 4) mod 2) = 1 then
                a <= '1';
            else 
                a <= '0';
            end if;
            
            if ((i / 2) mod 2) = 1 then
                b <= '1';
            else 
                b <= '0';
            end if;

            if (i mod 2) = 1 then
                c_in <= '1';
            else
                c_in <= '0';
            end if;

        wait for 10 ns;
        end loop;
        wait;
    end process;
end sim;
    
