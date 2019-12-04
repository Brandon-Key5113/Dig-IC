--------------------------------------------------------------------------
--Company      : RIT
--Author       : Brandon Key
--Created      : 03/08/2018
--
--Project Name : Lab 5
--File         : LFSR_8_4.vhd
--
--Entity       : LFSR_8_4
--Architecture : behav
--
--Tool Version : VHDL '93
--Description  : LFSR_8_4 8 bit output, 4 tap LFSR. 
--------------------------------------------------------------------------

library  IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity  LFSR_8_4  is 
    port(
        clk   : in std_logic;
        rst_n : in std_logic;
        en    : in std_logic;
        bit_pattern : out std_logic_vector(7 downto 0)
        );
end  LFSR_8_4;
        
architecture  behav of  LFSR_8_4  is

    signal internal_reg : std_logic_vector(7 downto 0);

    constant SEED : std_logic_vector(7 downto 0) := x"6A";

    begin

        bit_pattern <= internal_reg;

        --update the state to the next_state
        the_proc : process (clk, rst_n) begin
            if rst_n = '0' then
                internal_reg <= SEED;
            elsif rising_edge(clk) then
                if en = '1' then
                    --taps at 7,5,4,3
                    internal_reg(0) <= internal_reg(1);
                    internal_reg(1) <= internal_reg(2);
                    internal_reg(2) <= internal_reg(3);
                    internal_reg(3) <= internal_reg(4) xor internal_reg(0);
                    internal_reg(4) <= internal_reg(5) xor internal_reg(0);
                    internal_reg(5) <= internal_reg(6) xor internal_reg(0);
                    internal_reg(6) <= internal_reg(7);
                    internal_reg(7) <= internal_reg(0);
                end if;
            end if;
        end process the_proc;
       

end  behav;
