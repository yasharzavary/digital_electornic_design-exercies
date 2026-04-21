-- created by: yashar zavary rezaie
-- Date: 21 April
-- subject: exercise 3 - circuit design
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity comb_circuit is 
port(
	A, B, C, D: in std_logic;
	
	Z: out std_logic
);
end comb_circuit;

architecture comb_flow of comb_circuit is
signal E, F: std_logic;
begin
	E <= D or (A and B and C);
	F <= A nand (B nor C);
	z <= E xor not F;

end comb_flow;
