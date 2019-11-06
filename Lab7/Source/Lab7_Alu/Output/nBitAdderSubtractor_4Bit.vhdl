
-- 
-- Definition of  nBitAdderSubtractor_4Bit
-- 
--      Sun Nov  3 13:52:52 2019
--      
--      LeonardoSpectrum Level 3, 2008b.3
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity nBitAdderSubtractor_4Bit is
   port (
      A : IN std_logic_vector (15 DOWNTO 0) ;
      B : IN std_logic_vector (15 DOWNTO 0) ;
      SEL : IN std_logic ;
      Y : OUT std_logic_vector (15 DOWNTO 0) ;
      CB : OUT std_logic) ;
end nBitAdderSubtractor_4Bit ;

architecture struct of nBitAdderSubtractor_4Bit is
   signal nx0, nx42, nx44, nx54, nx56, nx66, nx68, nx78, nx80, nx90, nx92, 
      nx102, nx104, nx114, nx116, nx126, nx128, nx138, nx140, nx150, nx152, 
      nx162, nx164, nx174, nx176, nx186, nx188, nx198, nx200, nx210, nx216, 
      nx226, nx240, nx243, nx245, nx251, nx259, nx267, nx275, nx283, nx291, 
      nx299, nx307, nx315, nx323, nx331, nx339, nx347, nx360, nx366, nx372, 
      nx378, nx384, nx390, nx396, nx402, nx408, nx414, nx420, nx426, nx430, 
      nx432, nx444, nx456, nx458, nx460, nx462, nx464, nx466, nx468, nx470, 
      nx472, nx474, nx476, nx478, nx480, nx482: std_logic ;

