--------------------------------------------------------------------------
--Company      : RIT
--Author       : Brandon Key
--Created      : 03/08/2018
--
--Project Name : Lab 5
--File         : MISR_32_4.vhd
--
--Entity       : MISR_32_4
--Architecture : behav
--
--Tool Version : VHDL '93
--Description  : MISR_32_4 8 bit output, 4 tap MISR.
--------------------------------------------------------------------------

library  IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity  MISR_32_4  is
    generic (N : integer  := 32);
    port(
        MISR_in : in std_logic_vector(N-1 downto 0);
        clk     : in std_logic;
        rst_n   : in std_logic;
        en      : in std_logic;
        MISR_out : out std_logic_vector(N-1 downto 0)
        );
end  MISR_32_4;

architecture  behav of  MISR_32_4  is

    signal internal_reg : std_logic_vector(N-1 downto 0);

    constant SEED : std_logic_vector(N-1 downto 0) := x"12345678";

    begin

        MISR_out <= internal_reg;

        --update the state to the next_state
        the_proc : process (clk, rst_n) begin
            if rst_n = '0' then
                internal_reg <= SEED;
            elsif rising_edge(clk) then
                if en = '1' then
                    --taps at 32,20,26,25
                    internal_reg(0)  <= internal_reg(1)  xor MISR_in(0);
                    internal_reg(1)  <= internal_reg(2)  xor MISR_in(1);
                    internal_reg(2)  <= internal_reg(3)  xor MISR_in(2);
                    internal_reg(3)  <= internal_reg(4)  xor MISR_in(3);
                    internal_reg(4)  <= internal_reg(5)  xor MISR_in(4);
                    internal_reg(5)  <= internal_reg(6)  xor MISR_in(5);
                    internal_reg(6)  <= internal_reg(7)  xor MISR_in(6);
                    internal_reg(7)  <= internal_reg(8)  xor MISR_in(7);
                    internal_reg(8)  <= internal_reg(9)  xor MISR_in(8);
                    internal_reg(9)  <= internal_reg(10) xor MISR_in(9);
                    internal_reg(10) <= internal_reg(11) xor MISR_in(10);
                    internal_reg(11) <= internal_reg(12) xor MISR_in(11);
                    internal_reg(12) <= internal_reg(13) xor MISR_in(12);
                    internal_reg(13) <= internal_reg(14) xor MISR_in(13);
                    internal_reg(14) <= internal_reg(15) xor MISR_in(14);
                    internal_reg(15) <= internal_reg(16) xor MISR_in(15);
                    internal_reg(16) <= internal_reg(17) xor MISR_in(16);
                    internal_reg(17) <= internal_reg(18) xor MISR_in(17);
                    internal_reg(18) <= internal_reg(19) xor MISR_in(18);
                    internal_reg(19) <= internal_reg(20) xor MISR_in(19) xor internal_reg(0);
                    internal_reg(20) <= internal_reg(21) xor MISR_in(20);
                    internal_reg(21) <= internal_reg(22) xor MISR_in(21);
                    internal_reg(22) <= internal_reg(23) xor MISR_in(22);
                    internal_reg(23) <= internal_reg(24) xor MISR_in(23);
                    internal_reg(24) <= internal_reg(25) xor MISR_in(24) xor internal_reg(0);
                    internal_reg(25) <= internal_reg(26) xor MISR_in(25) xor internal_reg(0);
                    internal_reg(26) <= internal_reg(27) xor MISR_in(26);
                    internal_reg(27) <= internal_reg(28) xor MISR_in(27);
                    internal_reg(28) <= internal_reg(29) xor MISR_in(28);
                    internal_reg(29) <= internal_reg(30) xor MISR_in(29);
                    internal_reg(30) <= internal_reg(31) xor MISR_in(30);
                    internal_reg(31) <= internal_reg(0)  xor MISR_in(31);
                end if;
            end if;
        end process the_proc;


end  behav;
