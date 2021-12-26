library IEEE;
use IEEE.std_logic_1164.all;

entity adder4b is
port(
	a, b :in std_logic_vector(3 downto 0);
   s :out std_logic_vector(3 downto 0);
   cout:out std_logic
    );
end adder4b;

architecture hardware of adder4b is

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
	
	signal carry : std_logic_vector(3 downto 0);
	
begin
	
	l0: halfadder port map(a(0), b(0), s(0), carry(0));
	
	l1: completeadder port map(a(1), b(1), carry(0), s(1), carry(1));
	
	l2: completeadder port map(a(2), b(2), carry(1), s(2), carry(2));
	
	l3: completeadder port map(a(3), b(3), carry(2), s(3), carry(3));
	
	cout <= carry(3);

end hardware;