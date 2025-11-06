library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux_4to1 is
	port(
		din : in std_logic_vector(3 downto 0);
		sel : in std_logic_vector(1 downto 0);
		dout : out std_logic
	);
end mux_4to1;

architecture structural of mux_4to1 is

	component mux_2to1
		port (
			din : in std_logic_vector(1 downto 0); 
            sel : in std_logic;
			dout : out std_logic
		);
	end component;

	signal mux1_out, mux2_out : std_logic;

begin
	MUX1: mux_2to1 port map (
		din => din(1 downto 0),
		sel => sel(0),
		dout => mux1_out
	);

	MUX2: mux_2to1 port map (
		din => din(3 downto 2),
		sel => sel(0),
		dout => mux2_out
	);

	MUX3: mux_2to1 port map (
		din(0) => mux1_out,
		din(1) => mux2_out,
		sel => sel(1),
		dout => dout
	);
end structural;

		

		

