----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:56:40 03/15/2017 
-- Design Name: 
-- Module Name:    Multiplier - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Multiplier is
	 generic( N : integer :=16);
    Port ( A : in  STD_LOGIC_VECTOR ((N/2)-1 downto 0);
           B : in  STD_LOGIC_VECTOR ((N/2)-1 downto 0);
           Product : out  STD_LOGIC_VECTOR (N-1 downto 0));
end Multiplier;

architecture Behavioral of Multiplier is
	--COMPONENT DECLARATIONS
	component ANDADD is
		Port (  A : in  STD_LOGIC;
				  B : in  STD_LOGIC;
				  D : in  STD_LOGIC;
				  Cin : in  STD_LOGIC;
				  Sum : out  STD_LOGIC;
				  Cout : out  STD_LOGIC);
	end component;
	
	component AND2 is
		Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           F : out  STD_LOGIC);
	end component;
	--SIGNAL DECLARATIONS
	signal Cin : STD_LOGIC :='0';
	signal Cout: STD_LOGIC :='0';
	signal F : STD_LOGIC_VECTOR(N*N downto 0);--interconnections within multiplier between adders and AND gates
	signal CoutArray : STD_LOGIC_VECTOR(N*N downto 0);--Signals used by the Cout between the 1 bit full adders
begin

	
		forrow : for i in integer range 0 to (N/2)-1 generate --Loop down the levels
			if0 : if i = 0 generate --top level, just AND gates
				AND0GEN : for j in integer range 0 to (N/2)-1 generate
					AND0 : AND2
						port map(A=>A(i), B=>B(j), F=>F(j));
					end generate AND0GEN;
				Product(0)<=F(0);--Assign first product
			end generate if0;
			ifn0: if i>0 generate--everything else
				forcol : for j in integer range 0 to (N/2)-1 generate
				
					--Generate the first full adder / and gate combo of the row
					GEN0 : if j = 0 generate
						ANDADD0 : ANDADD
							port map(A=>A(i), B=>B(j),D=>F((N/2)*(i-1)+(j+1)),Cin=>Cin,Cout=>CoutArray((N/2)*i+j), Sum=>F((N/2)*i+j));--Tons of 2D arrays as 1D arrays
							--D=>The sum of the full adder in the previous row and next column (i-1) (j+1).
							--Cout=>Corresponding coordinate in CoutArray for this full adder [i,j].
							--Sum=> Corresponding coordinate in F array for this full adder [i,j].
							
						--Assign the sum of the first adder of the row to its respective product bit
						Product(i)<=F((N/2)*i+j);
					end generate GEN0;
					
					--Last full adder of the first row, D has to be 0
					GEN1N : if i=1 AND j=((N/2)-1) generate
						ANDADD1N : ANDADD
							port map(A=>A(i),B=>B(j),D=>Cin,Cin=>CoutArray((N/2)*i+(j-1)),Cout=>CoutArray((N/2)*i+j),Sum=>F((N/2)*i+j));
								--D=>Cin, which is equal to 0
								--Cin=>Cout of previous full adder in same row (j-1)
								--Cout=>Corresponding coordinate in CoutArray for this full adder [i,j].
								--Sum=> Corresponding coordinate in F array for this full adder [i,j].
					end generate GEN1N;
					
				
					--Generate the last full adder / and gate combo of the row
					GENN : if i/=1 AND j= ((N/2)-1) generate
						ANDADDN : ANDADD
							port map(A=>A(i),B=>B(j),D=>CoutArray((N/2)*(i-1)+j),Cin=>CoutArray((N/2)*i+(j-1)),Cout=>CoutArray((N/2)*i+j),Sum=>F((N/2)*i+j));--Map the last full adder in line
								--D=>The Cout of the last full adder of the previous row (i-1)
								--Cin=>Cout of previous full adder in same row (j-1)
								--Cout=>Corresponding coordinate in CoutArray for this full adder [i,j].
								--Sum=> Corresponding coordinate in F array for this full adder [i,j].
								
						--Assign Sum and Cout to Product of the last row's last full adder
						GENNI : if i=(N/2)-1 generate
							Product(N-1)<=CoutArray((N/2)*i+j);--Product bit from Cout
							Product(i+j)<=F((N/2)*i+j);--Product bit from Sum
						end generate GENNI;
					end generate GENN;
					
					
					--Generate all the other full adders / AND gate combos
					GENX : if j/=((N/2)-1) AND j>0 generate
						ANDADDX : ANDADD
							port map(A=>A(i), B=>B(j), D=>F((N/2)*(i-1)+(j+1)), Cin=>CoutArray((N/2)*i+(j-1)), Cout=>CoutArray((N/2)*i+j),Sum=>F((N/2)*i+j));
								--D=>The Cout of the last full adder of the previous row (i-1)
								--Cin=>Cout of previous full adder in same row (j-1)
								--Cout=>Corresponding coordinate in CoutArray for this full adder [i,j].
								--Sum=> Corresponding coordinate in F array for this full adder [i,j].
								
						--Assign Product bits the sum bits of the last row of full adders
						GENXI : if i=((N/2)-1) generate
							Product(i+j)<=F((N/2)*i+j);--Assign the sum to the respective product bit
						end generate GENXI;
							
					end generate GENX;
						
						
				end generate forcol;
			end generate ifn0;
		end generate forrow;


end Behavioral;
















