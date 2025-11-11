library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity demux_1to4 is
    port (
        din : in std_logic;
        dout : out std_logic_vector(3 downto 0);
        sel : in std_logic_vector(1 downto 0)
    );
end entity demux_1to4;

architecture structual of demux_1to4 is
    component demux_1to2
        port (
            din : in std_logic;
            sel : in std_logic;
            dout : out std_logic_vector(1 downto 0)
        );
    end component demux_1to2;

    signal demux1_out : std_logic_vector(1 downto 0);
begin
    DEMUX1: demux_1to2 port map (
        din => din,
        sel => sel(0),
        dout => demux1_out
    );

    DEMUX2: demux_1to2 port map (
        din => demux1_out(0),
        sel => sel(1),
        dout(0) => dout(0),
        dout(1) => dout(2)
    );

    DEMUX3: demux_1to2 port map (
        din => demux1_out(1),
        sel => sel(1),
        dout(0) => dout(1),
        dout(1) => dout(3)
    );

end structual;
