--------------------------------------------------------------------------
--Company      : RIT
--Author       : Brandon Key
--Created      : 3/29/2018
--
--Project Name : Lab 5
--File         : nBitMux_2to1.vhd
--
--Entity       : nBitMux_2to1
--Architecture : Dataflow
--
--Tool Version : VHDL '93
--Description  : Arbitrary width 2 to 1 mux
--------------------------------------------------------------------------

library  IEEE;
use  IEEE.STD_LOGIC_1164.ALL;

entity  nBitMux_2to1  is
    generic (n : integer  := 16);
    port(
        A,B : in  std_logic_vector(n-1  downto  0);
        sel : in  std_logic;
        Y   : out std_logic_vector(n-1  downto  0)
        );
end  nBitMux_2to1;
        
architecture  Dataflow  of  nBitMux_2to1  is
    begin

        --update the state to the next_state
        the_proc : process (sel, A, B) begin
            case sel is 
                when '0' =>
                    Y <= A;
                when others =>
                    Y <= B;
            end case;
        end process the_proc;

end  Dataflow;