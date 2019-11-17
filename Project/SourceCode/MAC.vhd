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

entity MAC is
	 generic( N : integer := 32);
    Port ( A : in  STD_LOGIC_VECTOR ((N/2) - 1  downto 0);
           B : in  STD_LOGIC_VECTOR ((N/2) - 1 downto 0);
           clk : in STD_LOGIC;
           WE : in STD_LOGIC;
           reset : in STD_LOGIC;
           RegOut : out  STD_LOGIC_VECTOR (N-1 downto 0));
end MAC;

architecture Behavioral of MAC is
	--COMPONENT DECLARATIONS
    component Multiplier is
        generic( N : integer := 32);
        Port (  A : in  STD_LOGIC_VECTOR ((N/2)-1 downto 0);
                B : in  STD_LOGIC_VECTOR ((N/2)-1 downto 0);
                Product : out  STD_LOGIC_VECTOR (N-1 downto 0));
    end component;
    
    component  nBitAdder  is
        generic (n : integer  := 32);
        port(
            A,B : in  std_logic_vector(N-1  downto  0);
            Y   : out std_logic_vector(N-1  downto  0);
            CB  : out std_logic
            );
    end  component;

    component nBitRegister is
        generic (n : integer  := 32);
        Port (
            nBitIn : in std_logic_vector(n-1 downto 0); -- n bits to store in the register
            WE     : in std_logic; -- Active high write enable
            Reset  : in std_logic; -- Async reset, disabled when low
            clk    : in std_logic;
            Y : out std_logic_vector(n-1 downto 0) -- 1 output , n bits wide
        );
    end component;

	--SIGNAL DECLARATIONS
    signal MultA,MultB : STD_LOGIC_VECTOR((N/2)-1 downto 0);
    signal Product : STD_LOGIC_VECTOR(N-1 downto 0);
    signal adderA, adderB, adderOut : STD_LOGIC_VECTOR(N-1 downto 0);
    signal cout : STD_LOGIC;
    
begin

    RegMultInA : nBitRegister
        generic map( N => 16)
        port map(nBitIn => A,
            WE => WE, clk => clk, Reset => reset, 
            Y => MultA
        );
		  
	 RegMultInB : nBitRegister
	  generic map( N => 16)
	  port map(nBitIn => B,
			WE => WE, clk => clk, Reset => reset, 
			Y=> MultB
	  );
	
    MULT1 : Multiplier
        generic map( N => 32)
        port map(A => MultA, B => MultB, Product => Product);

    RegMultOut : nBitRegister
        generic map( N => 32)
        port map(nBitIn => Product, WE => WE, Reset => reset, clk => clk, Y => adderB);

    RegAddOut : nBitRegister
        generic map( N => 32)
        port map(nBitIn => adderOut, WE => WE, Reset => reset, clk => clk, Y => adderA);

    ADD1 : nBitAdder
        generic map ( N => 32)
        port map( A => adderA, B => adderB, Y => adderOut, CB => cout);
		  
	RegOut <= adderA;
end Behavioral;
















