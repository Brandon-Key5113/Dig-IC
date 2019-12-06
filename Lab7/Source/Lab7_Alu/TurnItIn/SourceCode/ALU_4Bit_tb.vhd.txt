--------------------------------------------------------------------------------
-- Company: RIT
-- Engineer: Brandon Key
--
-- Create Date:   17:51:58 02/28/2018
-- Design Name:
-- Module Name:   /home/ise/DSDII/Lab/Lab3/SourceCode/ALU_4Bit_tb.vhd
-- Project Name:  Lab3
-- Target Device:
-- Tool versions:
-- Description:
--
-- VHDL Test Bench Created by ISE for module: ALU_4Bit
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
USE ieee.numeric_std.ALL;
--use work.globals.all;
--use work.controlcodes.all;

ENTITY ALU_4Bit_tb IS
END ALU_4Bit_tb;

ARCHITECTURE behavior OF ALU_4Bit_tb IS

    constant AND_Code : std_logic_vector(1 downto 0) := "00";
    constant OR_Code  : std_logic_vector(1 downto 0) := "01";
    constant ADD_Code : std_logic_vector(1 downto 0) := "10";
    constant SUB_Code : std_logic_vector(1 downto 0) := "11";

    type testRecordArray is array (natural range <>) of std_logic_vector(2 downto 0);

    constant n:integer := 16;
    -- "Time" that will elapse between test vectors we submit to the component.
    constant TIME_DELTA : time := 50 ns;


    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT ALU_4Bit
    PORT(
         Control : IN  std_logic_vector(1 downto 0);
         A : IN  std_logic_vector(N-1 downto 0);
         B : IN  std_logic_vector(N-1 downto 0);
         nBitOut : OUT  std_logic_vector(N-1 downto 0);
         CB : OUT std_logic
        );
    END COMPONENT;


   --Inputs
   signal Control : std_logic_vector(1 downto 0) := (others => '0');
   signal A : std_logic_vector(N-1 downto 0) := (others => '0');
   signal B : std_logic_vector(N-1 downto 0) := (others => '0');

    --Outputs
   signal nBitOut : std_logic_vector(N-1 downto 0);
   signal CB : std_logic;
   -- No clocks detected in port list. Replace <clock> below with
   -- appropriate port name


