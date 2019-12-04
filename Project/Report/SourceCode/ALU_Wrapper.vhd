----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:41:10 03/18/2017 
-- Design Name: 
-- Module Name:    ALU_Wrapper - Behavioral 
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

entity ALU_Wrapper is
    Port ( input1 : in  STD_LOGIC_VECTOR (15 downto 0);
           input2 : in  STD_LOGIC_VECTOR (15 downto 0);
           control : in  STD_LOGIC_VECTOR (3 downto 0);
           output : out  STD_LOGIC_VECTOR (15 downto 0));
end ALU_Wrapper;

architecture Behavioral of ALU_Wrapper is
--Component Declarations
	component Multiplier is
		generic( N : integer :=16);
		Port ( A : in  STD_LOGIC_VECTOR ((N/2)-1 downto 0);
				 B : in  STD_LOGIC_VECTOR ((N/2)-1 downto 0);
			    Product : out  STD_LOGIC_VECTOR (N-1 downto 0));
	end component;
	
	component Logic_Unit is
		generic( N : integer :=16);
		Port ( A : in  STD_LOGIC_VECTOR (N-1 downto 0);
				  B : in  STD_LOGIC_VECTOR (N-1 downto 0);
				  Control : in  STD_LOGIC_VECTOR (3 downto 0);
				  output : out  STD_LOGIC_VECTOR (N-1 downto 0));		
	end component;
	
	component Shifter is
		generic( N : integer:=16; Namnt : integer :=integer(ceil(log2(real(16)))));
	 
		Port ( A : in  STD_LOGIC_VECTOR (N-1 downto 0);
			  amnt : in  STD_LOGIC_VECTOR (Namnt-1 downto 0);
			  Control : in  STD_LOGIC_VECTOR (3 downto 0);
			  output : out  STD_LOGIC_VECTOR (N-1 downto 0));
	end component;
	
	component Ripple_Carry_FA is
		generic(N : integer :=16);--Number of bits in A and B
		Port ( A : in  STD_LOGIC_VECTOR (N-1 downto 0);
				 B : in  STD_LOGIC_VECTOR (N-1 downto 0);
			  	 Cin : in STD_LOGIC;
				 Sum : out  STD_LOGIC_VECTOR (N-1 downto 0);
				 Cout : out  STD_LOGIC);
	end component;
	
	component Subtractor is
		generic(N : integer :=16);
		Port (  A : in  STD_LOGIC_VECTOR (15 downto 0);
			     B : in  STD_LOGIC_VECTOR (15 downto 0);
			     Output : out  STD_LOGIC_VECTOR (15 downto 0));
	end component;

--Signal Declarations

	signal Product, Sum, ShiftOut, LogicOut, Difference : STD_LOGIC_VECTOR(15 downto 0);
	signal Cout : STD_LOGIC;
begin
	--map multiplier
	MULT : Multiplier
		generic map(N=>16)
		port map(A=>input1(7 downto 0), B=>input2(7 downto 0), Product=>Product);
	
	--Map Logic Unit
	LOGIC : Logic_Unit
		generic map(N=>16)
		port map( A=>input1, B=>input2,Control=>Control,output=>LogicOut);
	
	--Map Shifter
	SHIFT : Shifter
		generic map(N=>16, Namnt=>4)
		port map(A=>input1, amnt=>input2(3 downto 0), Control=>Control, output=>ShiftOut);
		
	--Map Adder
	ADD : Ripple_Carry_FA
		generic map(N=>16)
		port map(A=>input1, B=>input2, Cin=>'0', Cout=>Cout, Sum=>Sum);
		
	--Map Subtractor
	SUB : Subtractor
		generic map(N=>16)
		port map(A=>input1, B=>input2, Output=>Difference);
		
	--End mapping
	------------------------------------------
	
	ALU_PROC : process(input1, input2, control) begin
		C1: case control is
			when "0100"=> output<=Sum;--ADD
			when "0101"=> output<=Difference;--SUB
			when "0110"=> output<=Product;--MUL
			when "1100"=> output<=ShiftOut;--SLL
			when "1101"=> output<=ShiftOut;--SRL
			when "1110"=> output<=ShiftOut;--SRA
			when others=> output<=LogicOut;--OR,NOT,AND,XOR
		end case C1;
	end process;
end Behavioral;












