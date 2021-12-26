library IEEE;
use IEEE.std_logic_1164.all;

entity codificador_hamming is
port(
	D :in std_logic_vector(3 downto 0);
   Do :out std_logic_vector(6 downto 0)
	);
end codificador_hamming;

architecture h of codificador_hamming is

begin
	
	Do(0) <= D(0) xor D(1) xor D(3);
	Do(1) <= D(0) xor D(2) xor D(3);
	Do(2) <= D(0);
	Do(3) <= D(1) xor D(2) xor D(3);
	Do(4) <= D(1);
	Do(5) <= D(2);
	Do(6) <= D(3);
	

end h;
