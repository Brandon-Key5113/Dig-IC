----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:25:28 03/15/2017 
-- Design Name: 
-- Module Name:    ANDADD - Behavioral 
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

entity ANDADD is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end ANDADD;

architecture Behavioral of ANDADD is

	--Component Declarations
	component AND2 is
		Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           F : out  STD_LOGIC);
	end component;
	
	component FA_1bit is
		Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
	end component;
	
	--Signal Assignments
	signal F : STD_LOGIC;
begin
	AND0 : AND2
		port map(A=>A, B=>B,F=>F);

	
	FA : FA_1bit
		port map(A=>F, B=>D, Cin=>Cin, S=>Sum, Cout=>Cout);



end Behavioral;

