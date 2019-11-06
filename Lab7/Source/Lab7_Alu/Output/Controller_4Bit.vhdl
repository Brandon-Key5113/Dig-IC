
-- 
-- Definition of  Controller_4Bit
-- 
--      Sun Nov  3 13:53:33 2019
--      
--      LeonardoSpectrum Level 3, 2008b.3
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Controller_4Bit is
   port (
      Control : IN std_logic_vector (1 DOWNTO 0) ;
      ADD_SUB_In : IN std_logic_vector (15 DOWNTO 0) ;
      OR_In : IN std_logic_vector (15 DOWNTO 0) ;
      AND_In : IN std_logic_vector (15 DOWNTO 0) ;
      ADD_SUB_SEL : OUT std_logic ;
      nBitOut : OUT std_logic_vector (15 DOWNTO 0)) ;
end Controller_4Bit ;

architecture behav of Controller_4Bit is
   signal nx6, nx12, nx111, nx119, nx123, nx127, nx131, nx135, nx139, nx143, 
      nx147, nx151, nx155, nx159, nx163, nx167, nx171, nx174, nx181, nx183, 
      nx185: std_logic ;

begin
   ix171 : and02 port map ( Y=>ADD_SUB_SEL, A0=>Control(1), A1=>Control(0));
   ix19 : inv01 port map ( Y=>nBitOut(0), A=>nx111);
   ix112 : aoi222 port map ( Y=>nx111, A0=>ADD_SUB_In(0), A1=>Control(1), B0
      =>AND_In(0), B1=>nx181, C0=>OR_In(0), C1=>nx183);
   ix7 : nor02 port map ( Y=>nx6, A0=>Control(1), A1=>Control(0));
   ix13 : nor02ii port map ( Y=>nx12, A0=>Control(1), A1=>Control(0));
   ix29 : inv01 port map ( Y=>nBitOut(1), A=>nx119);
   ix120 : aoi222 port map ( Y=>nx119, A0=>ADD_SUB_In(1), A1=>Control(1), B0
      =>AND_In(1), B1=>nx181, C0=>OR_In(1), C1=>nx183);
   ix42 : inv01 port map ( Y=>nBitOut(2), A=>nx123);
   ix124 : aoi222 port map ( Y=>nx123, A0=>ADD_SUB_In(2), A1=>Control(1), B0
      =>AND_In(2), B1=>nx181, C0=>OR_In(2), C1=>nx183);
   ix49 : inv01 port map ( Y=>nBitOut(3), A=>nx127);
   ix128 : aoi222 port map ( Y=>nx127, A0=>ADD_SUB_In(3), A1=>Control(1), B0
      =>AND_In(3), B1=>nx181, C0=>OR_In(3), C1=>nx183);
   ix59 : inv01 port map ( Y=>nBitOut(4), A=>nx131);
   ix132 : aoi222 port map ( Y=>nx131, A0=>ADD_SUB_In(4), A1=>Control(1), B0
      =>AND_In(4), B1=>nx181, C0=>OR_In(4), C1=>nx183);
   ix69 : inv01 port map ( Y=>nBitOut(5), A=>nx135);
   ix136 : aoi222 port map ( Y=>nx135, A0=>ADD_SUB_In(5), A1=>Control(1), B0
      =>AND_In(5), B1=>nx181, C0=>OR_In(5), C1=>nx183);
   ix79 : inv01 port map ( Y=>nBitOut(6), A=>nx139);
   ix140 : aoi222 port map ( Y=>nx139, A0=>ADD_SUB_In(6), A1=>Control(1), B0
      =>AND_In(6), B1=>nx181, C0=>OR_In(6), C1=>nx183);
   ix89 : inv01 port map ( Y=>nBitOut(7), A=>nx143);
   ix144 : aoi222 port map ( Y=>nx143, A0=>ADD_SUB_In(7), A1=>Control(1), B0
      =>AND_In(7), B1=>nx181, C0=>OR_In(7), C1=>nx183);
   ix99 : inv01 port map ( Y=>nBitOut(8), A=>nx147);
   ix148 : aoi222 port map ( Y=>nx147, A0=>ADD_SUB_In(8), A1=>Control(1), B0
      =>AND_In(8), B1=>nx181, C0=>OR_In(8), C1=>nx183);
   ix109 : inv01 port map ( Y=>nBitOut(9), A=>nx151);
   ix152 : aoi222 port map ( Y=>nx151, A0=>ADD_SUB_In(9), A1=>Control(1), B0
      =>AND_In(9), B1=>nx181, C0=>OR_In(9), C1=>nx183);
   ix119 : inv01 port map ( Y=>nBitOut(10), A=>nx155);
   ix156 : aoi222 port map ( Y=>nx155, A0=>ADD_SUB_In(10), A1=>Control(1), 
      B0=>AND_In(10), B1=>nx181, C0=>OR_In(10), C1=>nx183);
   ix129 : inv01 port map ( Y=>nBitOut(11), A=>nx159);
   ix160 : aoi222 port map ( Y=>nx159, A0=>ADD_SUB_In(11), A1=>Control(1), 
      B0=>AND_In(11), B1=>nx181, C0=>OR_In(11), C1=>nx183);
   ix139 : inv01 port map ( Y=>nBitOut(12), A=>nx163);
   ix164 : aoi222 port map ( Y=>nx163, A0=>ADD_SUB_In(12), A1=>Control(1), 
      B0=>AND_In(12), B1=>nx6, C0=>OR_In(12), C1=>nx183);
   ix149 : inv01 port map ( Y=>nBitOut(13), A=>nx167);
   ix168 : aoi222 port map ( Y=>nx167, A0=>ADD_SUB_In(13), A1=>Control(1), 
      B0=>AND_In(13), B1=>nx6, C0=>OR_In(13), C1=>nx183);
   ix159 : inv01 port map ( Y=>nBitOut(14), A=>nx171);
   ix172 : aoi222 port map ( Y=>nx171, A0=>ADD_SUB_In(14), A1=>Control(1), 
      B0=>AND_In(14), B1=>nx6, C0=>OR_In(14), C1=>nx183);
   ix169 : inv01 port map ( Y=>nBitOut(15), A=>nx174);
   ix175 : aoi222 port map ( Y=>nx174, A0=>Control(1), A1=>ADD_SUB_In(15), 
      B0=>AND_In(15), B1=>nx6, C0=>OR_In(15), C1=>nx185);
   ix180 : nor02 port map ( Y=>nx181, A0=>Control(1), A1=>Control(0));
   ix182 : buf02 port map ( Y=>nx183, A=>nx12);
   ix184 : buf02 port map ( Y=>nx185, A=>nx12);
end behav ;

