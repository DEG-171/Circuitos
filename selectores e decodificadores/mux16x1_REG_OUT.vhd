library ieee;
use ieee.std_logic_1164.all;

entity mux16x1_REG_OUT is
generic (N : natural := 32);
port( REG_OUT_1,REG_OUT_2,REG_OUT_3,REG_OUT_4,REG_OUT_5,REG_OUT_6,REG_OUT_7,REG_OUT_8,REG_OUT_9,REG_OUT_10,REG_OUT_11,REG_OUT_12,REG_OUT_13,REG_OUT_14,REG_OUT_15,REG_OUT_16: in std_logic_vector((N-1) downto 0);
		UP_DOWN: in std_logic_vector(3 downto 0);
		REG_OUT: out std_logic_vector((N-1) downto 0)
		);
end mux16x1_REG_OUT;

architecture mux of mux16x1_REG_OUT is
begin
REG_OUT <= REG_OUT_1 when UP_DOWN = "000" else
	REG_OUT_2 when UP_DOWN = "0001" else
	REG_OUT_3 when UP_DOWN = "0010" else
	REG_OUT_4 when UP_DOWN = "0011" else
	REG_OUT_5 when UP_DOWN = "0100" else
	REG_OUT_6 when UP_DOWN = "0101" else
	REG_OUT_7 when UP_DOWN = "0110" else
	REG_OUT_8 when UP_DOWN = "0111" else
	REG_OUT_9 when UP_DOWN = "1000" else
	REG_OUT_10 when UP_DOWN = "1001" else
	REG_OUT_11 when UP_DOWN = "1010" else
	REG_OUT_12 when UP_DOWN = "1011" else
	REG_OUT_13 when UP_DOWN = "1100" else
	REG_OUT_14 when UP_DOWN = "1101" else
	REG_OUT_15 when UP_DOWN = "1110" else
	REG_OUT_16;
end mux;
