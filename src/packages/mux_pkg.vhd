library IEEE;
use IEEE.STD_LOGIC_1164.all;

package mux_pkg is
    component mux_2to1 is
        port (
            din : in std_logic_vector(1 downto 0); 
            sel : in std_logic;
            dout : out std_logic
        );
    end component mux_2to1;

    component mux_4to1 is
        port (
            din : in std_logic_vector(3 downto 0);
            sel : in std_logic_vector(1 downto 0);
            dout : out std_logic
        );
    end component mux_4to1;

    component mux_8to1 is
        port (
            din : in std_logic_vector(7 downto 0);
            sel : in std_logic_vector (2 downto 0);
            dout : out std_logic
        );
    end component mux_8to1;

    component demux_1to2 is
        port (
            din : in std_logic;
            sel : in std_logic;
            dout : out std_logic_vector(1 downto 0)
        );
    end component demux_1to2;

end package mux_pkg;
