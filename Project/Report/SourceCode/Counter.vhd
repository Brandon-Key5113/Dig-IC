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

entity Counter is
	 generic( N : integer := 32);
    Port ( clk : in STD_LOGIC;
           TestEN : in STD_LOGIC;
           reset : in STD_LOGIC;
           Count : out  STD_LOGIC_VECTOR (N-1 downto 0));
end Counter;

architecture Behavioral of Counter is
	--COMPONENT DECLARATIONS

    
    component  nBitAdder  is
        generic (n : integer  := 32);
        port(
            A,B : in  std_logic_vector(N-1  downto  0);
            Y   : out std_logic_vector(N-1  downto  0);
            CB  : out std_logic
            );
    end  component;

    component nBitRegister_32 is
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
    signal RegOut, RegIn : STD_LOGIC_VECTOR(N-1 downto 0);
    signal cout : STD_LOGIC;
    
begin

    --16 bit adder, always adds 1 to value in register
    ADDER0 : nBitAdder
        generic map(N => 32)
        port map(A => RegOut, B => "00000000000000000000000000000001", Y => RegIn, CB => cout);
    
    --Holds the current counter value
    REG0 : nBitRegister_32
        generic map(N => 32)
        port map(nBitIn => RegIn, clk => clk, WE => TestEN, Reset => reset, Y => RegOut);

    --Map output
    Count <= RegOut;

end Behavioral;
















