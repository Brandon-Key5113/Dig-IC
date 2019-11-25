library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity ProjectWrapper_tb is
end;

architecture bench of ProjectWrapper_tb is

    constant N : integer := 32;

  component ProjectWrapper
      generic( N : integer := 32);
      Port ( A : in  STD_LOGIC_VECTOR ((N/2) - 1  downto 0);
      B : in  STD_LOGIC_VECTOR ((N/2) - 1 downto 0);
      clk : in STD_LOGIC;
      WE : in STD_LOGIC;
      reset : in STD_LOGIC;
      StartTest : in STD_LOGIC;
      RegOut : out  STD_LOGIC_VECTOR (N-1 downto 0);
      Pass : out STD_LOGIC;
      Complete : out STD_LOGIC
    );
  end component;

  signal A: STD_LOGIC_VECTOR ((N/2) - 1 downto 0);
  signal B: STD_LOGIC_VECTOR ((N/2) - 1 downto 0);
  signal clk: STD_LOGIC;
  signal WE: STD_LOGIC;
  signal reset: STD_LOGIC;
  signal StartTest: STD_LOGIC;
  signal RegOut: STD_LOGIC_VECTOR (N-1 downto 0);
  signal Pass : STD_LOGIC;
  signal Complete : STD_LOGIC;

begin

  -- Insert values for generic parameters !!
  uut: ProjectWrapper generic map ( N        =>  32)
                         port map ( A        => A,
                                    B        => B,
                                    clk      => clk,
                                    WE       => WE,
                                    reset    => reset,
                                    StartTest   => StartTest,
                                    RegOut   => RegOut,
                                    Pass => Pass,
				    Complete => Complete );

    clk_proc : process
    begin
        if clk = '0' then
            clk <= '1';
        else 
            clk <= '0';
        end if;
        wait for 50 ns;
    end process;

    stimulus: process
    begin
    
        -- Put initialisation code here


        -- Put test bench stimulus code here

        
    -- Put initialisation code here
		WE <= '1';
        reset <= '0';
        StartTest <= '1';
	A <= "0000000000000010";
        B <= "0000000000000010";
		wait for 300 ns;
		WE <= '0';
		wait for 300 ns;
		reset<='1';
		A <= "0000000000010000";
		B <= "0000000000000001";
        WE <= '1';
        wait for 100800 ns;
        reset <= '0';
        StartTest <= '0';
        A <= "0000000000000010";
        B <= "0000000000000010";
        wait for 600 ns;
        reset <= '1';
        wait for 600 ns;

	 


        wait;
    end process;


    end;
    


  