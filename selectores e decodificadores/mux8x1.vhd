library ieee;
use ieee.std_logic_1164.all;

entity mux8x1 is
generic (N : natural := 64);
port( entrada1,entrada2,entrada3,entrada4,entrada5,entrada6,entrada7,entrada8: in std_logic_vector((N-1) downto 0);
		sel: in std_logic_vector(2 downto 0);
		saida: out std_logic_vector((N-1) downto 0)
		);
end mux8x1;

architecture mux of mux8x1 is
begin
saida <= entrada1 when sel = "000" else
	entrada1 when sel = "001" else
	entrada2 when sel = "010" else
	entrada3 when sel = "011" else
	entrada4 when sel = "100" else
	entrada5 when sel = "101" else
	entrada1 when sel = "110" else
	entrada1;

end mux;
