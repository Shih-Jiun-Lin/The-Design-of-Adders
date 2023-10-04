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
	signal sum0, sum1, carry0, carry1: std_logic;
	
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
				s => sum0,
				c => carry0
			);
		
	half_adder2: half_adder
		port map(
			x => sum0,
			y => ci,
			s => sum1,
			c => carry1
		
		);
	sum <= sum1;
	co <= carry0 or carry1 ;
end behavioral;
	 
