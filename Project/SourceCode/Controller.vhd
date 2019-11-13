--------------------------------------------------------------------------
--Company      : RIT
--Author       : Brandon Key
--Created      : 03/29/2018
--
--Project Name : Lab 5
--File         : Controller.vhd
--
--Entity       : Controller
--Architecture : behav
--
--Tool Version : VHDL '93
--Description  : Contoller For BIST
--------------------------------------------------------------------------

library  IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity  Controller  is 
    port(
        start_BIST  : in std_logic;

        clk   : in  std_logic;
        rst_n : in  std_logic;

        is_testing     : out std_logic;
        mul_input_ctrl : out std_logic;
        EN_LFSR        : out std_logic;
        rst_n_LFSR     : out std_logic;
        EN_MISR        : out std_logic;
        rst_n_MISR     : out std_logic
        );
end  Controller;
        
architecture  struct of  Controller  is

    type state_type is (multiply, start_test, testing, test_hold);
    signal state, next_state : state_type := multiply;

    signal counter : integer;

    begin

        --update the state to the next_state
        state_proc : process (clk, rst_n) begin
            if rst_n = '0' then
                state <= multiply;
            elsif rising_edge(clk) then
                state <= next_state;
            end if;
        end process state_proc;

    --How to change the state
    next_state_proc : process (clk, rst_n) begin
        if rst_n = '0' then
            next_state <= multiply;
        elsif rising_edge(clk) then
            case (next_state) is
                when multiply =>
                    if start_BIST = '1' then
                        next_state <= start_test;
                    else 
                        next_state <= multiply;
                    end if;
                    
                when testing =>
                    counter <= counter + 1;
                    if counter = 255 then
                        next_state <= test_hold;
                    else 
                        next_state <= testing;
                    end if;

                when start_test =>
                    next_state <= testing;
                    counter <= 0;
                when test_hold =>
                    if start_BIST = '1' then
                        next_state <= test_hold;
                    else 
                        next_state <= multiply;
                    end if;
                when others =>
                    next_state <= multiply;
            end case;

        end if;
    end process next_state_proc;

    --Outputs for the states
    out_proc : process (clk) begin
        if rising_edge(clk) then
            case (state) is
                when multiply =>
                    is_testing <= '0';
                    mul_input_ctrl  <= '1';
                    EN_LFSR    <= '0';
                    rst_n_LFSR <= '0';
                    EN_MISR    <= '0';
                    rst_n_MISR <= '1';

                when start_test =>
                    is_testing <= '1';
                    mul_input_ctrl  <= '0';
                    EN_LFSR    <= '1';
                    rst_n_LFSR <= '1';
                    EN_MISR    <= '0';
                    rst_n_MISR <= '0';

                 when testing =>
                    is_testing <= '1';
                    mul_input_ctrl  <= '0';
                    EN_LFSR    <= '1';
                    rst_n_LFSR <= '1';
                    EN_MISR    <= '1';
                    rst_n_MISR <= '1';

                when test_hold  =>
                    is_testing <= '0';
                    mul_input_ctrl  <= '0';
                    EN_LFSR    <= '0';
                    rst_n_LFSR <= '1';
                    EN_MISR    <= '0';
                    rst_n_MISR <= '1';

                when others =>
                    is_testing <= '0';
                    mul_input_ctrl  <= '1';
                    EN_LFSR    <= '0';
                    rst_n_LFSR <= '0';
                    EN_MISR    <= '0';
                    rst_n_MISR <= '0';
            end case;
        end if;
    end process out_proc;

end  struct;
