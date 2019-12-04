--------------------------------------------------------------------------
--Company      : RIT
--Author       : Brandon Key
--Created      : 03/29/2018
--
--Project Name : Lab 5
--File         : BIST_tb.vhd
--
--Entity       : BIST_tb
--Architecture : behav
--
--Tool Version : VHDL '93
--Description  :  BIST
--------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY BIST_tb IS
END BIST_tb;
 
ARCHITECTURE behavior OF BIST_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Wrapper
    PORT(
         mul_input : IN  std_logic_vector(7 downto 0);
         start_BIST : IN  std_logic;
         disp_Sig : IN  std_logic;
         clk : IN  std_logic;
         rst_n : IN  std_logic;
         unused_anode : OUT  std_logic;
         hund_anode : OUT  std_logic;
         tens_anode : OUT  std_logic;
         ones_anode : OUT  std_logic;
         CAn : OUT  std_logic;
         CBn : OUT  std_logic;
         CCn : OUT  std_logic;
         CDn : OUT  std_logic;
         CEn : OUT  std_logic;
         CFn : OUT  std_logic;
         CGn : OUT  std_logic;
         is_Testing : OUT  std_logic;
         mul_disp : OUT  std_logic_vector(7 downto 0);
         sig_disp : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal mul_input : std_logic_vector(7 downto 0) := (others => '0');
   signal start_BIST : std_logic := '0';
   signal disp_Sig : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst_n : std_logic := '0';

 	--Outputs
   signal unused_anode : std_logic;
   signal hund_anode : std_logic;
   signal tens_anode : std_logic;
   signal ones_anode : std_logic;
   signal CAn : std_logic;
   signal CBn : std_logic;
   signal CCn : std_logic;
   signal CDn : std_logic;
   signal CEn : std_logic;
   signal CFn : std_logic;
   signal CGn : std_logic;
   signal is_Testing : std_logic;
   signal mul_disp : std_logic_vector(7 downto 0);
   signal sig_disp : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Wrapper PORT MAP (
          mul_input => mul_input,
          start_BIST => start_BIST,
          disp_Sig => disp_Sig,
          clk => clk,
          rst_n => rst_n,
          unused_anode => unused_anode,
          hund_anode => hund_anode,
          tens_anode => tens_anode,
          ones_anode => ones_anode,
          CAn => CAn,
          CBn => CBn,
          CCn => CCn,
          CDn => CDn,
          CEn => CEn,
          CFn => CFn,
          CGn => CGn,
          is_Testing => is_Testing,
          mul_disp => mul_disp,
          sig_disp => sig_disp
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
      rst_n <= '0';
      wait for 100 ns;	
      rst_n <= '1';
      wait for clk_period*3;
      -- insert stimulus here 

      start_BIST <= '1';
      wait for clk_period*10;
      start_BIST <= '0';
      wait for clk_period*30;

      for i in 0 to 5 loop
        start_BIST <= '1';
        mul_input <= std_logic_vector(to_unsigned(i, mul_input'length));
        wait for clk_period*2;
        start_BIST <= '0';
        wait for clk_period*2;
      end loop;

      wait for clk_period*270;

      start_BIST <= '1';
      wait for clk_period*300;
      start_BIST <= '0';
      wait for clk_period*10;

      wait;
   end process;

END;
