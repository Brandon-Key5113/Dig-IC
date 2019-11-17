--------------------------------------------------------------------------
--Company      : RIT
--Author       : Brandon Key
--Created      : 2/8/2017
--
--Project Name : Lab 2
--File         : nBitRegister_32.vhd
--
--Entity       : nBitRegister_32
--Architecture : struct
--Revision     :
--Rev 0.01     : 2/8/2017
--
--Tool Version : VHDL '93
--Description  : Entity and behavioral description of an n-bit register
--
--Notes        :
--------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;


entity nBitRegister_32 is
    generic (n : integer  := 32);
    Port (
        nBitIn : in std_logic_vector(n-1 downto 0); -- n bits to store in the register
        WE     : in std_logic; -- Active high write enable
        Reset  : in std_logic; -- Async reset, disabled when low
        clk    : in std_logic;
        Y : out std_logic_vector(n-1 downto 0) -- 1 output , n bits wide
    );
end nBitRegister_32;


architecture behav of nBitRegister_32 is


begin

    output_proc : process (clk, Reset) begin

        if Reset = '0' then
            Y <= (others => '0');
        elsif clk'event and clk = '1' then
            if WE = '1' then
                Y <= nBitIn;
            end if;
        end if;

    end process output_proc;



end behav;



