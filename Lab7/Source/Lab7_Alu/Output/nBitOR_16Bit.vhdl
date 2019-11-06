
-- 
-- Definition of  nBitOR_16Bit
-- 
--      Sun Nov  3 13:53:15 2019
--      
--      LeonardoSpectrum Level 3, 2008b.3
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity nBitOR_16Bit is
   port (
      A : IN std_logic_vector (15 DOWNTO 0) ;
      B : IN std_logic_vector (15 DOWNTO 0) ;
      Y : OUT std_logic_vector (15 DOWNTO 0)) ;
end nBitOR_16Bit ;

architecture Dataflow of nBitOR_16Bit is
begin
   ix1 : or02 port map ( Y=>Y(0), A0=>A(0), A1=>B(0));
   ix3 : or02 port map ( Y=>Y(1), A0=>A(1), A1=>B(1));
   ix5 : or02 port map ( Y=>Y(2), A0=>A(2), A1=>B(2));
   ix7 : or02 port map ( Y=>Y(3), A0=>A(3), A1=>B(3));
   ix9 : or02 port map ( Y=>Y(4), A0=>A(4), A1=>B(4));
   ix11 : or02 port map ( Y=>Y(5), A0=>A(5), A1=>B(5));
   ix13 : or02 port map ( Y=>Y(6), A0=>A(6), A1=>B(6));
   ix15 : or02 port map ( Y=>Y(7), A0=>A(7), A1=>B(7));
   ix17 : or02 port map ( Y=>Y(8), A0=>A(8), A1=>B(8));
   ix19 : or02 port map ( Y=>Y(9), A0=>A(9), A1=>B(9));
   ix21 : or02 port map ( Y=>Y(10), A0=>A(10), A1=>B(10));
   ix23 : or02 port map ( Y=>Y(11), A0=>A(11), A1=>B(11));
   ix25 : or02 port map ( Y=>Y(12), A0=>A(12), A1=>B(12));
   ix27 : or02 port map ( Y=>Y(13), A0=>A(13), A1=>B(13));
   ix29 : or02 port map ( Y=>Y(14), A0=>A(14), A1=>B(14));
   ix31 : or02 port map ( Y=>Y(15), A0=>A(15), A1=>B(15));
end Dataflow ;

