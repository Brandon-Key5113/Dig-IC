
-- 
-- Definition of  Full_Adder
-- 
--      Sun Nov  3 13:52:20 2019
--      
--      LeonardoSpectrum Level 3, 2008b.3
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Full_Adder is
   port (
      A : IN std_logic ;
      B : IN std_logic ;
      Cin : IN std_logic ;
      Sum : OUT std_logic ;
      Cout : OUT std_logic) ;
end Full_Adder ;

architecture behav of Full_Adder is
   signal Sum_dup0, nx0, nx98: std_logic ;

begin
   Sum <= Sum_dup0 ;
   ix11 : ao22 port map ( Y=>Cout, A0=>A, A1=>B, B0=>Cin, B1=>nx98);
   ix3 : xnor2 port map ( Y=>Sum_dup0, A0=>Cin, A1=>nx0);
   ix1 : xnor2 port map ( Y=>nx0, A0=>A, A1=>B);
   ix99 : inv01 port map ( Y=>nx98, A=>Sum_dup0);
end behav ;

