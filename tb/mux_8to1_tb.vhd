library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity mux_8to1_tb is
end entity;

architecture sim of mux_8to1_tb is

    component mux_8to1
        port (
            din : in std_logic_vector(7 downto 0);
            sel : in std_logic_vector(2 downto 0);
            dout : out std_logic
        );
    end component mux_8to1;

    signal din : std_logic_vector(7 downto 0);
    signal sel : std_logic_vector(2 downto 0);
    signal dout : std_logic;

begin
    u1 : mux_8to1 port map (din => din, sel => sel, dout => dout);

    process
        variable temp : std_logic_vector(7 downto 0);
    begin
        for bit_pos in 0 to 7 loop
            temp := (others => '0');
            temp(bit_pos) := '1';
            din <= temp;
            
            for sel_val in 0 to 7 loop
                sel <= std_logic_vector(to_unsigned(sel_val,3));
                wait for 10 ns;
            end loop;
        end loop;

        din <= "10101010";
        for i in 0 to 7 loop
            sel <= std_logic_vector(to_unsigned(i,3));
            wait for 10 ns;
        end loop;

        din <= "01010101";
        for i in 0 to 7 loop
            sel <= std_logic_vector(to_unsigned(i,3));
            wait for 10 ns;
        end loop;

        wait;
    end process;
end sim;
