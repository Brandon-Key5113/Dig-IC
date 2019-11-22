----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:15:01 03/02/2017 
-- Design Name: 
-- Module Name:    Shifter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.MATH_REAL.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Shifter is
	 generic( N : integer:=16; Namnt : integer :=integer(ceil(log2(real(16)))));
	 
    Port ( A : in  STD_LOGIC_VECTOR (N-1 downto 0);
           amnt : in  STD_LOGIC_VECTOR (Namnt-1 downto 0);
           Control : in  STD_LOGIC_VECTOR (3 downto 0);
           output : out  STD_LOGIC_VECTOR (N-1 downto 0));
end Shifter;


--1100 LSL
--1101 LSR
--1110 ASR
architecture Behavioral of Shifter is
	signal temp : integer;
begin
	proc1 : process(Control,amnt,A) 
	begin
		if control ="1101" then--LSR
			for i in integer range 0 to N-1 loop
				temp<=to_integer(unsigned(amnt));--convert amnt to unsigned integer for indexing
				if i+temp > N-1 then--bits at leftmost
					output(i)<='0';
				else 
					output(i)<=A(i+temp);--right Shift
				end if;
			end loop;
			
		elsif control ="1100" then --LSL
			for i in integer range 0 to N-1 loop
				temp<=to_integer(unsigned(amnt));--convert amnt to unsigned integer for indexing
				if i-temp < 0 then --rightmost bits
					output(i)<='0';
				else
					output(i)<=A(i-temp);--left shift
				end if;
			end loop;
		else --ASR
			for i in integer range 0 to N-1 loop
				temp<=to_integer(unsigned(amnt));--convert amnt to unsigned integer for indexing
				if A(N-1)='1' then--negative
					if i+temp > N-1 then--leftmost bits
						output(i)<='1';--preserve the negative sign
					else
						output(i)<=A(i+temp);-- Right Shift
					end if;
				else--Positive
					if i+temp > N-1 then --leftmost bits
						output(i)<='0';
					else
						output(i)<=A(i+temp);--right shift
					end if;
				end if;
			end loop;
		end if;
	end process;
end Behavioral;






















