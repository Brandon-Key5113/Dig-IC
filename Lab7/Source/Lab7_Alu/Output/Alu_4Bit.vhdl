
-- 
-- Definition of  ALU_4Bit
-- 
--      Wed Nov  6 09:57:29 2019
--      
--      LeonardoSpectrum Level 3, 2008b.3
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ALU_4Bit is
   port (
      Control : IN std_logic_vector (1 DOWNTO 0) ;
      A : IN std_logic_vector (15 DOWNTO 0) ;
      B : IN std_logic_vector (15 DOWNTO 0) ;
      nBitOut : OUT std_logic_vector (15 DOWNTO 0) ;
      CB : OUT std_logic) ;
end ALU_4Bit ;

architecture struct of ALU_4Bit is
   signal nx4, nx6, nx18, nx24, nx40, nx48, nx52, nx58, nx64, nx80, nx92, 
      nx98, nx104, nx112, nx120, nx132, nx138, nx144, nx152, nx160, nx172, 
      nx178, nx184, nx192, nx200, nx212, nx218, nx224, nx232, nx240, nx252, 
      nx258, nx264, nx272, nx280, nx292, nx298, nx304, nx312, nx320, nx332, 
      nx338, nx344, nx352, nx360, nx372, nx378, nx384, nx392, nx400, nx412, 
      nx418, nx424, nx432, nx440, nx452, nx458, nx464, nx472, nx480, nx492, 
      nx498, nx504, nx512, nx520, nx532, nx538, nx544, nx552, nx560, nx572, 
      nx578, nx584, nx592, nx600, nx612, nx618, nx632, nx331, nx335, nx339, 
      nx343, nx347, nx351, nx355, nx359, nx369, nx377, nx389, nx391, nx395, 
      nx409, nx411, nx415, nx429, nx431, nx435, nx449, nx451, nx455, nx469, 
      nx471, nx475, nx489, nx491, nx495, nx509, nx511, nx517, nx527, nx531, 
      nx535, nx539, nx545, nx547, nx549, nx557, nx559, nx561, nx569, nx571, 
      nx573, nx581, nx583, nx585, nx593, nx595, nx597, nx605, nx607, nx609, 
      nx617, nx619, nx621, nx629, nx631, nx633, nx639, nx641, nx643, nx651, 
      nx653, nx655, nx660, nx662, nx664, nx669, nx671, nx673, nx678, nx680, 
      nx682, nx687, nx689, nx691, nx693, nx696, nx707, nx709, nx711, nx713, 
      nx719, nx721, nx723: std_logic ;

