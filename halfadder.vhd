library IEEE;
use IEEE.std_logic_1164.all;

entity halfadder is
port(
	A:in std_logic;
    B:in std_logic;
    S:out std_logic;
    cout:out std_logic
    );
end halfadder;

architecture hardware of halfadder is
begin
	S <= A xor B;
	cout <= A and B;
end hardware;