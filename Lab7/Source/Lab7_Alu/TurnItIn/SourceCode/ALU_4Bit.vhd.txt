--------------------------------------------------------------------------
--Company      : RIT
--Author       : Brandon Key
--Created      : 02/18/2018
--
--Project Name : Lab 3
--File         : ALU_4Bit.vhd
--
--Entity       : ALU_4Bit
--Architecture : struct
--
--Tool Version : VHDL '93
--Description  : ALU_4Bit
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

entity  ALU_4Bit  is
    port(
        Control : in std_logic_vector(1 downto 0);
        A,B     : in std_logic_vector(N-1 downto 0);
        nBitOut : out std_logic_vector(N-1 downto 0);
        CB      : out std_logic
        );
end  ALU_4Bit;

architecture  struct of  ALU_4Bit  is

    --constant N : integer := 4;

    signal ADD_SUB_Out : std_logic_vector(N-1 downto 0);
    signal OR_Out      : std_logic_vector(N-1 downto 0);
    signal AND_Out     : std_logic_vector(N-1 downto 0);

    signal ADD_SUB_SEL : std_logic;


begin

    nBitAdderSubtractor_4Bit : entity work.nBitAdderSubtractor_4Bit
        generic map (N => N)
        port map ( A => A, B => B, SEL => ADD_SUB_SEL, Y => ADD_SUB_Out, CB => CB);


    nBitOR_4Bit : entity work.nBitOR_4Bit
        generic map (N => N)
        port map ( A => A, B => B, Y => OR_Out);


    nBitAND_4Bit : entity work.nBitAND_4Bit
        generic map (N => N)
        port map ( A => A, B => B, Y => AND_Out);

    Controller_4Bit : entity work.Controller_4Bit
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
