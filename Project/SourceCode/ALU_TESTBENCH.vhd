--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:35:10 03/19/2017
-- Design Name:   
-- Module Name:   G:/DSD2/Lab3/Xilinx/Lab3/ALU_TESTBENCH.vhd
-- Project Name:  Lab3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_Wrapper
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ALU_TESTBENCH IS
END ALU_TESTBENCH;
 
ARCHITECTURE behavior OF ALU_TESTBENCH IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_Wrapper
    PORT(
         input1 : IN  std_logic_vector(15 downto 0);
         input2 : IN  std_logic_vector(15 downto 0);
         control : IN  std_logic_vector(3 downto 0);
         output : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input1 : std_logic_vector(15 downto 0) := (others => '0');
   signal input2 : std_logic_vector(15 downto 0) := (others => '0');
   signal control : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_Wrapper PORT MAP (
          input1 => input1,
          input2 => input2,
          control => control,
          output => output
        );

 --0100 ADD
 --0101 SUB
 --0110 MUL
 --1000 OR
 --1001 NOT
 --1010 AND
 --1011 XOR
 --1100 SLL
 --1101 SRL
 --1110 SRA

   -- Stimulus process
   stim_proc: process
   begin		
      -- insert stimulus here 
		
		--Test ADD
		control<="0100";
		
		--ADD1
		input1<="1010101010101010";
		input2<="0101010101010101";
		wait for 50 ns;
		assert output="1111111111111111"
			report "ADD1 failed, expected 1111111111111111, got: " & integer'image(to_integer(usigned(output)));
		
		--ADD2
		input1<="1111111111111111";
		input2<="0000000000000000";
		wait for 50 ns;
		assert output="1111111111111111"
			report "ADD2 failed, expected 1111111111111111, got: " & integer'image(to_integer(usigned(output)));
		--
		--ADD3
		input1<="0000000000110011";
		input2<="0000000000010010";
				--"0000000000000000"
		wait for 50 ns;
		assert output="0000000001000101"
			report "ADD3 failed, expected 0000000001000101, got: " & integer'image(to_integer(usigned(output)));
		
		--Test SUB
		control<="0101";
		
		--SUB1
		input1<="1111111111111111";
		input2<="1111111111111111";
				--"0000000000000000"
		wait for 50 ns;
		assert output="0000000000000000"
			report "SUB1 failed, expected 0000000000000000, got: " & integer'image(to_integer(usigned(output)));
			
		--SUB2
		input1<="0000000001000000";--64
		input2<="0000000000010010";--18
				--"0000000000101110"--46
		wait for 50 ns;
		assert output="0000000000101110"
			report "SUB2 failed, expected 0000000000101110, got: " & integer'image(to_integer(usigned(output)));
		
		--SUB3
		input1<="0000000000000111";--7
		input2<="0000000000010000";--16
				--"1111111111110111"--(-)9
		wait for 50 ns;
		assert output="1111111111110111"
			report "SUB3 failed, expected 1111111111110111, got: " & integer'image(to_integer(usigned(output)));
			
		--TEST MUL
		control<="0110";
		
		--MUL1
		input1<="1111111111111111";
		input2<="0000000000000000";
				--"0000000000000000"
		wait for 50 ns;
		assert output="0000000000000000"
			report "MUL1 failed, expected 0000000000000000, got: " & integer'image(to_integer(usigned(output)));
			
		--MUL2
		input1<="0000000000000100";--4
		input2<="0000000000000101";--5
				--"0000000000010100" --20
		wait for 50 ns;
		assert output="0000000000010100"
			report "MUL2 failed, expected 0000000000010100, got: " & integer'image(to_integer(usigned(output)));
			
		--Test OR
		control<="1000";
		
		--OR1
		input1<="1111010101000011";
		input2<="0011100100110111";
				--"1111110101110111" 
		wait for 50 ns;
		assert output="0011000100000011"
			report "OR1 failed, expected 0011000100000011, got: " & integer'image(to_integer(usigned(output)));
			
		--TEST NOT
		control<="1001";
		
		--NOT1
		input1<="1111010101000011";
		input2<="0000000000000000";
				--"0000101010111100" 
		wait for 50 ns;
		assert output="0000101010111100"
			report "NOT1 failed, expected 0000101010111100, got: " & integer'image(to_integer(usigned(output)));
		
		--TEST AND
		control<="1010";
		
		--AND1
		input1<="1111010101000011";
		input2<="0011100100110111";
				--"0011000100000011" 
		wait for 50 ns;
		assert output="0011000100000011"
			report "AND1 failed, expected 0011000100000011, got: " & integer'image(to_integer(usigned(output)));
			
		--TEST XOR
		control<="1011";
		
		--XOR1
		input1<="1111010101000011";
		input2<="0011100100110111";
				--"1100110001110100" 
		wait for 50 ns;
		assert output="1100110001110100"
			report "XOR1 failed, expected 1100110001110100, got: " & integer'image(to_integer(usigned(output)));
			
		--TEST SLL
		control<="1100";
		
		--SLL1
		input1<="1111010101000011";
		input2<="0000000000000100";
				--"0101010000110000" 
		wait for 50 ns;
		assert output="0101010000110000"
			report "SLL1 failed, expected 0101010000110000, got: " & integer'image(to_integer(usigned(output)));
		
		--TEST SRL
		control<="1101";
			
		--SRL1
		input1<="1111010101000011";
		input2<="0000000000000100";
				--"0000111101010100" 
		wait for 50 ns;
		assert output="0000111101010100"
			report "SRL1 failed, expected 0000111101010100, got: " & integer'image(to_integer(usigned(output)));
			
		--TEST SRA
		control<="1110";
		
		--SRA1
		input1<="1111010101000011";
		input2<="0000000000000100";
				--"1111111101010100" 
		wait for 50 ns;
		assert output="1111111101010100"
			report "SRA1 failed, expected 1111111101010100, got: " & integer'image(to_integer(usigned(output)));
      wait;
   end process;

END;














