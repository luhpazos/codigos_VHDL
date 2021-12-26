library IEEE;
use IEEE.std_logic_1164.all;

entity demux_1to4 is
port(
	F:in std_logic;
   s0, s1:in std_logic;
   a, b, c, d:out std_logic
    );
end demux_1to4;

architecture if_a of demux_1to4 is

begin
process(F,s0,s1) is
begin
	if (s0 = '0' and s1 = '0') then
	a <= F;
	elsif (s0 = '0' and s1 = '1') then
	b <= F;
	elsif (s0 = '1' and s1 = '0') then
	c <= F;
	else
	d <= F;
	end if;

end process;  
end if_a;
