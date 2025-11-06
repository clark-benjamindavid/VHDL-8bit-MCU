library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity mux_2to1_tb is
end mux_2to1_tb;

architecture sim of mux_2to1_tb is
    component mux_2to1
        port (
            din : in std_logic_vector(1 downto 0);
            sel : in std_logic;
            dout : out std_logic
        );
    end component;

    signal din : std_logic_vector(1 downto 0); 
    signal sel : std_logic := '0';
    signal dout : std_logic;
begin
    u1: mux_2to1 port map (din => din, sel => sel, dout => dout);
    
    
    process
    begin
        for i in 0 to 3 loop
            din <= std_logic_vector(to_unsigned(i,2));
            
            sel <= '0';
            wait for 10 ns;

            sel <= '1';
            wait for 10 ns;
        end loop;
        wait;
    end process;
end sim;
           

