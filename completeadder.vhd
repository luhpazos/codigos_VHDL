library IEEE;
use IEEE.std_logic_1164.all;

entity completeadder is
port(
	A:in std_logic;
    B:in std_logic;
	 cin: in std_logic;
    S:out std_logic;
    cout:out std_logic
    );
end completeadder;

architecture hardware of completeadder is
begin
	S <= A xor B xor cin;
	cout <= (A and B) or (A and cin) or (B and cin);
end hardware;