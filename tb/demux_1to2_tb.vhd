library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity demux_1to2_tb is
end entity demux_1to2_tb;

architecture sim of demux_1to2_tb is
    component demux_1to2 
        port (
            din : in std_logic;
            sel : in std_logic;
            dout : out std_logic_vector(1 downto 0)
        );
    end component;

    signal din, sel : std_logic;
    signal dout : std_logic_vector(1 downto 0);

begin
    u1: demux_1to2 port map (din => din, sel => sel, dout => dout);

    process
    begin  
        din <= '0';
        sel <= '0';
        wait for 10 ns;

        din <= '1';
        wait for 10 ns;

        din <= '0';
        sel <= '1';
        wait for 10 ns;

        din <= '1';
        wait for 10 ns;
        wait;
    end process;
end sim;
