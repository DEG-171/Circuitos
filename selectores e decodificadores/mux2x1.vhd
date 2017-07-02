library ieee;
use ieee.std_logic_1164.all;

entity mux2x1 is
generic (N : natural := 64);
port( entrada1,entrada2: in std_logic_vector((N-1) downto 0);
		sel: in std_logic;
		saida: out std_logic_vector((N-1) downto 0)
		);
end mux2x1;

architecture mux of mux2x1 is
begin
saida <= entrada1 when sel = '0'  else
	entrada2;
end mux;
