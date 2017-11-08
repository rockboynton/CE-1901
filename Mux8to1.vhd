--Rock Boynton
--Date: 10/30/17
--Course: CE 1901-021
--Professor: Dr. Livingston
--Purpose: This is a 2 to 1 mux only single bit input/output

library IEEE;
use IEEE.std_logic_1164.all;

--Inputs:  I0 bit
--         B0 bit
--         S-select bit
--Outputs: Y output
entity Mux8to1 is 
	port(I: in std_logic_vector(7 downto 0);
		  S: in std_logic_vector(2 downto 0);
		  Y: out std_logic
		  );
		  
end entity Mux8to1;

--with/select expression for multiplexar function
architecture DATAFLOW of Mux8to1 is 
begin

	with S select 
		Y <= I(0) when "000",
			  I(1) when "001",
			  I(2) when "010",
			  I(3) when "011",
			  I(4) when "100",
			  I(5) when "101",
			  I(6) when "110",
			  I(7) when "111";
	
end architecture DATAFLOW;