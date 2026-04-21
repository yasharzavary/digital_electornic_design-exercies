-- created by: yashar zavary rezaie
-- Date: 21 April 2025
-- subject: exercise 3 - full adder test file
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fulladder_testbench is
end fulladder_testbench;


architecture test_flow of fulladder_testbench is
component full_adder is
port(
	input: in std_logic_vector(1 downto 0);
	c_in: in std_logic;
	output: out std_logic;
	c_out: out std_logic
);
end component;

signal FAinput: std_logic_vector(1 downto 0);
signal FAc_in: std_logic;
signal FAoutput: std_logic;
signal FAc_out: std_logic;

begin

uut: full_adder
port map(FAinput, FAc_in, FAoutput, FAc_out);


simulate: process
begin
	-- output: 1 , c_out: 1
	FAinput <= "11";
	FAc_in <= '1';
	wait for 10 ns;
	
	-- output: 0 , c_out: 1
	FAinput <= "10";
	FAc_in <= '1';
	wait for 10 ns;
	
	-- output: 1, c_out: 0
	FAinput <= "10";
	FAc_in <= '0';
	wait for 10 ns;
end process;

end test_flow;



