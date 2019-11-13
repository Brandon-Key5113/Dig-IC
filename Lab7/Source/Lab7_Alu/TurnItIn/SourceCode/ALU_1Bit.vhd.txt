--------------------------------------------------------------------------
--Company      : RIT
--Author       : Brandon Key
--Created      : 02/18/2018
--
--Project Name : Lab 3
--File         : ALU.vhd
--
--Entity       : ALU
--Architecture : struct
--
--Tool Version : VHDL '93
--Description  : ALU
--------------------------------------------------------------------------
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

entity  ALU_1Bit  is
    port(
        Control : in std_logic_vector(1 downto 0);
        A,B     : in std_logic;
        Y       : out std_logic;
        CB      : out std_logic
        );
end  ALU_1Bit;

architecture  behav of  ALU_1Bit  is

begin

    Y_proc: with Control select
        Y <= A xor B when ADD_Code,
             A xor B when SUB_Code,
             A or  B when OR_Code,
             A and B when AND_Code,
             '0'     when others;

    CB_proc: with Control select
        CB <= A and B       when ADD_Code,
              (not A) and B when SUB_Code,
              '0'           when OR_Code,
              '0'           when AND_Code,
              '0'           when others;

end  behav;
