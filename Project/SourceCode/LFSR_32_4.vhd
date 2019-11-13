--------------------------------------------------------------------------
--Company      : RIT
--Author       : Brandon Key
--Created      : 03/08/2018
--
--Project Name : Lab 5
--File         : LFSR_32_4.vhd
--
--Entity       : LFSR_32_4
--Architecture : behav
--
--Tool Version : VHDL '93
--Description  : LFSR_32_4 8 bit output, 4 tap LFSR.
--------------------------------------------------------------------------

library  IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity  LFSR_32_4  is
    generic (N : integer  := 32);
    port(
        clk   : in std_logic;
        rst_n : in std_logic;
        en    : in std_logic;
        bit_pattern : out std_logic_vector(N-1 downto 0)
        );
end  LFSR_32_4;

architecture  behav of  LFSR_32_4  is

    signal internal_reg : std_logic_vector(N-1 downto 0);

    constant SEED : std_logic_vector(N-1 downto 0) := x"12345678";

    begin

        bit_pattern <= internal_reg;

        --update the state to the next_state
        the_proc : process (clk, rst_n) begin
            if rst_n = '0' then
                internal_reg <= SEED;
            elsif rising_edge(clk) then
                if en = '1' then
                    --taps at 32,20,26,25
                    internal_reg(0)  <= internal_reg(1);
                    internal_reg(1)  <= internal_reg(2);
                    internal_reg(2)  <= internal_reg(3);
                    internal_reg(3)  <= internal_reg(4);
                    internal_reg(4)  <= internal_reg(5);
                    internal_reg(5)  <= internal_reg(6);
                    internal_reg(6)  <= internal_reg(7);
                    internal_reg(7)  <= internal_reg(8);
                    internal_reg(8)  <= internal_reg(9);
                    internal_reg(9)  <= internal_reg(10);
                    internal_reg(10) <= internal_reg(11);
                    internal_reg(11) <= internal_reg(12);
                    internal_reg(12) <= internal_reg(13);
                    internal_reg(13) <= internal_reg(14);
                    internal_reg(14) <= internal_reg(15);
                    internal_reg(15) <= internal_reg(16);
                    internal_reg(16) <= internal_reg(17);
                    internal_reg(17) <= internal_reg(18);
                    internal_reg(18) <= internal_reg(19);
                    internal_reg(19) <= internal_reg(20) xor internal_reg(0);
                    internal_reg(20) <= internal_reg(21);
                    internal_reg(21) <= internal_reg(22);
                    internal_reg(22) <= internal_reg(23);
                    internal_reg(23) <= internal_reg(24);
                    internal_reg(24) <= internal_reg(25) xor internal_reg(0);
                    internal_reg(25) <= internal_reg(26) xor internal_reg(0);
                    internal_reg(26) <= internal_reg(27);
                    internal_reg(27) <= internal_reg(28);
                    internal_reg(28) <= internal_reg(29);
                    internal_reg(29) <= internal_reg(30);
                    internal_reg(30) <= internal_reg(31);
                    internal_reg(31) <= internal_reg(0);

                end if;
            end if;
        end process the_proc;


end  behav;
