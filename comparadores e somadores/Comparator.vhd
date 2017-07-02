library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Comparator is
generic (N : natural := 64);
port( 
		CNT_X, B: in std_logic_vector((N-1) downto 0);
		resul: out std_logic
		);
end Comparator;

architecture comp of Comparator is
	begin
		if CNT_X = B then
			resul = '1';
		else
			resul = '0';
		end if;
end comp;
