-- created by: yashar zavary rezaie
-- Date: 21 April 2025
-- subject: exercise 3 - full adder
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity full_adder is
port(
	input: in std_logic_vector(1 downto 0); -- xy
	c_in: in std_logic;
	output: out std_logic;
	c_out: out std_logic
);
end full_adder;


architecture add_flow of full_adder is
signal decoder_input: std_logic_vector(2 downto 0);
signal decoder_output: std_logic_vector(7 downto 0);
begin
	-- decoder input set up
	decoder_input <= input & c_in; -- xyc_in
	
	-- decoder
	process(decoder_input)
	begin
		case decoder_input is
			when "000" =>
				decoder_output <= "00000001";
			when "001" =>
				decoder_output <= "00000010";
			when "010" =>
				decoder_output <= "00000100";
			when "011" =>
				decoder_output <= "00001000";
			when "100" =>
				decoder_output <= "00010000";
			when "101" =>
				decoder_output <= "00100000";
			when "110" =>
				decoder_output <= "01000000";
			when "111" =>
				decoder_output <= "10000000";
			when others =>
				decoder_output <= "00000000"; -- just for sure, never happend.
		end case;
	end process;
				
		-- output set
		output <= decoder_output(1) or decoder_output(2) or decoder_output(4) or decoder_output(7);
		c_out <= decoder_output(3) or decoder_output(5) or decoder_output(6) or decoder_output(7);
	
end add_flow;