begin
   ix5 : nand02 port map ( Y=>nx4, A0=>Control(0), A1=>Control(1));
   ix332 : aoi22 port map ( Y=>nx331, A0=>nx584, A1=>nx612, B0=>A(15), B1=>
      nx618);
   ix336 : aoi22 port map ( Y=>nx335, A0=>nx504, A1=>nx532, B0=>A(13), B1=>
      nx538);
   ix340 : aoi22 port map ( Y=>nx339, A0=>nx424, A1=>nx452, B0=>A(11), B1=>
      nx458);
   ix344 : aoi22 port map ( Y=>nx343, A0=>nx344, A1=>nx372, B0=>A(9), B1=>
      nx378);
   ix348 : aoi22 port map ( Y=>nx347, A0=>nx264, A1=>nx292, B0=>A(7), B1=>
      nx298);
   ix352 : aoi22 port map ( Y=>nx351, A0=>nx184, A1=>nx212, B0=>A(5), B1=>
      nx218);
   ix356 : aoi22 port map ( Y=>nx355, A0=>nx104, A1=>nx132, B0=>A(3), B1=>
      nx138);
   ix360 : aoi22 port map ( Y=>nx359, A0=>nx18, A1=>nx52, B0=>A(1), B1=>nx58
   );
   ix19 : mux21 port map ( Y=>nx18, A0=>nx721, A1=>A(0), S0=>B(0));
   ix59 : or02 port map ( Y=>nx58, A0=>nx52, A1=>nx18);
   ix139 : nand02 port map ( Y=>nx138, A0=>nx389, A1=>nx391);
   ix392 : aoi22 port map ( Y=>nx391, A0=>nx64, A1=>nx92, B0=>A(2), B1=>nx98
   );
   ix99 : nand02 port map ( Y=>nx98, A0=>nx369, A1=>nx359);
   ix219 : nand02 port map ( Y=>nx218, A0=>nx409, A1=>nx411);
   ix412 : aoi22 port map ( Y=>nx411, A0=>nx144, A1=>nx172, B0=>A(4), B1=>
      nx178);
   ix179 : nand02 port map ( Y=>nx178, A0=>nx395, A1=>nx355);
   ix299 : nand02 port map ( Y=>nx298, A0=>nx429, A1=>nx431);
   ix432 : aoi22 port map ( Y=>nx431, A0=>nx224, A1=>nx252, B0=>A(6), B1=>
      nx258);
   ix259 : nand02 port map ( Y=>nx258, A0=>nx415, A1=>nx351);
   ix379 : nand02 port map ( Y=>nx378, A0=>nx449, A1=>nx451);
   ix452 : aoi22 port map ( Y=>nx451, A0=>nx304, A1=>nx332, B0=>A(8), B1=>
      nx338);
   ix339 : nand02 port map ( Y=>nx338, A0=>nx435, A1=>nx347);
   ix459 : nand02 port map ( Y=>nx458, A0=>nx469, A1=>nx471);
   ix472 : aoi22 port map ( Y=>nx471, A0=>nx384, A1=>nx412, B0=>A(10), B1=>
      nx418);
   ix419 : nand02 port map ( Y=>nx418, A0=>nx455, A1=>nx343);
   ix539 : nand02 port map ( Y=>nx538, A0=>nx489, A1=>nx491);
   ix492 : aoi22 port map ( Y=>nx491, A0=>nx464, A1=>nx492, B0=>A(12), B1=>
      nx498);
   ix499 : nand02 port map ( Y=>nx498, A0=>nx475, A1=>nx339);
   ix619 : nand02 port map ( Y=>nx618, A0=>nx509, A1=>nx511);
   ix512 : aoi22 port map ( Y=>nx511, A0=>nx544, A1=>nx572, B0=>A(14), B1=>
      nx578);
   ix579 : nand02 port map ( Y=>nx578, A0=>nx495, A1=>nx335);
   ix47 : oai21 port map ( Y=>nBitOut(0), A0=>Control(1), A1=>nx377, B0=>
      nx517);
   ix518 : aoi32 port map ( Y=>nx517, A0=>nx24, A1=>Control(0), A2=>nx377, 
      B0=>Control(1), B1=>nx40);
   ix25 : or02 port map ( Y=>nx24, A0=>nx6, A1=>A(0));
   ix41 : xor2 port map ( Y=>nx40, A0=>A(0), A1=>B(0));
   ix89 : oai321 port map ( Y=>nBitOut(1), A0=>nx527, A1=>nx707, A2=>nx64, 
      B0=>nx531, B1=>nx713, C0=>nx535);
   ix528 : nor03 port map ( Y=>nx527, A0=>nx18, A1=>A(1), A2=>nx52);
   ix532 : inv01 port map ( Y=>nx531, A=>B(1));
   ix536 : oai21 port map ( Y=>nx535, A0=>nx80, A1=>nx719, B0=>A(1));
   ix81 : oai21 port map ( Y=>nx80, A0=>Control(1), A1=>nx531, B0=>nx539);
   ix540 : nand03 port map ( Y=>nx539, A0=>nx52, A1=>Control(1), A2=>nx18);
   ix129 : oai321 port map ( Y=>nBitOut(2), A0=>nx545, A1=>nx707, A2=>nx104, 
      B0=>nx547, B1=>nx713, C0=>nx549);
   ix546 : nor03 port map ( Y=>nx545, A0=>nx64, A1=>A(2), A2=>nx92);
   ix548 : inv01 port map ( Y=>nx547, A=>B(2));
   ix550 : oai21 port map ( Y=>nx549, A0=>nx120, A1=>nx719, B0=>A(2));
   ix121 : ao22 port map ( Y=>nx120, A0=>nx707, A1=>B(2), B0=>nx92, B1=>
      nx112);
   ix169 : oai321 port map ( Y=>nBitOut(3), A0=>nx557, A1=>nx707, A2=>nx144, 
      B0=>nx559, B1=>nx713, C0=>nx561);
   ix558 : nor03 port map ( Y=>nx557, A0=>nx104, A1=>A(3), A2=>nx132);
   ix560 : inv01 port map ( Y=>nx559, A=>B(3));
   ix562 : oai21 port map ( Y=>nx561, A0=>nx160, A1=>nx719, B0=>A(3));
   ix161 : ao22 port map ( Y=>nx160, A0=>nx707, A1=>B(3), B0=>nx132, B1=>
      nx152);
   ix209 : oai321 port map ( Y=>nBitOut(4), A0=>nx569, A1=>nx707, A2=>nx184, 
      B0=>nx571, B1=>nx713, C0=>nx573);
   ix570 : nor03 port map ( Y=>nx569, A0=>nx144, A1=>A(4), A2=>nx172);
   ix572 : inv01 port map ( Y=>nx571, A=>B(4));
   ix574 : oai21 port map ( Y=>nx573, A0=>nx200, A1=>nx719, B0=>A(4));
   ix201 : ao22 port map ( Y=>nx200, A0=>nx707, A1=>B(4), B0=>nx172, B1=>
      nx192);
   ix249 : oai321 port map ( Y=>nBitOut(5), A0=>nx581, A1=>nx707, A2=>nx224, 
      B0=>nx583, B1=>nx713, C0=>nx585);
   ix582 : nor03 port map ( Y=>nx581, A0=>nx184, A1=>A(5), A2=>nx212);
   ix584 : inv01 port map ( Y=>nx583, A=>B(5));
   ix586 : oai21 port map ( Y=>nx585, A0=>nx240, A1=>nx719, B0=>A(5));
   ix241 : ao22 port map ( Y=>nx240, A0=>nx707, A1=>B(5), B0=>nx212, B1=>
      nx232);
   ix289 : oai321 port map ( Y=>nBitOut(6), A0=>nx593, A1=>nx707, A2=>nx264, 
      B0=>nx595, B1=>nx713, C0=>nx597);
   ix594 : nor03 port map ( Y=>nx593, A0=>nx224, A1=>A(6), A2=>nx252);
   ix596 : inv01 port map ( Y=>nx595, A=>B(6));
   ix598 : oai21 port map ( Y=>nx597, A0=>nx280, A1=>nx719, B0=>A(6));
   ix281 : ao22 port map ( Y=>nx280, A0=>nx709, A1=>B(6), B0=>nx252, B1=>
      nx272);
   ix329 : oai321 port map ( Y=>nBitOut(7), A0=>nx605, A1=>nx709, A2=>nx304, 
      B0=>nx607, B1=>nx713, C0=>nx609);
   ix606 : nor03 port map ( Y=>nx605, A0=>nx264, A1=>A(7), A2=>nx292);
   ix608 : inv01 port map ( Y=>nx607, A=>B(7));
   ix610 : oai21 port map ( Y=>nx609, A0=>nx320, A1=>nx719, B0=>A(7));
   ix321 : ao22 port map ( Y=>nx320, A0=>nx709, A1=>B(7), B0=>nx292, B1=>
      nx312);
   ix369 : oai321 port map ( Y=>nBitOut(8), A0=>nx617, A1=>nx709, A2=>nx344, 
      B0=>nx619, B1=>nx713, C0=>nx621);
   ix618 : nor03 port map ( Y=>nx617, A0=>nx304, A1=>A(8), A2=>nx332);
   ix620 : inv01 port map ( Y=>nx619, A=>B(8));
   ix622 : oai21 port map ( Y=>nx621, A0=>nx360, A1=>nx719, B0=>A(8));
   ix361 : ao22 port map ( Y=>nx360, A0=>nx709, A1=>B(8), B0=>nx332, B1=>
      nx352);
   ix409 : oai321 port map ( Y=>nBitOut(9), A0=>nx629, A1=>nx709, A2=>nx384, 
      B0=>nx631, B1=>nx713, C0=>nx633);
   ix630 : nor03 port map ( Y=>nx629, A0=>nx344, A1=>A(9), A2=>nx372);
   ix632 : inv01 port map ( Y=>nx631, A=>B(9));
   ix634 : oai21 port map ( Y=>nx633, A0=>nx400, A1=>nx719, B0=>A(9));
   ix401 : ao22 port map ( Y=>nx400, A0=>nx709, A1=>B(9), B0=>nx372, B1=>
      nx392);
   ix449 : oai321 port map ( Y=>nBitOut(10), A0=>nx639, A1=>nx709, A2=>nx424, 
      B0=>nx641, B1=>nx713, C0=>nx643);
   ix640 : nor03 port map ( Y=>nx639, A0=>nx384, A1=>A(10), A2=>nx412);
   ix642 : inv01 port map ( Y=>nx641, A=>B(10));
   ix644 : oai21 port map ( Y=>nx643, A0=>nx440, A1=>nx719, B0=>A(10));
   ix441 : ao22 port map ( Y=>nx440, A0=>nx709, A1=>B(10), B0=>nx412, B1=>
      nx432);
   ix489 : oai321 port map ( Y=>nBitOut(11), A0=>nx651, A1=>nx709, A2=>nx464, 
      B0=>nx653, B1=>nx713, C0=>nx655);
   ix652 : nor03 port map ( Y=>nx651, A0=>nx424, A1=>A(11), A2=>nx452);
   ix654 : inv01 port map ( Y=>nx653, A=>B(11));
   ix656 : oai21 port map ( Y=>nx655, A0=>nx480, A1=>nx719, B0=>A(11));
   ix481 : ao22 port map ( Y=>nx480, A0=>nx711, A1=>B(11), B0=>nx452, B1=>
      nx472);
   ix529 : oai321 port map ( Y=>nBitOut(12), A0=>nx660, A1=>nx711, A2=>nx504, 
      B0=>nx662, B1=>nx713, C0=>nx664);
   ix661 : nor03 port map ( Y=>nx660, A0=>nx464, A1=>A(12), A2=>nx492);
   ix663 : inv01 port map ( Y=>nx662, A=>B(12));
   ix665 : oai21 port map ( Y=>nx664, A0=>nx520, A1=>nx719, B0=>A(12));
   ix521 : ao22 port map ( Y=>nx520, A0=>nx711, A1=>B(12), B0=>nx492, B1=>
      nx512);
   ix569 : oai321 port map ( Y=>nBitOut(13), A0=>nx669, A1=>nx711, A2=>nx544, 
      B0=>nx671, B1=>nx713, C0=>nx673);
   ix670 : nor03 port map ( Y=>nx669, A0=>nx504, A1=>A(13), A2=>nx532);
   ix672 : inv01 port map ( Y=>nx671, A=>B(13));
   ix674 : oai21 port map ( Y=>nx673, A0=>nx560, A1=>nx719, B0=>A(13));
   ix561 : ao22 port map ( Y=>nx560, A0=>nx711, A1=>B(13), B0=>nx532, B1=>
      nx552);
   ix609 : oai321 port map ( Y=>nBitOut(14), A0=>nx678, A1=>nx711, A2=>nx584, 
      B0=>nx680, B1=>nx713, C0=>nx682);
   ix679 : nor03 port map ( Y=>nx678, A0=>nx544, A1=>A(14), A2=>nx572);
   ix681 : inv01 port map ( Y=>nx680, A=>B(14));
   ix683 : oai21 port map ( Y=>nx682, A0=>nx600, A1=>nx719, B0=>A(14));
   ix601 : ao22 port map ( Y=>nx600, A0=>nx711, A1=>B(14), B0=>nx572, B1=>
      nx592);
   ix649 : oai222 port map ( Y=>nBitOut(15), A0=>nx687, A1=>nx689, B0=>nx691, 
      B1=>nx693, C0=>nx696, C1=>nx713);
   ix688 : nor03 port map ( Y=>nx687, A0=>nx584, A1=>A(15), A2=>nx612);
   ix690 : nand02 port map ( Y=>nx689, A0=>Control(1), A1=>nx331);
   ix692 : inv01 port map ( Y=>nx691, A=>A(15));
   ix694 : aoi221 port map ( Y=>nx693, A0=>nx711, A1=>B(15), B0=>nx612, B1=>
      nx632, C0=>nx719);
   ix697 : inv01 port map ( Y=>nx696, A=>B(15));
   ix510 : inv01 port map ( Y=>nx509, A=>nx612);
   ix585 : inv01 port map ( Y=>nx584, A=>nx511);
   ix496 : inv01 port map ( Y=>nx495, A=>nx572);
   ix545 : inv01 port map ( Y=>nx544, A=>nx335);
   ix490 : inv01 port map ( Y=>nx489, A=>nx532);
   ix505 : inv01 port map ( Y=>nx504, A=>nx491);
   ix476 : inv01 port map ( Y=>nx475, A=>nx492);
   ix465 : inv01 port map ( Y=>nx464, A=>nx339);
   ix470 : inv01 port map ( Y=>nx469, A=>nx452);
   ix425 : inv01 port map ( Y=>nx424, A=>nx471);
   ix456 : inv01 port map ( Y=>nx455, A=>nx412);
   ix385 : inv01 port map ( Y=>nx384, A=>nx343);
   ix450 : inv01 port map ( Y=>nx449, A=>nx372);
   ix345 : inv01 port map ( Y=>nx344, A=>nx451);
   ix436 : inv01 port map ( Y=>nx435, A=>nx332);
   ix305 : inv01 port map ( Y=>nx304, A=>nx347);
   ix430 : inv01 port map ( Y=>nx429, A=>nx292);
   ix265 : inv01 port map ( Y=>nx264, A=>nx431);
   ix416 : inv01 port map ( Y=>nx415, A=>nx252);
   ix225 : inv01 port map ( Y=>nx224, A=>nx351);
   ix410 : inv01 port map ( Y=>nx409, A=>nx212);
   ix185 : inv01 port map ( Y=>nx184, A=>nx411);
   ix396 : inv01 port map ( Y=>nx395, A=>nx172);
   ix145 : inv01 port map ( Y=>nx144, A=>nx355);
   ix390 : inv01 port map ( Y=>nx389, A=>nx132);
   ix105 : inv01 port map ( Y=>nx104, A=>nx391);
   ix370 : inv01 port map ( Y=>nx369, A=>nx92);
   ix65 : inv01 port map ( Y=>nx64, A=>nx359);
   ix378 : inv01 port map ( Y=>nx377, A=>nx18);
   ix706 : inv02 port map ( Y=>nx707, A=>Control(1));
   ix708 : inv02 port map ( Y=>nx709, A=>Control(1));
   ix710 : inv02 port map ( Y=>nx711, A=>Control(1));
   ix712 : inv02 port map ( Y=>nx713, A=>nx48);
   ix651 : xnor2 port map ( Y=>CB, A0=>nx721, A1=>nx331);
   ix53 : xor2 port map ( Y=>nx52, A0=>B(1), A1=>nx721);
   ix93 : xor2 port map ( Y=>nx92, A0=>B(2), A1=>nx721);
   ix133 : xor2 port map ( Y=>nx132, A0=>B(3), A1=>nx721);
   ix173 : xor2 port map ( Y=>nx172, A0=>B(4), A1=>nx721);
   ix213 : xor2 port map ( Y=>nx212, A0=>B(5), A1=>nx721);
   ix253 : xor2 port map ( Y=>nx252, A0=>B(6), A1=>nx721);
   ix293 : xor2 port map ( Y=>nx292, A0=>B(7), A1=>nx721);
   ix333 : xor2 port map ( Y=>nx332, A0=>B(8), A1=>nx721);
   ix373 : xor2 port map ( Y=>nx372, A0=>B(9), A1=>nx723);
   ix413 : xor2 port map ( Y=>nx412, A0=>B(10), A1=>nx723);
   ix453 : xor2 port map ( Y=>nx452, A0=>B(11), A1=>nx723);
   ix493 : xor2 port map ( Y=>nx492, A0=>B(12), A1=>nx723);
   ix533 : xor2 port map ( Y=>nx532, A0=>B(13), A1=>nx723);
   ix573 : xor2 port map ( Y=>nx572, A0=>B(14), A1=>nx723);
   ix613 : xor2 port map ( Y=>nx612, A0=>B(15), A1=>nx723);
   ix7 : xor2 port map ( Y=>nx6, A0=>B(0), A1=>nx723);
   ix534 : nor02ii port map ( Y=>nx48, A0=>Control(1), A1=>Control(0));
   ix113 : nor02ii port map ( Y=>nx112, A0=>nx359, A1=>Control(1));
   ix153 : nor02ii port map ( Y=>nx152, A0=>nx391, A1=>Control(1));
   ix193 : nor02ii port map ( Y=>nx192, A0=>nx355, A1=>Control(1));
   ix233 : nor02ii port map ( Y=>nx232, A0=>nx411, A1=>Control(1));
   ix273 : nor02ii port map ( Y=>nx272, A0=>nx351, A1=>Control(1));
   ix313 : nor02ii port map ( Y=>nx312, A0=>nx431, A1=>Control(1));
   ix353 : nor02ii port map ( Y=>nx352, A0=>nx347, A1=>Control(1));
   ix393 : nor02ii port map ( Y=>nx392, A0=>nx451, A1=>Control(1));
   ix433 : nor02ii port map ( Y=>nx432, A0=>nx343, A1=>Control(1));
   ix473 : nor02ii port map ( Y=>nx472, A0=>nx471, A1=>Control(1));
   ix513 : nor02ii port map ( Y=>nx512, A0=>nx339, A1=>Control(1));
   ix553 : nor02ii port map ( Y=>nx552, A0=>nx491, A1=>Control(1));
   ix593 : nor02ii port map ( Y=>nx592, A0=>nx335, A1=>Control(1));
   ix633 : nor02ii port map ( Y=>nx632, A0=>nx511, A1=>Control(1));
   ix718 : inv01 port map ( Y=>nx719, A=>nx713);
   ix720 : inv02 port map ( Y=>nx721, A=>nx4);
   ix722 : inv02 port map ( Y=>nx723, A=>nx4);
end struct ;

