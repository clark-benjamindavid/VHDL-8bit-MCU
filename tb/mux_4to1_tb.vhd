library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity mux_4to1_tb is
end entity;

architecture sim of mux_4to1_tb is
    component mux_4to1
        port (
            din : in std_logic_vector(3 downto 0);
            sel : in std_logic_vector(1 downto 0);
            dout : out std_logic
        );
    end component;

    signal din : std_logic_vector(3 downto 0) := "0000";
    signal sel : std_logic_vector(1 downto 0) := "00";
    signal dout : std_logic;
   
begin
    u1 : mux_4to1 port map (din => din, sel => sel, dout => dout);

    process
    begin
        for i in 0 to 15 loop
            din <= std_logic_vector(to_unsigned(i, 4));
            sel <= "00";
            wait for 10 ns;

            sel <= "01";
            wait for 10 ns;

            sel <= "10";
            wait for 10 ns;

            sel <= "11";
            wait for 10 ns;
        
            
        end loop;

        wait;
    end process;
end sim;


           
