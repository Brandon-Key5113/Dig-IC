
--
-- Definition of  nBitMux_2to1
--
--      Sun Nov 17 15:29:20 2019
--
--      LeonardoSpectrum Level 3, 2008b.3
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
library gdk;
use gdk.gdk_comps.all;

entity nBitMux_2to1 is
   port (
      A : IN std_logic_vector (15 DOWNTO 0) ;
      B : IN std_logic_vector (15 DOWNTO 0) ;
      sel : IN std_logic ;
      Y : OUT std_logic_vector (15 DOWNTO 0)) ;
end nBitMux_2to1 ;

architecture Dataflow of nBitMux_2to1 is
begin
   ix7 : mux21 port map ( Y=>Y(0), A0=>A(0), A1=>B(0), S0=>sel);
   ix15 : mux21 port map ( Y=>Y(1), A0=>A(1), A1=>B(1), S0=>sel);
   ix23 : mux21 port map ( Y=>Y(2), A0=>A(2), A1=>B(2), S0=>sel);
   ix31 : mux21 port map ( Y=>Y(3), A0=>A(3), A1=>B(3), S0=>sel);
   ix39 : mux21 port map ( Y=>Y(4), A0=>A(4), A1=>B(4), S0=>sel);
   ix47 : mux21 port map ( Y=>Y(5), A0=>A(5), A1=>B(5), S0=>sel);
   ix55 : mux21 port map ( Y=>Y(6), A0=>A(6), A1=>B(6), S0=>sel);
   ix63 : mux21 port map ( Y=>Y(7), A0=>A(7), A1=>B(7), S0=>sel);
   ix71 : mux21 port map ( Y=>Y(8), A0=>A(8), A1=>B(8), S0=>sel);
   ix79 : mux21 port map ( Y=>Y(9), A0=>A(9), A1=>B(9), S0=>sel);
   ix87 : mux21 port map ( Y=>Y(10), A0=>A(10), A1=>B(10), S0=>sel);
   ix95 : mux21 port map ( Y=>Y(11), A0=>A(11), A1=>B(11), S0=>sel);
   ix103 : mux21 port map ( Y=>Y(12), A0=>A(12), A1=>B(12), S0=>sel);
   ix111 : mux21 port map ( Y=>Y(13), A0=>A(13), A1=>B(13), S0=>sel);
   ix119 : mux21 port map ( Y=>Y(14), A0=>A(14), A1=>B(14), S0=>sel);
   ix127 : mux21 port map ( Y=>Y(15), A0=>A(15), A1=>B(15), S0=>sel);
end Dataflow ;

