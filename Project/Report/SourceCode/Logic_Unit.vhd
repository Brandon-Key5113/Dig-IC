----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:51:09 03/02/2017 
-- Design Name: 
-- Module Name:    Logic_Unit - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Logic_Unit is
	 generic( N : integer :=16);
    Port ( A : in  STD_LOGIC_VECTOR (N-1 downto 0);
           B : in  STD_LOGIC_VECTOR (N-1 downto 0);
           Control : in  STD_LOGIC_VECTOR (3 downto 0);
           output : out  STD_LOGIC_VECTOR (N-1 downto 0));
end Logic_Unit;
--Control:
--1000 : or
--1001 : not
--1010 : AND
--1011 : XOR
architecture Behavioral of Logic_Unit is

begin
	proc1 : process(control, A, B) 
		begin
		--Depending on control, will do specific commands
		if control ="1000" then --bitwise OR
			F0 : for i in 0 to N-1 loop
				output(i)<=A(i) OR B(i);
			end loop;
		
		elsif control ="1001" then --bitwise NOT
			F1 : for i in 0 to N-1 loop
				output(i)<= NOT A(i);
			end loop;
		
		elsif control = "1010" then --bitwise AND
			F2 : for i in 0 to N-1 loop
				output(i)<= A(i) AND B(i);
			end loop;
		
		elsif control = "1011" then --bitwise XOR
			F3 : for i in 0 to N-1 loop
				output(i)<= A(i) XOR B(i);
			end loop;
		end if;
	end process;


end Behavioral;

