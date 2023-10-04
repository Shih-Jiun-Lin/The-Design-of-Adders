library ieee;
use ieee.std_logic_1164.all;

entity half_adder is
	port
	(
		x: in std_logic;
		y: in std_logic;
		s: out std_logic;
		c: out std_logic
	);
END half_adder;

ARCHITECTURE behavioral of half_adder is
begin 
c <= x xor y;
s <= x and y;
end behavioral;