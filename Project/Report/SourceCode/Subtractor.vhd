----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:15:15 03/19/2017 
-- Design Name: 
-- Module Name:    Subtractor - Behavioral 
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

entity Subtractor is
	 generic(N : integer :=16);
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           Output : out  STD_LOGIC_VECTOR (15 downto 0));
end Subtractor;

architecture Behavioral of Subtractor is
--Component Declarations
	--Adder, to add 1
	component Ripple_Carry_FA is
		generic(N : integer :=16);--Number of bits in A and B
		 Port ( A : in  STD_LOGIC_VECTOR (N-1 downto 0);
				  B : in  STD_LOGIC_VECTOR (N-1 downto 0);
				  Cin : in STD_LOGIC;
				  Sum : out  STD_LOGIC_VECTOR (N-1 downto 0);
				  Cout : out  STD_LOGIC);
	end component;
	
	--Logic, for bitwise not
	component Logic_Unit is
		generic( N : integer :=16);
		Port ( A : in  STD_LOGIC_VECTOR (N-1 downto 0);
			    B : in  STD_LOGIC_VECTOR (N-1 downto 0);
			    Control : in  STD_LOGIC_VECTOR (3 downto 0);
			    output : out  STD_LOGIC_VECTOR (N-1 downto 0));
	end component;
	
--Signal declarations
signal logicOut, negative : STD_LOGIC_VECTOR(N-1 downto 0);
signal logicControl : STD_LOGIC_VECTOR(3 downto 0):="1001";--Set to bitwise NOT
signal one : STD_LOGIC_VECTOR(N-1 downto 0) := "0000000000000001";
signal Cout : STD_LOGIC;--Not used

begin
--Convert Input 2 to a negative number
	--Bitwise not input2
	LOGIC : Logic_Unit
		generic map(N=>N)
		port map(A=>B, B=>A, Control=>logicControl, output=>logicOut);--A=>B because it does bitwise NOT only on A
		
	--Add 1
	ADD1 : Ripple_Carry_FA
		generic map(N=>N)
		port map(A=>logicOut, B=>one, Cin=>'0', Sum=>negative, Cout=>Cout);
	
	--Add the positive A with the newly created negative B
	ADD2 : Ripple_Carry_FA
		generic map(N=>N)
		port map(A=>A, B=>negative, Cin=>'0', Sum=>Output, Cout=>Cout);
	--output now has the result of A-B

end Behavioral;

