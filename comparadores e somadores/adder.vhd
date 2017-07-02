library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity adder is
port( CONT_B: in std_logic_vector(9 downto 0);
		CONT_U: in std_logic_vector(9 downto 0);
		POINT: out std_logic_vector(9 downto 0)
		);
end adder;

architecture sum of adder is
	begin
		POINT <= A + B;
	end sum;
