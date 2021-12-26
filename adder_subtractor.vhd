library IEEE;
use IEEE.std_logic_1164.all;

entity adder_subtractor is
port(
	a, b :in std_logic_vector(3 downto 0);
	cin : in std_logic;
   s :out std_logic_vector(3 downto 0);
   cout:out std_logic
    );
end adder_subtractor;

architecture hardware of adder_subtractor is

component completeadder is
	port(
		a, b, cin: in std_logic;
		s, cout : out std_logic
	);
end component;
	
	signal carry : std_logic_vector(3 downto 0);
	
begin
	
	l0: completeadder port map((b(0) xor cin), a(0), cin, s(0), carry(0));
	
	l1: completeadder port map((b(1) xor cin), a(1), carry(0), s(1), carry(1));
	
	l2: completeadder port map((b(2) xor cin), a(2), carry(1), s(2), carry(2));
	
	l3: completeadder port map((b(3) xor cin), a(3), carry(2), s(3), carry(3));
	
	cout <= carry(2) xor carry(3);

end hardware;