--------------------------------------------------------------------------
--Company      : RIT
--Author       : Brandon Key
--Created      : 02/18/2018
--
--Project Name : Lab 3
--File         : nBitAdderSubtractor_16Bit.vhd
--
--Entity       : nBitAdderSubtractor_16Bit
--Architecture : struct
--
--Tool Version : VHDL '93
--Description  : Entity and structural description of an adder subtractor
--             : SEL = 0 : A+B = Y
--             : SEL = 1 : A-B = Y
--------------------------------------------------------------------------

library  IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use work.globals.all;

entity  nBitAdderSubtractor_16Bit  is
    generic (n : integer  := 32);
    port(
        A,B : in  std_logic_vector(n-1  downto  0);
        Y   : out std_logic_vector(n-1  downto  0);
        CB  : out std_logic
        );
end  nBitAdderSubtractor_16Bit;

architecture  struct of  nBitAdderSubtractor_16Bit  is

    component full_adder is
        port(A,B,Cin : in  std_logic;
            Sum,Cout : out  std_logic
        );
     end component full_adder;

    --Create an array to hold all of the carries
    type carry_array  is  array (n-1  downto  0) of std_logic;
    signal c_array : carry_array;

begin


    generate_adders : for i in 0 to n-1  generate
        i_first: if i = 0 generate
            --The first adder gets SEL as the Cin
            adder : full_adder port map(
                A => A(i),
                B => B(i),
                Cin => '0',
                Sum => Y(i),
                Cout => c_array(i)
            );
        end generate i_first;

        i_last : if i = (n-1) generate
            --The last adder doesn't have a carry out
            adder : full_adder port map(
                A => A(i),
                B => B(i),
                Cin => c_array(i-1),
                Sum => Y(i),
                Cout =>c_array(i)
            );
        end generate i_last;

        --Middle adders
        i_mid : if (i /= 0) and (i /= (n-1)) generate
            adder : full_adder port map(
                A => A(i),
                B => B(i),
                Cin => c_array(i-1),
                Sum => Y(i),
                Cout => c_array(i)
            );
        end generate i_mid;

    end generate generate_adders;

    CB <= c_array(n-1);

end  struct;
