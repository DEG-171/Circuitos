library ieee;
use ieee.std_logic_1164.all;

entity mux8x1_CLOCK_M is
generic (N : natural := 64);
port( CLK1,CLK2,CLK3,CLK4,CLK5,CLK6,CLK7,CLK8: in std_logic_vector((N-1) downto 0);
		SPEED: in std_logic_vector(2 downto 0);
		CLOCK_M: out std_logic_vector((N-1) downto 0)
		);
end mux8x1_CLOCK_M;

architecture mux of mux8x1_CLOCK_M is
begin
CLOCK_M <= CLK1 when SPEED = "000" else
	CLK1 when SPEED = "001" else
	CLK2 when SPEED = "010" else
	CLK3 when SPEED = "011" else
	CLK4 when SPEED = "100" else
	CLK5 when SPEED = "101" else
	CLK1 when SPEED = "110" else
	CLK1;

end mux;