BEGIN

    -- Instantiate the Unit Under Test (UUT)
   uut: ALU_4Bit
   PORT MAP (
          Control => Control,
          A => A,
          B => B,
          nBitOut => nBitOut,
          CB => CB
        );


   -- Stimulus process
   stim_proc: process
      --create a function to make a vector a strung
      function vec2str(vec : std_logic_vector) return string is
        variable stmp:string(vec'left+1 downto 1);
      begin
        for i in vec'reverse_range loop
          if vec(i) = '1' then
            stmp(i+1) := '1';
          elsif vec(i) = 'U' then
            stmp(i+1) := 'U';
          else
            stmp(i+1) := '0';
          end if;
        end loop;
        return stmp;
      end vec2str;

        procedure check_add(
            constant in1 : in natural;
            constant in2 : in natural;
            constant res_expected : in natural;
            constant CB_expected : in std_logic) is
            variable res : natural;
            begin
            -- Assign values to circuit inputs.
            A <= std_logic_vector(to_unsigned(in1, A'length));
            B <= std_logic_vector(to_unsigned(in2, B'length));
            Control <= ADD_Code;


            wait for TIME_DELTA;
            -- Check output against expected result.
            res := to_integer(unsigned(nBitOut));
            assert ((res = res_expected) and ( CB = CB_expected ))
            report "" & integer'image(in1) & "+" &
                   integer'image(in2) & "=" &
                   integer'image(res_expected) & "!=" &
                   integer'image(res) &
                   "    " &
                   "CB exp: " & std_logic'image(CB_expected) &
                   "Got: " & std_logic'image(CB)
            severity error;
        end procedure check_add;

        procedure check_sub(
            constant in1 : in natural;
            constant in2 : in natural;
            constant res_expected : in natural;
            constant CB_expected : in std_logic) is
            variable res : natural;
            begin
            -- Assign values to circuit inputs.
            A <= std_logic_vector(to_unsigned(in1, A'length));
            B <= std_logic_vector(to_unsigned(in2, B'length));
            Control <= SUB_Code;


            wait for TIME_DELTA;
            -- Check output against expected result.
            res := to_integer(unsigned(nBitOut));
            assert ((res = res_expected) and ( CB = CB_expected ))
            report "" & integer'image(in1) & "-" &
                   integer'image(in2) & "=" &
                   integer'image(res_expected) & "!=" &
                   integer'image(res) &
                   "    " &
                   "CB exp: " & std_logic'image(CB_expected) &
                   "Got: " & std_logic'image(CB)
            severity error;
        end procedure check_sub;


        procedure check_or(
            constant in1 : in natural;
            constant in2 : in natural;
            constant res_expected : in natural) is
            variable res : natural;
            begin
            -- Assign values to circuit inputs.
            A <= std_logic_vector(to_unsigned(in1, A'length));
            B <= std_logic_vector(to_unsigned(in2, B'length));
            Control <= OR_Code;


            wait for TIME_DELTA;
            -- Check output against expected result.
            res := to_integer(unsigned(nBitOut));
            assert ((res = res_expected) and ( CB = '0' ))
            report "" & integer'image(in1) & "+" &
                   integer'image(in2) & "=" &
                   integer'image(res_expected) & "!=" &
                   integer'image(res) &
                   "    " &
                   "CB: " & std_logic'image(CB)
            severity error;
        end procedure check_or;


        procedure check_and(
            constant in1 : in natural;
            constant in2 : in natural;
            constant res_expected : in natural) is
            variable res : natural;
            begin
            -- Assign values to circuit inputs.
            A <= std_logic_vector(to_unsigned(in1, A'length));
            B <= std_logic_vector(to_unsigned(in2, B'length));
            Control <= AND_Code;


            wait for TIME_DELTA;
            -- Check output against expected result.
            res := to_integer(unsigned(nBitOut));
            report "" & integer'image(in1) & "+" &
                   integer'image(in2) & "=" &
                   integer'image(res_expected);

            assert ((res = res_expected) and ( CB = '0' ))
            report  "!=" &
                   integer'image(res) &
                   "    " &
                   "CB: " & std_logic'image(CB)
            severity error;
        end procedure check_and;

   begin


      --wait for the outputs to stabilize
      wait for 100 ns;

      --check_add(4,5,9,0);
      --check_add(65535, 2, 1, 1);
      --check_sub(1234, 234, 1000, 0);
      --check_sub(1, 2, 1, 1);

      control <= OR_Code;
      A <= "0111010101110101";
      B <= "1001110100101101";
      wait for 50 ns;

      control <= AND_Code;
      wait for 50 ns;


      -- Test adder
    for x in (0) to (5) loop
        for y in 5432 to 5438 loop
            control <= ADD_Code;
            A <= std_logic_vector(to_unsigned(x, A'length));
            B <= std_logic_vector(to_unsigned(y, B'length));
            wait for 50 ns;

            assert(nBitOut = std_logic_vector(to_unsigned(x+y, A'length) ) )
            report("Bad Add = " & vec2str(nBitOut)
                    & " expected = " & vec2str( std_logic_vector(to_unsigned(x+y, A'length)) )
                    & " A = " & vec2str(A)
                    & " B = " & vec2str(B)
              );
        end loop;
    end loop;

    for x in ((2**N)-3) to ((2**N)-1) loop
        for y in 0 to 3 loop
            control <= ADD_Code;
            A <= std_logic_vector(to_unsigned(x, A'length));
            B <= std_logic_vector(to_unsigned(y, B'length));
            wait for 50 ns;

            assert(nBitOut = std_logic_vector(to_unsigned(x+y, A'length) ) )
            report("Bad Add = " & vec2str(nBitOut)
                    & " expected = " & vec2str( std_logic_vector(to_unsigned(x+y, A'length)) )
                    & " A = " & vec2str(A)
                    & " B = " & vec2str(B)
              );
        end loop;
    end loop;

    -- Test suber
    for x in 0 to 5 loop
        for y in 0 to 5 loop
        control <= SUB_Code;
        A <= std_logic_vector(to_unsigned(x, A'length));
        B <= std_logic_vector(to_unsigned(y, B'length));
        wait for 50 ns;

        assert(nBitOut = std_logic_vector(to_signed(x-y, A'length)) )
        report("Bad Sub = " & vec2str(nBitOut)
            & " expected = " & vec2str( std_logic_vector(to_signed(x-y, A'length)) )
            & " A = " & vec2str(A)
            & " B = " & vec2str(B)
        );

        end loop;
    end loop;

    for x in 12345 to 12350 loop
        for y in 5 to 7 loop
        control <= SUB_Code;
        A <= std_logic_vector(to_unsigned(x, A'length));
        B <= std_logic_vector(to_unsigned(y, B'length));
        wait for 50 ns;

        assert(nBitOut = std_logic_vector(to_signed(x-y, A'length)) )
        report("Bad Sub = " & vec2str(nBitOut)
            & " expected = " & vec2str( std_logic_vector(to_signed(x-y, A'length)) )
            & " A = " & vec2str(A)
            & " B = " & vec2str(B)
        );

        end loop;
    end loop;




      wait;
   end process;

END;
