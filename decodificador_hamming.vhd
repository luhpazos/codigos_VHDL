library IEEE;
use IEEE.std_logic_1164.all;

entity decodificador_hamming is
port(
	D :in std_logic_vector(6 downto 0);
   S :out std_logic_vector(3 downto 0)
	);
end decodificador_hamming;

architecture h of decodificador_hamming is

signal p, pnovas, comp: std_logic_vector(2 downto 0);

begin

-- Paridades recebidas
p(0) <= D(0);
p(1) <= D(1);
p(2) <= D(3);

-- calculando novamente os valores de paridades
pnovas(0) <= D(2) xor D(4) xor D(6);
pnovas(1) <= D(2) xor D(5) xor D(6);
pnovas(2) <= D(4) xor D(5) xor D(6);

-- comparando as paridades

comp(0) <= p(0) xor pnovas(0);
comp(1) <= p(1) xor pnovas(1);
comp(2) <= p(2) xor pnovas(2);

	
	S(0) <= D(2) xor (comp(0) and comp(1) and not comp(2));
	S(1) <= D(4) xor (comp(0) and not comp(1) and comp(2));
	S(2) <= D(5) xor (not comp(0) and comp(1) and comp(2));
	S(3) <= D(6) xor (comp(0) and comp(1) and comp(2));


end h;