begin
   ix235 : xnor2 port map ( Y=>CB, A0=>nx240, A1=>SEL);
   ix241 : aoi22 port map ( Y=>nx240, A0=>A(15), A1=>nx216, B0=>nx210, B1=>
      nx0);
   ix217 : nand02 port map ( Y=>nx216, A0=>nx243, A1=>nx245);
   ix244 : xnor2 port map ( Y=>nx243, A0=>B(15), A1=>SEL);
   ix252 : xnor2 port map ( Y=>nx251, A0=>B(13), A1=>SEL);
   ix260 : xnor2 port map ( Y=>nx259, A0=>B(12), A1=>SEL);
   ix268 : xnor2 port map ( Y=>nx267, A0=>B(11), A1=>SEL);
   ix276 : xnor2 port map ( Y=>nx275, A0=>B(10), A1=>SEL);
   ix284 : xnor2 port map ( Y=>nx283, A0=>B(9), A1=>SEL);
   ix292 : xnor2 port map ( Y=>nx291, A0=>B(8), A1=>SEL);
   ix300 : xnor2 port map ( Y=>nx299, A0=>B(7), A1=>SEL);
   ix308 : xnor2 port map ( Y=>nx307, A0=>B(6), A1=>SEL);
   ix316 : xnor2 port map ( Y=>nx315, A0=>B(5), A1=>SEL);
   ix324 : xnor2 port map ( Y=>nx323, A0=>B(4), A1=>SEL);
   ix332 : xnor2 port map ( Y=>nx331, A0=>B(3), A1=>SEL);
   ix340 : xnor2 port map ( Y=>nx339, A0=>B(2), A1=>SEL);
   ix348 : xnor2 port map ( Y=>nx347, A0=>B(1), A1=>SEL);
   ix43 : mux21 port map ( Y=>nx42, A0=>SEL, A1=>A(0), S0=>B(0));
   ix361 : xnor2 port map ( Y=>nx360, A0=>nx347, A1=>nx44);
   ix45 : xnor2 port map ( Y=>nx44, A0=>A(1), A1=>nx42);
   ix367 : xnor2 port map ( Y=>nx366, A0=>nx339, A1=>nx56);
   ix57 : xnor2 port map ( Y=>nx56, A0=>A(2), A1=>nx54);
   ix373 : xnor2 port map ( Y=>nx372, A0=>nx331, A1=>nx68);
   ix69 : xnor2 port map ( Y=>nx68, A0=>A(3), A1=>nx66);
   ix379 : xnor2 port map ( Y=>nx378, A0=>nx323, A1=>nx80);
   ix81 : xnor2 port map ( Y=>nx80, A0=>A(4), A1=>nx78);
   ix385 : xnor2 port map ( Y=>nx384, A0=>nx315, A1=>nx92);
   ix93 : xnor2 port map ( Y=>nx92, A0=>A(5), A1=>nx90);
   ix391 : xnor2 port map ( Y=>nx390, A0=>nx307, A1=>nx104);
   ix105 : xnor2 port map ( Y=>nx104, A0=>A(6), A1=>nx102);
   ix397 : xnor2 port map ( Y=>nx396, A0=>nx299, A1=>nx116);
   ix117 : xnor2 port map ( Y=>nx116, A0=>A(7), A1=>nx114);
   ix403 : xnor2 port map ( Y=>nx402, A0=>nx291, A1=>nx128);
   ix129 : xnor2 port map ( Y=>nx128, A0=>A(8), A1=>nx126);
   ix409 : xnor2 port map ( Y=>nx408, A0=>nx283, A1=>nx140);
   ix141 : xnor2 port map ( Y=>nx140, A0=>A(9), A1=>nx138);
   ix415 : xnor2 port map ( Y=>nx414, A0=>nx275, A1=>nx152);
   ix153 : xnor2 port map ( Y=>nx152, A0=>A(10), A1=>nx150);
   ix421 : xnor2 port map ( Y=>nx420, A0=>nx267, A1=>nx164);
   ix165 : xnor2 port map ( Y=>nx164, A0=>A(11), A1=>nx162);
   ix427 : xnor2 port map ( Y=>nx426, A0=>nx259, A1=>nx176);
   ix177 : xnor2 port map ( Y=>nx176, A0=>A(12), A1=>nx174);
   ix431 : xnor2 port map ( Y=>nx430, A0=>nx432, A1=>nx200);
   ix433 : xnor2 port map ( Y=>nx432, A0=>B(14), A1=>SEL);
   ix201 : xnor2 port map ( Y=>nx200, A0=>A(14), A1=>nx198);
   ix445 : xnor2 port map ( Y=>nx444, A0=>nx251, A1=>nx188);
   ix189 : xnor2 port map ( Y=>nx188, A0=>A(13), A1=>nx186);
   ix35 : xor2 port map ( Y=>Y(0), A0=>B(0), A1=>A(0));
   ix233 : ao32 port map ( Y=>Y(15), A0=>nx0, A1=>A(15), A2=>nx210, B0=>
      nx240, B1=>nx226);
   ix227 : or03 port map ( Y=>nx226, A0=>nx210, A1=>A(15), A2=>nx0);
   ix246 : inv01 port map ( Y=>nx245, A=>nx210);
   ix1 : inv01 port map ( Y=>nx0, A=>nx243);
   ix47 : inv01 port map ( Y=>Y(1), A=>nx360);
   ix59 : inv01 port map ( Y=>Y(2), A=>nx366);
   ix71 : inv01 port map ( Y=>Y(3), A=>nx372);
   ix83 : inv01 port map ( Y=>Y(4), A=>nx378);
   ix95 : inv01 port map ( Y=>Y(5), A=>nx384);
   ix107 : inv01 port map ( Y=>Y(6), A=>nx390);
   ix119 : inv01 port map ( Y=>Y(7), A=>nx396);
   ix131 : inv01 port map ( Y=>Y(8), A=>nx402);
   ix143 : inv01 port map ( Y=>Y(9), A=>nx408);
   ix155 : inv01 port map ( Y=>Y(10), A=>nx414);
   ix167 : inv01 port map ( Y=>Y(11), A=>nx420);
   ix179 : inv01 port map ( Y=>Y(12), A=>nx426);
   ix194 : inv01 port map ( Y=>Y(13), A=>nx444);
   ix203 : inv01 port map ( Y=>Y(14), A=>nx430);
   ix199 : ao22 port map ( Y=>nx198, A0=>A(13), A1=>nx444, B0=>nx186, B1=>
      nx456);
   ix455 : inv01 port map ( Y=>nx456, A=>nx251);
   ix187 : ao22 port map ( Y=>nx186, A0=>A(12), A1=>nx426, B0=>nx174, B1=>
      nx458);
   ix457 : inv01 port map ( Y=>nx458, A=>nx259);
   ix175 : ao22 port map ( Y=>nx174, A0=>A(11), A1=>nx420, B0=>nx162, B1=>
      nx460);
   ix459 : inv01 port map ( Y=>nx460, A=>nx267);
   ix163 : ao22 port map ( Y=>nx162, A0=>A(10), A1=>nx414, B0=>nx150, B1=>
      nx462);
   ix461 : inv01 port map ( Y=>nx462, A=>nx275);
   ix151 : ao22 port map ( Y=>nx150, A0=>A(9), A1=>nx408, B0=>nx138, B1=>
      nx464);
   ix463 : inv01 port map ( Y=>nx464, A=>nx283);
   ix139 : ao22 port map ( Y=>nx138, A0=>A(8), A1=>nx402, B0=>nx126, B1=>
      nx466);
   ix465 : inv01 port map ( Y=>nx466, A=>nx291);
   ix127 : ao22 port map ( Y=>nx126, A0=>A(7), A1=>nx396, B0=>nx114, B1=>
      nx468);
   ix467 : inv01 port map ( Y=>nx468, A=>nx299);
   ix115 : ao22 port map ( Y=>nx114, A0=>A(6), A1=>nx390, B0=>nx102, B1=>
      nx470);
   ix469 : inv01 port map ( Y=>nx470, A=>nx307);
   ix103 : ao22 port map ( Y=>nx102, A0=>A(5), A1=>nx384, B0=>nx90, B1=>
      nx472);
   ix471 : inv01 port map ( Y=>nx472, A=>nx315);
   ix91 : ao22 port map ( Y=>nx90, A0=>A(4), A1=>nx378, B0=>nx78, B1=>nx474
   );
   ix473 : inv01 port map ( Y=>nx474, A=>nx323);
   ix79 : ao22 port map ( Y=>nx78, A0=>A(3), A1=>nx372, B0=>nx66, B1=>nx476
   );
   ix475 : inv01 port map ( Y=>nx476, A=>nx331);
   ix67 : ao22 port map ( Y=>nx66, A0=>A(2), A1=>nx366, B0=>nx54, B1=>nx478
   );
   ix477 : inv01 port map ( Y=>nx478, A=>nx339);
   ix55 : ao22 port map ( Y=>nx54, A0=>A(1), A1=>nx360, B0=>nx42, B1=>nx480
   );
   ix479 : inv01 port map ( Y=>nx480, A=>nx347);
   ix211 : ao22 port map ( Y=>nx210, A0=>A(14), A1=>nx430, B0=>nx198, B1=>
      nx482);
   ix481 : inv01 port map ( Y=>nx482, A=>nx432);
end struct ;

