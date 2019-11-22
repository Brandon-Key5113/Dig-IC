----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:27:52 03/02/2017 
-- Design Name: 
-- Module Name:    Ripple_Carry_FA - Behavioral 
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

entity Ripple_Carry_FA is
	 generic(N : integer :=16);--Number of bits in A and B
    Port ( A : in  STD_LOGIC_VECTOR (N-1 downto 0);
           B : in  STD_LOGIC_VECTOR (N-1 downto 0);
			  Cin : in STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (N-1 downto 0);
           Cout : out  STD_LOGIC);
end Ripple_Carry_FA;

architecture Behavioral of Ripple_Carry_FA is
	--Interim signal used for carry ins and outs of the 1 bit full adders
	--The MSB of C is carry out
	signal C : std_logic_vector(N downto 1);
	
	component FA_1bit is
		Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
	end component;
	
begin
	
	GEN_ADD : for i in N-1 downto 0 generate
		--Generate the first full adder, which is special because it takes Cin
		FA0_GEN : if(i=0) generate
			FA0: FA_1bit
				port map(A=>A(i),B=>B(i), Cin=>Cin, Cout=>C(1),S=>Sum(i));
		end generate FA0_GEN;
		
		--Generate the other adders, the last bit of C is carry out
		FAX_GEN : if(i>0) generate
			FAN : FA_1bit
				port map(A=>A(i), B=>B(i), Cin=>C(i), Cout=>C(i+1), S=>Sum(i));
		end generate FAX_GEN;
				
		
	end generate GEN_ADD;

end Behavioral;

