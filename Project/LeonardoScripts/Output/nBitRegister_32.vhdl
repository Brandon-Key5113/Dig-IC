
-- 
-- Definition of  nBitRegister_32
-- 
--      Sun Nov 17 14:04:11 2019
--      
--      LeonardoSpectrum Level 3, 2008b.3
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity nBitRegister_32 is
   port (
      nBitIn : IN std_logic_vector (31 DOWNTO 0) ;
      WE : IN std_logic ;
      Reset : IN std_logic ;
      clk : IN std_logic ;
      Y : OUT std_logic_vector (31 DOWNTO 0)) ;
end nBitRegister_32 ;

architecture behav of nBitRegister_32 is
   signal Y_dup0_31, Y_dup0_30, Y_dup0_29, Y_dup0_28, Y_dup0_27, Y_dup0_26, 
      Y_dup0_25, Y_dup0_24, Y_dup0_23, Y_dup0_22, Y_dup0_21, Y_dup0_20, 
      Y_dup0_19, Y_dup0_18, Y_dup0_17, Y_dup0_16, Y_dup0_15, Y_dup0_14, 
      Y_dup0_13, Y_dup0_12, Y_dup0_11, Y_dup0_10, Y_dup0_9, Y_dup0_8, 
      Y_dup0_7, Y_dup0_6, Y_dup0_5, Y_dup0_4, Y_dup0_3, Y_dup0_2, Y_dup0_1, 
      Y_dup0_0, NOT_Reset, nx422, nx432, nx442, nx452, nx462, nx472, nx482, 
      nx492, nx502, nx512, nx522, nx532, nx542, nx552, nx562, nx572, nx582, 
      nx592, nx602, nx612, nx622, nx632, nx642, nx652, nx662, nx672, nx682, 
      nx692, nx702, nx712, nx722, nx732, nx845, nx847: std_logic ;

