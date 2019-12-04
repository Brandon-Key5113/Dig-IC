----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:56:40 03/15/2017 
-- Design Name: 
-- Module Name:    Multiplier - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library  IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TestController is
	 generic( N : integer := 32);
    Port ( clk : in STD_LOGIC;
           StartTest : in STD_LOGIC;
           reset_n : in STD_LOGIC;
           Count : in  STD_LOGIC_VECTOR (N-1 downto 0);
           MISR_IN : in STD_LOGIC_VECTOR (N-1 downto 0);
           Complete : out STD_LOGIC;
           Pass : out STD_LOGIC;
           TestEN: out STD_LOGIC
           );
end TestController;

architecture Datapath of TestController is 

    signal complete_v, pass_v : STD_LOGIC;

begin

    PassProc : process (clk, reset_n) begin

        if reset_n = '0' then
            Pass_v <= '0';
        elsif rising_edge(clk) then
            if (count = "00000000000000000000001111101000" and MISR_IN = "10001100100101111000000111100110")  or Pass_v = '1' then
                Pass_v <= '1';
            else
                Pass_v <= '0';
            end if;
        end if;
    end process;

    CompleteProc : process (clk, reset_n) begin
        if reset_n = '0' then 
            Complete_v <= '0';
        elsif rising_edge(clk) then
            if count = "00000000000000000000001111101000" or Complete_v = '1' then
                Complete_v <= '1';
            else
                Complete_v <= '0';
            end if;
        end if;
    end process;

    TestProc : process(clk, reset_n) begin
        if reset_n = '0' then
            TestEN <= '0';
        elsif rising_edge(clk) then
            if StartTest = '1' then
                TestEN <= '1';
            else
                TestEN <= '0';
            end if;
        end if;
    end process;

    --Assign outputs
    Complete <= Complete_v;
    Pass <= Pass_v;




end Datapath;
















