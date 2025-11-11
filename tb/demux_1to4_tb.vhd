library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity demux_1to4_tb is
end entity demux_1to4_tb;

architecture sim of demux_1to4_tb is
    component demux_1to4 
        port (
            din : in std_logic;
            sel : in std_logic_vector(1 downto 0);
            dout : out std_logic_vector(3 downto 0)
        );
    end component;

    signal din : std_logic;
    signal sel : std_logic_vector(1 downto 0);
    signal dout : std_logic_vector(3 downto 0);

begin
    u1: demux_1to4 port map (din => din, sel => sel, dout => dout);

    process
    begin
        for channel in 0 to (2**sel'length - 1) loop
            sel <= std_logic_vector(to_unsigned(channel, sel'length));
            din <= '0';
            wait for 10 ns;
            din <= '1';
            wait for 10 ns;
        end loop;
        wait;
    end process;
end sim;
