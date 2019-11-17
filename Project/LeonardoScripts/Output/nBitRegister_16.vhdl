
-- 
-- Definition of  nBitRegister_16
-- 
--      Sun Nov 17 14:04:04 2019
--      
--      LeonardoSpectrum Level 3, 2008b.3
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity nBitRegister_16 is
   port (
      nBitIn : IN std_logic_vector (15 DOWNTO 0) ;
      WE : IN std_logic ;
      Reset : IN std_logic ;
      clk : IN std_logic ;
      Y : OUT std_logic_vector (15 DOWNTO 0)) ;
end nBitRegister_16 ;

architecture behav of nBitRegister_16 is
   signal Y_dup0_15, Y_dup0_14, Y_dup0_13, Y_dup0_12, Y_dup0_11, Y_dup0_10, 
      Y_dup0_9, Y_dup0_8, Y_dup0_7, Y_dup0_6, Y_dup0_5, Y_dup0_4, Y_dup0_3, 
      Y_dup0_2, Y_dup0_1, Y_dup0_0, NOT_Reset, nx230, nx240, nx250, nx260, 
      nx270, nx280, nx290, nx300, nx310, nx320, nx330, nx340, nx350, nx360, 
      nx370, nx380: std_logic ;

begin
   Y(15) <= Y_dup0_15 ;
   Y(14) <= Y_dup0_14 ;
   Y(13) <= Y_dup0_13 ;
   Y(12) <= Y_dup0_12 ;
   Y(11) <= Y_dup0_11 ;
   Y(10) <= Y_dup0_10 ;
   Y(9) <= Y_dup0_9 ;
   Y(8) <= Y_dup0_8 ;
   Y(7) <= Y_dup0_7 ;
   Y(6) <= Y_dup0_6 ;
   Y(5) <= Y_dup0_5 ;
   Y(4) <= Y_dup0_4 ;
   Y(3) <= Y_dup0_3 ;
   Y(2) <= Y_dup0_2 ;
   Y(1) <= Y_dup0_1 ;
   Y(0) <= Y_dup0_0 ;
   reg_Y_0 : dffr port map ( Q=>Y_dup0_0, QB=>OPEN, D=>nx230, CLK=>clk, R=>
      NOT_Reset);
   ix231 : mux21 port map ( Y=>nx230, A0=>Y_dup0_0, A1=>nBitIn(0), S0=>WE);
   ix393 : inv01 port map ( Y=>NOT_Reset, A=>Reset);
   reg_Y_1 : dffr port map ( Q=>Y_dup0_1, QB=>OPEN, D=>nx240, CLK=>clk, R=>
      NOT_Reset);
   ix241 : mux21 port map ( Y=>nx240, A0=>Y_dup0_1, A1=>nBitIn(1), S0=>WE);
   reg_Y_2 : dffr port map ( Q=>Y_dup0_2, QB=>OPEN, D=>nx250, CLK=>clk, R=>
      NOT_Reset);
   ix251 : mux21 port map ( Y=>nx250, A0=>Y_dup0_2, A1=>nBitIn(2), S0=>WE);
   reg_Y_3 : dffr port map ( Q=>Y_dup0_3, QB=>OPEN, D=>nx260, CLK=>clk, R=>
      NOT_Reset);
   ix261 : mux21 port map ( Y=>nx260, A0=>Y_dup0_3, A1=>nBitIn(3), S0=>WE);
   reg_Y_4 : dffr port map ( Q=>Y_dup0_4, QB=>OPEN, D=>nx270, CLK=>clk, R=>
      NOT_Reset);
   ix271 : mux21 port map ( Y=>nx270, A0=>Y_dup0_4, A1=>nBitIn(4), S0=>WE);
   reg_Y_5 : dffr port map ( Q=>Y_dup0_5, QB=>OPEN, D=>nx280, CLK=>clk, R=>
      NOT_Reset);
   ix281 : mux21 port map ( Y=>nx280, A0=>Y_dup0_5, A1=>nBitIn(5), S0=>WE);
   reg_Y_6 : dffr port map ( Q=>Y_dup0_6, QB=>OPEN, D=>nx290, CLK=>clk, R=>
      NOT_Reset);
   ix291 : mux21 port map ( Y=>nx290, A0=>Y_dup0_6, A1=>nBitIn(6), S0=>WE);
   reg_Y_7 : dffr port map ( Q=>Y_dup0_7, QB=>OPEN, D=>nx300, CLK=>clk, R=>
      NOT_Reset);
   ix301 : mux21 port map ( Y=>nx300, A0=>Y_dup0_7, A1=>nBitIn(7), S0=>WE);
   reg_Y_8 : dffr port map ( Q=>Y_dup0_8, QB=>OPEN, D=>nx310, CLK=>clk, R=>
      NOT_Reset);
   ix311 : mux21 port map ( Y=>nx310, A0=>Y_dup0_8, A1=>nBitIn(8), S0=>WE);
   reg_Y_9 : dffr port map ( Q=>Y_dup0_9, QB=>OPEN, D=>nx320, CLK=>clk, R=>
      NOT_Reset);
   ix321 : mux21 port map ( Y=>nx320, A0=>Y_dup0_9, A1=>nBitIn(9), S0=>WE);
   reg_Y_10 : dffr port map ( Q=>Y_dup0_10, QB=>OPEN, D=>nx330, CLK=>clk, R
      =>NOT_Reset);
   ix331 : mux21 port map ( Y=>nx330, A0=>Y_dup0_10, A1=>nBitIn(10), S0=>WE
   );
   reg_Y_11 : dffr port map ( Q=>Y_dup0_11, QB=>OPEN, D=>nx340, CLK=>clk, R
      =>NOT_Reset);
   ix341 : mux21 port map ( Y=>nx340, A0=>Y_dup0_11, A1=>nBitIn(11), S0=>WE
   );
   reg_Y_12 : dffr port map ( Q=>Y_dup0_12, QB=>OPEN, D=>nx350, CLK=>clk, R
      =>NOT_Reset);
   ix351 : mux21 port map ( Y=>nx350, A0=>Y_dup0_12, A1=>nBitIn(12), S0=>WE
   );
   reg_Y_13 : dffr port map ( Q=>Y_dup0_13, QB=>OPEN, D=>nx360, CLK=>clk, R
      =>NOT_Reset);
   ix361 : mux21 port map ( Y=>nx360, A0=>Y_dup0_13, A1=>nBitIn(13), S0=>WE
   );
   reg_Y_14 : dffr port map ( Q=>Y_dup0_14, QB=>OPEN, D=>nx370, CLK=>clk, R
      =>NOT_Reset);
   ix371 : mux21 port map ( Y=>nx370, A0=>Y_dup0_14, A1=>nBitIn(14), S0=>WE
   );
   reg_Y_15 : dffr port map ( Q=>Y_dup0_15, QB=>OPEN, D=>nx380, CLK=>clk, R
      =>NOT_Reset);
   ix381 : mux21 port map ( Y=>nx380, A0=>Y_dup0_15, A1=>nBitIn(15), S0=>WE
   );
end behav ;