begin
   Y(31) <= Y_dup0_31 ;
   Y(30) <= Y_dup0_30 ;
   Y(29) <= Y_dup0_29 ;
   Y(28) <= Y_dup0_28 ;
   Y(27) <= Y_dup0_27 ;
   Y(26) <= Y_dup0_26 ;
   Y(25) <= Y_dup0_25 ;
   Y(24) <= Y_dup0_24 ;
   Y(23) <= Y_dup0_23 ;
   Y(22) <= Y_dup0_22 ;
   Y(21) <= Y_dup0_21 ;
   Y(20) <= Y_dup0_20 ;
   Y(19) <= Y_dup0_19 ;
   Y(18) <= Y_dup0_18 ;
   Y(17) <= Y_dup0_17 ;
   Y(16) <= Y_dup0_16 ;
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
   reg_Y_0 : dffr port map ( Q=>Y_dup0_0, QB=>OPEN, D=>nx422, CLK=>clk, R=>
      nx845);
   ix423 : mux21 port map ( Y=>nx422, A0=>Y_dup0_0, A1=>nBitIn(0), S0=>WE);
   ix745 : inv01 port map ( Y=>NOT_Reset, A=>Reset);
   reg_Y_1 : dffr port map ( Q=>Y_dup0_1, QB=>OPEN, D=>nx432, CLK=>clk, R=>
      nx845);
   ix433 : mux21 port map ( Y=>nx432, A0=>Y_dup0_1, A1=>nBitIn(1), S0=>WE);
   reg_Y_2 : dffr port map ( Q=>Y_dup0_2, QB=>OPEN, D=>nx442, CLK=>clk, R=>
      nx845);
   ix443 : mux21 port map ( Y=>nx442, A0=>Y_dup0_2, A1=>nBitIn(2), S0=>WE);
   reg_Y_3 : dffr port map ( Q=>Y_dup0_3, QB=>OPEN, D=>nx452, CLK=>clk, R=>
      nx845);
   ix453 : mux21 port map ( Y=>nx452, A0=>Y_dup0_3, A1=>nBitIn(3), S0=>WE);
   reg_Y_4 : dffr port map ( Q=>Y_dup0_4, QB=>OPEN, D=>nx462, CLK=>clk, R=>
      nx845);
   ix463 : mux21 port map ( Y=>nx462, A0=>Y_dup0_4, A1=>nBitIn(4), S0=>WE);
   reg_Y_5 : dffr port map ( Q=>Y_dup0_5, QB=>OPEN, D=>nx472, CLK=>clk, R=>
      nx845);
   ix473 : mux21 port map ( Y=>nx472, A0=>Y_dup0_5, A1=>nBitIn(5), S0=>WE);
   reg_Y_6 : dffr port map ( Q=>Y_dup0_6, QB=>OPEN, D=>nx482, CLK=>clk, R=>
      nx845);
   ix483 : mux21 port map ( Y=>nx482, A0=>Y_dup0_6, A1=>nBitIn(6), S0=>WE);
   reg_Y_7 : dffr port map ( Q=>Y_dup0_7, QB=>OPEN, D=>nx492, CLK=>clk, R=>
      nx845);
   ix493 : mux21 port map ( Y=>nx492, A0=>Y_dup0_7, A1=>nBitIn(7), S0=>WE);
   reg_Y_8 : dffr port map ( Q=>Y_dup0_8, QB=>OPEN, D=>nx502, CLK=>clk, R=>
      nx845);
   ix503 : mux21 port map ( Y=>nx502, A0=>Y_dup0_8, A1=>nBitIn(8), S0=>WE);
   reg_Y_9 : dffr port map ( Q=>Y_dup0_9, QB=>OPEN, D=>nx512, CLK=>clk, R=>
      nx845);
   ix513 : mux21 port map ( Y=>nx512, A0=>Y_dup0_9, A1=>nBitIn(9), S0=>WE);
   reg_Y_10 : dffr port map ( Q=>Y_dup0_10, QB=>OPEN, D=>nx522, CLK=>clk, R
      =>nx845);
   ix523 : mux21 port map ( Y=>nx522, A0=>Y_dup0_10, A1=>nBitIn(10), S0=>WE
   );
   reg_Y_11 : dffr port map ( Q=>Y_dup0_11, QB=>OPEN, D=>nx532, CLK=>clk, R
      =>nx845);
   ix533 : mux21 port map ( Y=>nx532, A0=>Y_dup0_11, A1=>nBitIn(11), S0=>WE
   );
   reg_Y_12 : dffr port map ( Q=>Y_dup0_12, QB=>OPEN, D=>nx542, CLK=>clk, R
      =>nx845);
   ix543 : mux21 port map ( Y=>nx542, A0=>Y_dup0_12, A1=>nBitIn(12), S0=>WE
   );
   reg_Y_13 : dffr port map ( Q=>Y_dup0_13, QB=>OPEN, D=>nx552, CLK=>clk, R
      =>nx845);
   ix553 : mux21 port map ( Y=>nx552, A0=>Y_dup0_13, A1=>nBitIn(13), S0=>WE
   );
   reg_Y_14 : dffr port map ( Q=>Y_dup0_14, QB=>OPEN, D=>nx562, CLK=>clk, R
      =>nx845);
   ix563 : mux21 port map ( Y=>nx562, A0=>Y_dup0_14, A1=>nBitIn(14), S0=>WE
   );
   reg_Y_15 : dffr port map ( Q=>Y_dup0_15, QB=>OPEN, D=>nx572, CLK=>clk, R
      =>nx847);
   ix573 : mux21 port map ( Y=>nx572, A0=>Y_dup0_15, A1=>nBitIn(15), S0=>WE
   );
   reg_Y_16 : dffr port map ( Q=>Y_dup0_16, QB=>OPEN, D=>nx582, CLK=>clk, R
      =>nx847);
   ix583 : mux21 port map ( Y=>nx582, A0=>Y_dup0_16, A1=>nBitIn(16), S0=>WE
   );
   reg_Y_17 : dffr port map ( Q=>Y_dup0_17, QB=>OPEN, D=>nx592, CLK=>clk, R
      =>nx847);
   ix593 : mux21 port map ( Y=>nx592, A0=>Y_dup0_17, A1=>nBitIn(17), S0=>WE
   );
   reg_Y_18 : dffr port map ( Q=>Y_dup0_18, QB=>OPEN, D=>nx602, CLK=>clk, R
      =>nx847);
   ix603 : mux21 port map ( Y=>nx602, A0=>Y_dup0_18, A1=>nBitIn(18), S0=>WE
   );
   reg_Y_19 : dffr port map ( Q=>Y_dup0_19, QB=>OPEN, D=>nx612, CLK=>clk, R
      =>nx847);
   ix613 : mux21 port map ( Y=>nx612, A0=>Y_dup0_19, A1=>nBitIn(19), S0=>WE
   );
   reg_Y_20 : dffr port map ( Q=>Y_dup0_20, QB=>OPEN, D=>nx622, CLK=>clk, R
      =>nx847);
   ix623 : mux21 port map ( Y=>nx622, A0=>Y_dup0_20, A1=>nBitIn(20), S0=>WE
   );
   reg_Y_21 : dffr port map ( Q=>Y_dup0_21, QB=>OPEN, D=>nx632, CLK=>clk, R
      =>nx847);
   ix633 : mux21 port map ( Y=>nx632, A0=>Y_dup0_21, A1=>nBitIn(21), S0=>WE
   );
   reg_Y_22 : dffr port map ( Q=>Y_dup0_22, QB=>OPEN, D=>nx642, CLK=>clk, R
      =>nx847);
   ix643 : mux21 port map ( Y=>nx642, A0=>Y_dup0_22, A1=>nBitIn(22), S0=>WE
   );
   reg_Y_23 : dffr port map ( Q=>Y_dup0_23, QB=>OPEN, D=>nx652, CLK=>clk, R
      =>nx847);
   ix653 : mux21 port map ( Y=>nx652, A0=>Y_dup0_23, A1=>nBitIn(23), S0=>WE
   );
   reg_Y_24 : dffr port map ( Q=>Y_dup0_24, QB=>OPEN, D=>nx662, CLK=>clk, R
      =>nx847);
   ix663 : mux21 port map ( Y=>nx662, A0=>Y_dup0_24, A1=>nBitIn(24), S0=>WE
   );
   reg_Y_25 : dffr port map ( Q=>Y_dup0_25, QB=>OPEN, D=>nx672, CLK=>clk, R
      =>nx847);
   ix673 : mux21 port map ( Y=>nx672, A0=>Y_dup0_25, A1=>nBitIn(25), S0=>WE
   );
   reg_Y_26 : dffr port map ( Q=>Y_dup0_26, QB=>OPEN, D=>nx682, CLK=>clk, R
      =>nx847);
   ix683 : mux21 port map ( Y=>nx682, A0=>Y_dup0_26, A1=>nBitIn(26), S0=>WE
   );
   reg_Y_27 : dffr port map ( Q=>Y_dup0_27, QB=>OPEN, D=>nx692, CLK=>clk, R
      =>nx847);
   ix693 : mux21 port map ( Y=>nx692, A0=>Y_dup0_27, A1=>nBitIn(27), S0=>WE
   );
   reg_Y_28 : dffr port map ( Q=>Y_dup0_28, QB=>OPEN, D=>nx702, CLK=>clk, R
      =>nx847);
   ix703 : mux21 port map ( Y=>nx702, A0=>Y_dup0_28, A1=>nBitIn(28), S0=>WE
   );
   reg_Y_29 : dffr port map ( Q=>Y_dup0_29, QB=>OPEN, D=>nx712, CLK=>clk, R
      =>nx847);
   ix713 : mux21 port map ( Y=>nx712, A0=>Y_dup0_29, A1=>nBitIn(29), S0=>WE
   );
   reg_Y_30 : dffr port map ( Q=>Y_dup0_30, QB=>OPEN, D=>nx722, CLK=>clk, R
      =>NOT_Reset);
   ix723 : mux21 port map ( Y=>nx722, A0=>Y_dup0_30, A1=>nBitIn(30), S0=>WE
   );
   reg_Y_31 : dffr port map ( Q=>Y_dup0_31, QB=>OPEN, D=>nx732, CLK=>clk, R
      =>NOT_Reset);
   ix733 : mux21 port map ( Y=>nx732, A0=>Y_dup0_31, A1=>nBitIn(31), S0=>WE
   );
   ix844 : inv01 port map ( Y=>nx845, A=>Reset);
   ix846 : inv01 port map ( Y=>nx847, A=>Reset);
end behav ;

