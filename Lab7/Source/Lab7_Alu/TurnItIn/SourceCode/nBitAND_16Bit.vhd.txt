--------------------------------------------------------------------------
--Company      : RIT
--Author       : Brandon Key
--Created      : 1/22/2018
--
--Project Name : Lab 1
--File         : nBitAND_16Bit.vhd
--
--Entity       : nBitAND_16Bit
--Architecture : Dataflow
--
--Tool Version : VHDL '93
--Description  : Entity and structural description of an AND gate
--------------------------------------------------------------------------

library  IEEE;
use  IEEE.STD_LOGIC_1164.ALL;

entity  nBitAND_16Bit  is
    generic (n : integer  := 16);
    port(A,B : in  std_logic_vector(n-1  downto  0);
        Y : out  std_logic_vector(n-1  downto  0)
        );
end  nBitAND_16Bit;

architecture  Dataflow  of  nBitAND_16Bit  is
    begin
    Y  <= A AND B;-- bitwise or
end  Dataflow;
