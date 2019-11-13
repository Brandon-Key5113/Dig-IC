--------------------------------------------------------------------------
--Company      : RIT
--Author       : Brandon Key
--Created      : 02/18/2018
--
--Project Name : Lab 3
--File         : Full_Adder.vhd
--
--Entity       : Full_Adder
--Architecture : behav
--
--Tool Version : VHDL '93
--Description  : Entity and behavural description of a full adder

--------------------------------------------------------------------------

library  IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity  Full_Adder  is 
    port(A,B,Cin : in  std_logic;
        Sum,Cout : out  std_logic
        );
end  Full_Adder;
        
architecture  behav of  Full_Adder  is
begin
    --uses select assignment to implement the truth table of a full adder


    sum_proc: with std_logic_vector'(Cin&A&B) select
        Sum <= '0' when "000",
               '1' when "001",
               '1' when "010",
               '0' when "011",
               '1' when "100",
               '0' when "101",
               '0' when "110",
               '1' when "111",
               '0' when others;

    Cout_proc: with std_logic_vector'(Cin&A&B) select
        Cout <= '0' when "000",
                '0' when "001",
                '0' when "010",
                '1' when "011",
                '0' when "100",
                '1' when "101",
                '1' when "110",
                '1' when "111",
                '0' when others;

end  behav;