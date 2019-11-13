--------------------------------------------------------------------------
--Company      : RIT
--Author       : Brandon Key
--Created      : 02/18/2018
--
--Project Name : Lab 3
--File         : ALU_16Bit.vhd
--
--Entity       : ALU_16Bit
--Architecture : struct
--
--Tool Version : VHDL '93
--Description  : ALU_16Bit
--------------------------------------------------------------------------

library  IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package globals is
    constant N : integer := 16;
end globals;


library  IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package controlcodes is
    constant AND_Code : std_logic_vector(1 downto 0) := "00";
    constant OR_Code  : std_logic_vector(1 downto 0) := "01";
    constant ADD_Code : std_logic_vector(1 downto 0) := "10";
    constant SUB_Code : std_logic_vector(1 downto 0) := "11";
end controlcodes;


library  IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use work.controlcodes.all;
use work.globals.all;

entity  ALU_16Bit  is
    port(
        Control : in std_logic_vector(1 downto 0);
        A,B     : in std_logic_vector(N-1 downto 0);
        nBitOut : out std_logic_vector(N-1 downto 0);
        CB      : out std_logic
        );
end  ALU_16Bit;

architecture  struct of  ALU_16Bit  is

    --constant N : integer := 4;

    signal ADD_SUB_Out : std_logic_vector(N-1 downto 0);
    signal OR_Out      : std_logic_vector(N-1 downto 0);
    signal AND_Out     : std_logic_vector(N-1 downto 0);

    signal ADD_SUB_SEL : std_logic;


begin

    nBitAdderSubtractor_16Bit : entity work.nBitAdderSubtractor_16Bit
        generic map (N => N)
        port map ( A => A, B => B, SEL => ADD_SUB_SEL, Y => ADD_SUB_Out, CB => CB);


    nBitOR_16Bit : entity work.nBitOR_16Bit
        generic map (N => N)
        port map ( A => A, B => B, Y => OR_Out);


    nBitAND_16Bit : entity work.nBitAND_16Bit
        generic map (N => N)
        port map ( A => A, B => B, Y => AND_Out);

    Controller_16Bit : entity work.Controller_16Bit
        generic map (N => N)
        port map(
        Control     => Control,
        ADD_SUB_In  => ADD_SUB_Out,
        OR_In       => OR_Out,
        AND_In      => AND_Out,
        ADD_SUB_SEL => ADD_SUB_SEL,
        nBitOut     => nBitOut
        );

end  struct;
