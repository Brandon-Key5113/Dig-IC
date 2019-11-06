----------------------------------------------------------------------------
--Company      : RIT
--Author       : Brandon Key
--Created      : 02/18/2018
--
--Project Name : Lab 3
--File         : Controller_4Bit.vhd
--
--Entity       : Controller_4Bit
--Architecture : behav
--
--Tool Version : VHDL '93
--Description  : *SPECIAL controller, DO NOT USE OUTSIDE THIS PROJECT*
--             : Takes 4 bit control signal bit
--             : Figues out the proper output
--------------------------------------------------------------------------

library  IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
--use work.controlcodes.all;

entity  Controller_4Bit  is
    generic (n : integer  := 16);
    port(
        Control : in  std_logic_vector(1 downto 0);

        ADD_SUB_In : in std_logic_vector(N-1 downto 0);
        OR_In      : in std_logic_vector(N-1 downto 0);
        AND_In     : in std_logic_vector(N-1 downto 0);

        ADD_SUB_SEL : out std_logic;

        nBitOut : out  std_logic_vector(N-1 downto 0)
        );
end  Controller_4Bit;

architecture  behav of  Controller_4Bit  is

    constant AND_Code : std_logic_vector(1 downto 0) := "00";
    constant OR_Code  : std_logic_vector(1 downto 0) := "01";
    constant ADD_Code : std_logic_vector(1 downto 0) := "10";
    constant SUB_Code : std_logic_vector(1 downto 0) := "11";

begin

    --Proces to set the select signal when subtraction should occur
    ADD_SUB_SEL_proc: with Control select
        ADD_SUB_SEL <= '1' when SUB_Code,
                       '0' when others;

    nBitOut_proc: with Control select
        nBitOut <= ADD_SUB_In when ADD_Code,
                   ADD_SUB_In when SUB_Code,
                   OR_In when OR_Code,
                   AND_In when AND_Code,
                   (others => '0') when others;

end  behav;
