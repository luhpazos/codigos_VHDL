library IEEE;
use IEEE.std_logic_1164.all;

entity paridadeimpar is
port(
	a, b, c:in std_logic;
   s :out std_logic_vector(2 downto 0);
   p :out std_logic
    );
end paridadeimpar;

architecture h of paridadeimpar is
	
	signal m : std_logic;
	
begin
	m <= a xnor b;
	p <= m xnor c;
	s(0) <= a;
	s(1) <= b;
	s(2) <= c;

end h;
