--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:49:10 02/08/2018
-- Design Name:   
-- Module Name:   /home/ise/DSDII/Lab/Lab2/Project/lab2/nBitRegister_tb.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: nBitRegister
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY nBitRegister_tb IS
END nBitRegister_tb;
 
ARCHITECTURE behavior OF nBitRegister_tb IS 

	constant N : integer := 4;
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nBitRegister
    generic (n : integer  := 16);
    PORT(
          nBitIn : in std_logic_vector(n-1 downto 0); -- n bits to store in the register
          WE     : in std_logic; -- Active high write enable
          Reset  : in std_logic; -- Async reset, disabled when low
          clk    : in std_logic;
          Y : out std_logic_vector(n-1 downto 0) -- 1 output , n bits wide
        );
    END COMPONENT;
    

   --Inputs
   signal nBitIn : std_logic_vector(n-1 downto 0) := (others => '0');
   signal WE : std_logic := '0';
   signal Reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal Y : std_logic_vector(n-1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nBitRegister
   generic map (N => N)
   PORT MAP (
          nBitIn => nBitIn,
          WE => WE,
          Reset => Reset,
          clk => clk,
          Y => Y
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
			-- hold reset state for 100 ns.
			Reset <= '0';
      wait for (1*clk_period + 15 ns);	
			Reset <= '1';
      wait for clk_period*1;
			--Setup Complete, Time to load
			
    --Load each register 1 by 1
      WE <= '1';
      wait for clk_period;
      nBitIn <= x"D";
      wait for clk_period;
      WE <= '0';
      nBitIn <= x"E";
      wait for clk_period;

      WE <= '1';
      wait for clk_period;
      for i in 0 to 15 loop
        nBitIn <= std_logic_vector(to_unsigned(i, nBitIn'length));
        wait for clk_period*1;
      end loop;

      wait;
   end process;

END;
