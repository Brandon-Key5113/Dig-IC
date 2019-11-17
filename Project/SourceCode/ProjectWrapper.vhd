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

entity ProjectWrapper is
    generic( N : integer := 32);
    Port ( A : in  STD_LOGIC_VECTOR ((N/2) - 1  downto 0);
        B : in  STD_LOGIC_VECTOR ((N/2) - 1 downto 0);
        clk : in STD_LOGIC;
        WE : in STD_LOGIC;
        reset : in STD_LOGIC;
        TestEN : in STD_LOGIC;
        RegOut : out  STD_LOGIC_VECTOR (N-1 downto 0);
        MISR_out : out std_logic_vector(N-1 downto 0)
    );
end ProjectWrapper;

architecture Behavioral of ProjectWrapper is
	--COMPONENT DECLARATIONS
    component MAC is
        generic( N : integer := 32);
        Port ( A : in  STD_LOGIC_VECTOR ((N/2) - 1  downto 0);
            B : in  STD_LOGIC_VECTOR ((N/2) - 1 downto 0);
            clk : in STD_LOGIC;
            WE : in STD_LOGIC;
            reset : in STD_LOGIC;
            RegOut : out  STD_LOGIC_VECTOR (N-1 downto 0));
    end component;

    component  LFSR_32_4  is
        generic (N : integer  := 32);
        port(
            clk   : in std_logic;
            rst_n : in std_logic;
            en    : in std_logic;
            bit_pattern : out std_logic_vector(N-1 downto 0)
            );
    end  component;

    component  MISR_32_4  is
        generic (N : integer  := 32);
        port(
            MISR_in : in std_logic_vector(N-1 downto 0);
            clk     : in std_logic;
            rst_n   : in std_logic;
            en      : in std_logic;
            MISR_out : out std_logic_vector(N-1 downto 0)
            );
    end  component;

    component  nBitMux_2to1  is
        generic (n : integer  := 16);
        port(
            A,B : in  std_logic_vector(n-1  downto  0);
            sel : in  std_logic;
            Y   : out std_logic_vector(n-1  downto  0)
            );
    end  component;
    
	--SIGNAL DECLARATIONS
    signal MACA, MACB : STD_LOGIC_VECTOR ((N/2) - 1  downto 0);
    signal MACOUT : STD_LOGIC_VECTOR (N-1 downto 0);
    signal LFSROUT : std_logic_vector(N-1 downto 0);
    
begin
    --Map those ports
    MAC0 : MAC 
        generic map(N => 32)
        port map ( A => MACA, B => MACB,
                    clk => clk, WE => WE, reset => reset,
                    RegOut => MACOUT);

    LFSR0 : LFSR_32_4
        generic map (N => 32)
        port map( clk => clk, rst_n => reset, en => TestEN,
                    bit_pattern => LFSROUT);

    MUXA : nBitMux_2to1
        generic map (N => 16)
        port map (A => A, B => LFSROUT(N-1 downto N/2),
                     sel => TestEN, Y => MACA);

    MUXB : nBitMux_2to1
        generic map (N => 16)
        port map (A => B, B => LFSROUT((N/2) - 1 downto 0),
                sel => TestEN, Y => MACB);

    MISR0 : MISR_32_4
        generic map(N => 32)
        port map( MISR_in => MACOUT, clk => clk,
                    rst_n => reset, en => TestEN
                    MISR_out => MISR_out);
    RegOut => MACOUT;
        
end Behavioral;
















