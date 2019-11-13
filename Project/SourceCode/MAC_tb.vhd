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

  component MAC
  	 generic( N : integer :=16);
      Port ( A : in  STD_LOGIC_VECTOR (N-1 downto 0);
             B : in  STD_LOGIC_VECTOR (N-1 downto 0);
             clk : in STD_LOGIC;
             WE : in STD_LOGIC;
             reset : in STD_LOGIC;
             RegOut : out  STD_LOGIC_VECTOR (N-1 downto 0));
  end component;

  signal A: STD_LOGIC_VECTOR (N-1 downto 0);
  signal B: STD_LOGIC_VECTOR (N-1 downto 0);
  signal clk: STD_LOGIC;
  signal WE: STD_LOGIC;
  signal reset: STD_LOGIC;
  signal RegOut: STD_LOGIC_VECTOR (N-1 downto 0);

begin

  -- Insert values for generic parameters !!
  uut: MAC generic map ( N      =>  )
              port map ( A      => A,
                         B      => B,
                         clk    => clk,
                         WE     => WE,
                         reset  => reset,
                         RegOut => RegOut );

  stimulus: process
  begin
  
    -- Put initialisation code here


    -- Put test bench stimulus code here

    wait;
  end process;


end;