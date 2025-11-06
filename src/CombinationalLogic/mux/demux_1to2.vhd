library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity demux_1to2 is
    port (
        din : in std_logic;
        sel : in std_logic;
        dout : out std_logic_vector(1 downto 0)
    );
end entity demux_1to2;

architecture behavioral of demux_1to2 is 
begin
    dout(0) <= din when sel = '0' else '0';
    dout(1) <= din when sel = '1' else '0';
end architecture behavioral;
    
