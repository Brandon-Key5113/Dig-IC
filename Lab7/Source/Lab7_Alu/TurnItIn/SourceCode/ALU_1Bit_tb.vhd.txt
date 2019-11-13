--------------------------------------------------------------------------------
-- Company: RIT
-- Engineer: Brandon Key
--
-- Create Date: 17:51:58 02/28/2018
-- Design Name:
-- Module Name: /home/ise/DSDII/Lab/Lab3/SourceCode/ALU_1Bit_tb.vhd
-- Project Name: Lab3
-- Target Device:
-- Tool versions:
-- Description:
--
-- VHDL Test Bench Created by ISE for module: ALU_1Bit
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes:
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test. Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
--use work.globals.all;
--use work.controlcodes.all;

ENTITY ALU_1Bit_tb IS
END ALU_1Bit_tb;

ARCHITECTURE behavior OF ALU_1Bit_tb IS

    CONSTANT AND_Code : std_logic_vector(1 DOWNTO 0) := "00";
    CONSTANT OR_Code : std_logic_vector(1 DOWNTO 0) := "01";
    CONSTANT ADD_Code : std_logic_vector(1 DOWNTO 0) := "10";
    CONSTANT SUB_Code : std_logic_vector(1 DOWNTO 0) := "11";

    TYPE testRecordArray IS ARRAY (NATURAL RANGE <>) OF std_logic_vector(2 DOWNTO 0);
    CONSTANT TIME_DELTA : TIME := 50 ns;
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT ALU_1Bit
        PORT (
            Control : IN std_logic_vector(1 DOWNTO 0);
            A : IN std_logic;
            B : IN std_logic;
            Y : OUT std_logic;
            CB : OUT std_logic
        );
    END COMPONENT;
    --Inputs
    SIGNAL Control : std_logic_vector(1 DOWNTO 0) := (OTHERS => '0');
    SIGNAL A : std_logic := '0';
    SIGNAL B : std_logic := '0';

    --Outputs
    SIGNAL Y : std_logic;
    SIGNAL CB : std_logic;
BEGIN
    -- Instantiate the Unit Under Test (UUT)
    uut : ALU_1Bit
    PORT MAP(
        Control => Control,
        A => A,
        B => B,
        Y => Y,
        CB => CB
    );
    -- Stimulus process
    stim_proc : PROCESS
        --create a function to make a vector a strung
        FUNCTION vec2str(vec : std_logic_vector) RETURN STRING IS
        VARIABLE stmp : STRING(vec'LEFT + 1 DOWNTO 1);
    BEGIN
        FOR i IN vec'reverse_range LOOP
            IF vec(i) = '1' THEN
                stmp(i + 1) := '1';
            ELSIF vec(i) = 'U' THEN
                stmp(i + 1) := 'U';
            ELSE
                stmp(i + 1) := '0';
            END IF;
        END LOOP; RETURN stmp;
    END vec2str;

    BEGIN
        --wait for the outputs to stabilize
        WAIT FOR 100 ns;

        control <= OR_Code;
        A <= '0';
        B <= '0';
        WAIT FOR 50 ns;
        A <= '0';
        B <= '1';
        WAIT FOR 50 ns;
        A <= '1';
        B <= '0';
        WAIT FOR 50 ns;
        A <= '1';
        B <= '1';
        WAIT FOR 50 ns;

        control <= AND_Code;
        A <= '0';
        B <= '0';
        WAIT FOR 50 ns;
        A <= '0';
        B <= '1';
        WAIT FOR 50 ns;
        A <= '1';
        B <= '0';
        WAIT FOR 50 ns;
        A <= '1';
        B <= '1';
        WAIT FOR 50 ns;

        control <= ADD_Code;
        A <= '0';
        B <= '0';
        WAIT FOR 50 ns;
        A <= '0';
        B <= '1';
        WAIT FOR 50 ns;
        A <= '1';
        B <= '0';
        WAIT FOR 50 ns;
        A <= '1';
        B <= '1';
        WAIT FOR 50 ns;

        control <= SUB_Code;
        A <= '0';
        B <= '0';
        WAIT FOR 50 ns;
        A <= '0';
        B <= '1';
        WAIT FOR 50 ns;
        A <= '1';
        B <= '0';
        WAIT FOR 50 ns;
        A <= '1';
        B <= '1';
        WAIT FOR 50 ns;

        WAIT;
    END PROCESS;

END;
