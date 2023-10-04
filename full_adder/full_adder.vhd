library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
	port
	(
		a: in std_logic;
		b: in std_logic;
		ci: in std_logic;
		sum: out std_logic;
		co: out std_logic		
	);
end entity;

architecture behavioral of full_adder is
	signal sum1, sum2, carry1, carry2: std_logic;
	
	component half_adder is
		port 
		(
			x: in std_logic; 
			y: in std_logic;
			s: out std_logic;
			c: out std_logic
	);
	end component;
	
begin
	half_adder1: half_adder
		port map (
				x => a,
				y => b,
				s => sum1,
				c => carry1
			);
		
	half_adder2: half_adder
		port map(
			x => sum1,
			y => ci,
			s => sum2,
			c => carry2
		
		);
	sum <= sum2;
	co <= carry1 or carry2 ;
end behavioral;
	 
