
-- 
-- Definition of  ALU_1Bit
-- 
--      Sun Nov  3 13:55:47 2019
--      
--      LeonardoSpectrum Level 3, 2008b.3
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ALU_1Bit is
   port (
      Control : IN std_logic_vector (1 DOWNTO 0) ;
      A : IN std_logic ;
      B : IN std_logic ;
      Y : OUT std_logic ;
      CB : OUT std_logic) ;
end ALU_1Bit ;

architecture behav of ALU_1Bit is
   signal nx0, nx79, nx81, nx83, nx85: std_logic ;

begin
   ix5 : and03 port map ( Y=>CB, A0=>nx0, A1=>Control(1), A2=>B);
   ix1 : xor2 port map ( Y=>nx0, A0=>Control(0), A1=>A);
   ix21 : oai32 port map ( Y=>Y, A0=>nx79, A1=>nx81, A2=>Control(1), B0=>
      nx83, B1=>nx85);
   ix80 : inv01 port map ( Y=>nx79, A=>A);
   ix82 : inv01 port map ( Y=>nx81, A=>B);
   ix84 : xnor2 port map ( Y=>nx83, A0=>A, A1=>B);
   ix86 : nor02 port map ( Y=>nx85, A0=>Control(0), A1=>Control(1));
end behav ;

