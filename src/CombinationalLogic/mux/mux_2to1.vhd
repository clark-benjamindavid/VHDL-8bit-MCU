library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux_2to1 is
    port (
        din : in std_logic_vector(1 downto 0); 
        sel : in std_logic;
        dout : out std_logic
    );
end mux_2to1;

architecture behaviour of mux_2to1 is
begin
    dout <= (din(0) and (not sel)) or (din(1) and sel); 
end behaviour;
