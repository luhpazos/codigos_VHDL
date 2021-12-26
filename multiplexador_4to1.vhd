library IEEE;
use IEEE.std_logic_1164.all;

entity mux_4to1 is
port(
	a, b, c, d:in std_logic;
   s0, s1:in std_logic;
   z:out std_logic
    );
end mux_4to1;

architecture a of mux_4to1 is
signal sel: std_logic_vector(1 downto 0);
begin

sel <= s0 & s1;

with sel select
z <= a when "00",
	  b when "01",
	  c when "10",
	  d when others;
	  
end a;
