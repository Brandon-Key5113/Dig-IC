--------------------------------------------------------------------------
--Company      : RIT
--Author       : Brandon Key
--Created      : 03/08/2018
--
--Project Name : Lab 5
--File         : MISR_8_4.vhd
--
--Entity       : MISR_8_4
--Architecture : behav
--
--Tool Version : VHDL '93
--Description  : MISR_8_4 8 bit output, 4 tap MISR. 
--------------------------------------------------------------------------

library  IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity  MISR_8_4  is 
    port(
        MISR_in : in std_logic_vector(7 downto 0);
        clk     : in std_logic;
        rst_n   : in std_logic;
        en      : in std_logic;
        MISR_out : out std_logic_vector(7 downto 0)
        );
end  MISR_8_4;
        
architecture  behav of  MISR_8_4  is

    signal internal_reg : std_logic_vector(7 downto 0);

    constant SEED : std_logic_vector(7 downto 0) := x"6A";

    begin

        MISR_out <= internal_reg;

        --update the state to the next_state
        the_proc : process (clk, rst_n) begin
            if rst_n = '0' then
                internal_reg <= SEED;
            elsif rising_edge(clk) then
                if en = '1' then
                    --taps at 7,5,4,3
                    internal_reg(0) <= internal_reg(1) xor MISR_in(0);
                    internal_reg(1) <= internal_reg(2) xor MISR_in(1);
                    internal_reg(2) <= internal_reg(3) xor MISR_in(2);
                    internal_reg(3) <= internal_reg(4) xor MISR_in(3) xor internal_reg(0);
                    internal_reg(4) <= internal_reg(5) xor MISR_in(4) xor internal_reg(0);
                    internal_reg(5) <= internal_reg(6) xor MISR_in(5) xor internal_reg(0);
                    internal_reg(6) <= internal_reg(7) xor MISR_in(6);
                    internal_reg(7) <= internal_reg(0) xor MISR_in(7);
                end if;
            end if;
        end process the_proc;
       

end  behav;
