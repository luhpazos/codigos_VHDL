library IEEE;
use IEEE.std_logic_1164.all;

entity multi is
port
(
	a, b :in std_logic_vector(2 downto 0);
   s :out std_logic_vector(5 downto 0)
);
	 
end multi;

architecture h of multi is

component halfadder is
	port(
		a, b : in std_logic;
		s, cout : out std_logic
	);
end component;

component completeadder is
	port(
		a, b, cin: in std_logic;
		s, cout : out std_logic
	);
end component;
	
	signal carry : std_logic_vector(5 downto 0);
	signal p : std_logic_vector(1 downto 0);
	
begin
		
	l0: halfadder port map( (a(0) and b(1)), (a(1) and b(0)), s(1), carry(0));
	
	l1: completeadder port map( (a(1) and b(1)), (a(2) and b(0)), carry(0), p(0), carry(1));
	
	l2: halfadder port map( (a(2) and b(1)), carry(1), p(1), carry(3));
	
	l3: halfadder port map( (a(0) and b(2)), p(0) , s(2), carry(2));
	
	l4: completeadder port map( (a(2) and b(1)), (a(1) and b(2)), carry(1), s(3), carry(4));
	
	l5: halfadder port map( (a(2) and b(2)), carry(2), s(4), carry(5));
	
	s(0) <= a(0) and b(0);
	
	s(5)<= carry(5);
	
end h;