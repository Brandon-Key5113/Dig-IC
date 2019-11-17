-- Testbench created online at:
--   www.doulos.com/knowhow/perl/testbench_creation/
-- Copyright Doulos Ltd
-- SD, 03 November 2002

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity MAC_tb is
end;

architecture bench of MAC_tb is
  
  constant N : integer := 32;

  component MAC
  	 generic( N : integer := 32);
      Port ( A : in  STD_LOGIC_VECTOR ((N/2) - 1  downto 0);
           B : in  STD_LOGIC_VECTOR ((N/2) - 1 downto 0);
           clk : in STD_LOGIC;
           WE : in STD_LOGIC;
           reset : in STD_LOGIC;
           RegOut : out  STD_LOGIC_VECTOR (N-1 downto 0));
  end component;

  signal A: STD_LOGIC_VECTOR ((N/2) - 1  downto 0);
  signal B: STD_LOGIC_VECTOR ((N/2) - 1 downto 0);
  signal clk: STD_LOGIC;
  signal WE: STD_LOGIC;
  signal reset: STD_LOGIC;
  signal RegOut: STD_LOGIC_VECTOR (N-1 downto 0);

begin

  -- Insert values for generic parameters !!
  uut: MAC generic map ( N      => 32)
              port map ( A      => A,
                         B      => B,
                         clk    => clk,
                         WE     => WE,
                         reset  => reset,
                         RegOut => RegOut );
								 
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
	 WE <= '1';
	 reset <= '0';
	A <= "0000000000000010";
	B <= "0000000000000010";
	 

    -- Put test bench stimulus code here

    wait;
  end process;


end;