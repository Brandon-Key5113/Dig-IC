
--
-- Definition of  nBitAdder
--
--      Sun Nov 17 12:31:48 2019
--
--      LeonardoSpectrum Level 3, 2008b.3
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
library gdk;
use gdk.gdk_comps.all;

entity nBitAdder is
   port (
      A : IN std_logic_vector (31 DOWNTO 0) ;
      B : IN std_logic_vector (31 DOWNTO 0) ;
      Y : OUT std_logic_vector (31 DOWNTO 0) ;
      CB : OUT std_logic) ;
end nBitAdder ;

architecture struct of nBitAdder is
   signal Y_dup0_31, Y_dup0_30, Y_dup0_29, Y_dup0_28, Y_dup0_27, Y_dup0_26,
      Y_dup0_25, Y_dup0_24, Y_dup0_23, Y_dup0_22, Y_dup0_21, Y_dup0_20,
      Y_dup0_19, Y_dup0_18, Y_dup0_17, Y_dup0_16, Y_dup0_15, Y_dup0_14,
      Y_dup0_13, Y_dup0_12, Y_dup0_11, Y_dup0_10, Y_dup0_9, Y_dup0_8,
      Y_dup0_7, Y_dup0_6, Y_dup0_5, Y_dup0_4, Y_dup0_3, Y_dup0_2, nx4, nx30,
      nx32, nx54, nx56, nx78, nx80, nx102, nx104, nx126, nx128, nx150, nx152,
      nx174, nx176, nx198, nx200, nx222, nx224, nx246, nx248, nx270, nx272,
      nx294, nx296, nx318, nx320, nx342, nx344, nx366, nx368, nx337, nx341,
      nx345, nx349, nx353, nx357, nx361, nx365, nx369, nx373, nx377, nx381,
      nx385, nx388, nx391, nx394, nx397, nx400, nx403, nx406, nx409, nx412,
      nx415, nx418, nx421, nx424, nx427, nx430, nx433, nx436, nx438, nx441,
      nx443, nx445, nx447, nx451, nx453, nx455, nx459, nx461, nx463, nx467,
      nx469, nx471, nx475, nx477, nx479, nx483, nx485, nx487, nx491, nx493,
      nx495, nx499, nx501, nx503, nx507, nx509, nx511, nx515, nx517, nx519,
      nx523, nx525, nx527, nx531, nx533, nx535, nx539, nx541, nx543, nx547,
      nx549, nx551, nx555, nx557, nx559: std_logic ;

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
   ix383 : xor2 port map ( Y=>Y(0), A0=>B(0), A1=>A(0));
   ix379 : ao22 port map ( Y=>CB, A0=>B(31), A1=>nx366, B0=>A(31), B1=>nx559
   );
   ix367 : oai22 port map ( Y=>nx366, A0=>nx337, A1=>Y_dup0_30, B0=>nx557,
      B1=>nx341);
   ix338 : inv01 port map ( Y=>nx337, A=>A(30));
   ix359 : xnor2 port map ( Y=>Y_dup0_30, A0=>nx341, A1=>nx555);
   ix342 : aoi22 port map ( Y=>nx341, A0=>B(29), A1=>nx342, B0=>A(29), B1=>
      nx551);
   ix343 : oai22 port map ( Y=>nx342, A0=>nx345, A1=>Y_dup0_28, B0=>nx549,
      B1=>nx349);
   ix346 : inv01 port map ( Y=>nx345, A=>A(28));
   ix335 : xnor2 port map ( Y=>Y_dup0_28, A0=>nx349, A1=>nx547);
   ix350 : aoi22 port map ( Y=>nx349, A0=>B(27), A1=>nx318, B0=>A(27), B1=>
      nx543);
   ix319 : oai22 port map ( Y=>nx318, A0=>nx353, A1=>Y_dup0_26, B0=>nx541,
      B1=>nx357);
   ix354 : inv01 port map ( Y=>nx353, A=>A(26));
   ix311 : xnor2 port map ( Y=>Y_dup0_26, A0=>nx357, A1=>nx539);
   ix358 : aoi22 port map ( Y=>nx357, A0=>B(25), A1=>nx294, B0=>A(25), B1=>
      nx535);
   ix295 : oai22 port map ( Y=>nx294, A0=>nx361, A1=>Y_dup0_24, B0=>nx533,
      B1=>nx365);
   ix362 : inv01 port map ( Y=>nx361, A=>A(24));
   ix287 : xnor2 port map ( Y=>Y_dup0_24, A0=>nx365, A1=>nx531);
   ix366 : aoi22 port map ( Y=>nx365, A0=>B(23), A1=>nx270, B0=>A(23), B1=>
      nx527);
   ix271 : oai22 port map ( Y=>nx270, A0=>nx369, A1=>Y_dup0_22, B0=>nx525,
      B1=>nx373);
   ix370 : inv01 port map ( Y=>nx369, A=>A(22));
   ix263 : xnor2 port map ( Y=>Y_dup0_22, A0=>nx373, A1=>nx523);
   ix374 : aoi22 port map ( Y=>nx373, A0=>B(21), A1=>nx246, B0=>A(21), B1=>
      nx519);
   ix247 : oai22 port map ( Y=>nx246, A0=>nx377, A1=>Y_dup0_20, B0=>nx517,
      B1=>nx381);
   ix378 : inv01 port map ( Y=>nx377, A=>A(20));
   ix239 : xnor2 port map ( Y=>Y_dup0_20, A0=>nx381, A1=>nx515);
   ix382 : aoi22 port map ( Y=>nx381, A0=>B(19), A1=>nx222, B0=>A(19), B1=>
      nx511);
   ix223 : oai22 port map ( Y=>nx222, A0=>nx385, A1=>Y_dup0_18, B0=>nx509,
      B1=>nx388);
   ix386 : inv01 port map ( Y=>nx385, A=>A(18));
   ix215 : xnor2 port map ( Y=>Y_dup0_18, A0=>nx388, A1=>nx507);
   ix389 : aoi22 port map ( Y=>nx388, A0=>B(17), A1=>nx198, B0=>A(17), B1=>
      nx503);
   ix199 : oai22 port map ( Y=>nx198, A0=>nx391, A1=>Y_dup0_16, B0=>nx501,
      B1=>nx394);
   ix392 : inv01 port map ( Y=>nx391, A=>A(16));
   ix191 : xnor2 port map ( Y=>Y_dup0_16, A0=>nx394, A1=>nx499);
   ix395 : aoi22 port map ( Y=>nx394, A0=>B(15), A1=>nx174, B0=>A(15), B1=>
      nx495);
   ix175 : oai22 port map ( Y=>nx174, A0=>nx397, A1=>Y_dup0_14, B0=>nx493,
      B1=>nx400);
   ix398 : inv01 port map ( Y=>nx397, A=>A(14));
   ix167 : xnor2 port map ( Y=>Y_dup0_14, A0=>nx400, A1=>nx491);
   ix401 : aoi22 port map ( Y=>nx400, A0=>B(13), A1=>nx150, B0=>A(13), B1=>
      nx487);
   ix151 : oai22 port map ( Y=>nx150, A0=>nx403, A1=>Y_dup0_12, B0=>nx485,
      B1=>nx406);
   ix404 : inv01 port map ( Y=>nx403, A=>A(12));
   ix143 : xnor2 port map ( Y=>Y_dup0_12, A0=>nx406, A1=>nx483);
   ix407 : aoi22 port map ( Y=>nx406, A0=>B(11), A1=>nx126, B0=>A(11), B1=>
      nx479);
   ix127 : oai22 port map ( Y=>nx126, A0=>nx409, A1=>Y_dup0_10, B0=>nx477,
      B1=>nx412);
   ix410 : inv01 port map ( Y=>nx409, A=>A(10));
   ix119 : xnor2 port map ( Y=>Y_dup0_10, A0=>nx412, A1=>nx475);
   ix413 : aoi22 port map ( Y=>nx412, A0=>B(9), A1=>nx102, B0=>A(9), B1=>
      nx471);
   ix103 : oai22 port map ( Y=>nx102, A0=>nx415, A1=>Y_dup0_8, B0=>nx469, B1
      =>nx418);
   ix416 : inv01 port map ( Y=>nx415, A=>A(8));
   ix95 : xnor2 port map ( Y=>Y_dup0_8, A0=>nx418, A1=>nx467);
   ix419 : aoi22 port map ( Y=>nx418, A0=>B(7), A1=>nx78, B0=>A(7), B1=>
      nx463);
   ix79 : oai22 port map ( Y=>nx78, A0=>nx421, A1=>Y_dup0_6, B0=>nx461, B1=>
      nx424);
   ix422 : inv01 port map ( Y=>nx421, A=>A(6));
   ix71 : xnor2 port map ( Y=>Y_dup0_6, A0=>nx424, A1=>nx459);
   ix425 : aoi22 port map ( Y=>nx424, A0=>B(5), A1=>nx54, B0=>A(5), B1=>
      nx455);
   ix55 : oai22 port map ( Y=>nx54, A0=>nx427, A1=>Y_dup0_4, B0=>nx453, B1=>
      nx430);
   ix428 : inv01 port map ( Y=>nx427, A=>A(4));
   ix47 : xnor2 port map ( Y=>Y_dup0_4, A0=>nx430, A1=>nx451);
   ix431 : aoi22 port map ( Y=>nx430, A0=>B(3), A1=>nx30, B0=>A(3), B1=>
      nx447);
   ix31 : oai22 port map ( Y=>nx30, A0=>nx433, A1=>Y_dup0_2, B0=>nx445, B1=>
      nx436);
   ix434 : inv01 port map ( Y=>nx433, A=>A(2));
   ix23 : xnor2 port map ( Y=>Y_dup0_2, A0=>nx436, A1=>nx443);
   ix437 : aoi32 port map ( Y=>nx436, A0=>B(1), A1=>B(0), A2=>A(0), B0=>A(1),
      B1=>nx438);
   ix439 : xnor2 port map ( Y=>nx438, A0=>nx4, A1=>nx441);
   ix5 : nand02 port map ( Y=>nx4, A0=>B(0), A1=>A(0));
   ix442 : xnor2 port map ( Y=>nx441, A0=>A(1), A1=>B(1));
   ix444 : xor2 port map ( Y=>nx443, A0=>A(2), A1=>B(2));
   ix446 : inv01 port map ( Y=>nx445, A=>B(2));
   ix452 : xor2 port map ( Y=>nx451, A0=>A(4), A1=>B(4));
   ix454 : inv01 port map ( Y=>nx453, A=>B(4));
   ix460 : xor2 port map ( Y=>nx459, A0=>A(6), A1=>B(6));
   ix462 : inv01 port map ( Y=>nx461, A=>B(6));
   ix468 : xor2 port map ( Y=>nx467, A0=>A(8), A1=>B(8));
   ix470 : inv01 port map ( Y=>nx469, A=>B(8));
   ix476 : xor2 port map ( Y=>nx475, A0=>A(10), A1=>B(10));
   ix478 : inv01 port map ( Y=>nx477, A=>B(10));
   ix484 : xor2 port map ( Y=>nx483, A0=>A(12), A1=>B(12));
   ix486 : inv01 port map ( Y=>nx485, A=>B(12));
   ix492 : xor2 port map ( Y=>nx491, A0=>A(14), A1=>B(14));
   ix494 : inv01 port map ( Y=>nx493, A=>B(14));
   ix500 : xor2 port map ( Y=>nx499, A0=>A(16), A1=>B(16));
   ix502 : inv01 port map ( Y=>nx501, A=>B(16));
   ix508 : xor2 port map ( Y=>nx507, A0=>A(18), A1=>B(18));
   ix510 : inv01 port map ( Y=>nx509, A=>B(18));
   ix516 : xor2 port map ( Y=>nx515, A0=>A(20), A1=>B(20));
   ix518 : inv01 port map ( Y=>nx517, A=>B(20));
   ix524 : xor2 port map ( Y=>nx523, A0=>A(22), A1=>B(22));
   ix526 : inv01 port map ( Y=>nx525, A=>B(22));
   ix532 : xor2 port map ( Y=>nx531, A0=>A(24), A1=>B(24));
   ix534 : inv01 port map ( Y=>nx533, A=>B(24));
   ix540 : xor2 port map ( Y=>nx539, A0=>A(26), A1=>B(26));
   ix542 : inv01 port map ( Y=>nx541, A=>B(26));
   ix548 : xor2 port map ( Y=>nx547, A0=>A(28), A1=>B(28));
   ix550 : inv01 port map ( Y=>nx549, A=>B(28));
   ix556 : xor2 port map ( Y=>nx555, A0=>A(30), A1=>B(30));
   ix558 : inv01 port map ( Y=>nx557, A=>B(30));
   ix35 : xnor2 port map ( Y=>Y_dup0_3, A0=>nx30, A1=>nx32);
   ix33 : xnor2 port map ( Y=>nx32, A0=>A(3), A1=>B(3));
   ix59 : xnor2 port map ( Y=>Y_dup0_5, A0=>nx54, A1=>nx56);
   ix57 : xnor2 port map ( Y=>nx56, A0=>A(5), A1=>B(5));
   ix83 : xnor2 port map ( Y=>Y_dup0_7, A0=>nx78, A1=>nx80);
   ix81 : xnor2 port map ( Y=>nx80, A0=>A(7), A1=>B(7));
   ix107 : xnor2 port map ( Y=>Y_dup0_9, A0=>nx102, A1=>nx104);
   ix105 : xnor2 port map ( Y=>nx104, A0=>A(9), A1=>B(9));
   ix131 : xnor2 port map ( Y=>Y_dup0_11, A0=>nx126, A1=>nx128);
   ix129 : xnor2 port map ( Y=>nx128, A0=>A(11), A1=>B(11));
   ix155 : xnor2 port map ( Y=>Y_dup0_13, A0=>nx150, A1=>nx152);
   ix153 : xnor2 port map ( Y=>nx152, A0=>A(13), A1=>B(13));
   ix179 : xnor2 port map ( Y=>Y_dup0_15, A0=>nx174, A1=>nx176);
   ix177 : xnor2 port map ( Y=>nx176, A0=>A(15), A1=>B(15));
   ix203 : xnor2 port map ( Y=>Y_dup0_17, A0=>nx198, A1=>nx200);
   ix201 : xnor2 port map ( Y=>nx200, A0=>A(17), A1=>B(17));
   ix227 : xnor2 port map ( Y=>Y_dup0_19, A0=>nx222, A1=>nx224);
   ix225 : xnor2 port map ( Y=>nx224, A0=>A(19), A1=>B(19));
   ix253 : xnor2 port map ( Y=>Y_dup0_21, A0=>nx246, A1=>nx248);
   ix252 : xnor2 port map ( Y=>nx248, A0=>A(21), A1=>B(21));
   ix275 : xnor2 port map ( Y=>Y_dup0_23, A0=>nx270, A1=>nx272);
   ix273 : xnor2 port map ( Y=>nx272, A0=>A(23), A1=>B(23));
   ix299 : xnor2 port map ( Y=>Y_dup0_25, A0=>nx294, A1=>nx296);
   ix297 : xnor2 port map ( Y=>nx296, A0=>A(25), A1=>B(25));
   ix323 : xnor2 port map ( Y=>Y_dup0_27, A0=>nx318, A1=>nx320);
   ix321 : xnor2 port map ( Y=>nx320, A0=>A(27), A1=>B(27));
   ix347 : xnor2 port map ( Y=>Y_dup0_29, A0=>nx342, A1=>nx344);
   ix345 : xnor2 port map ( Y=>nx344, A0=>A(29), A1=>B(29));
   ix371 : xnor2 port map ( Y=>Y_dup0_31, A0=>nx366, A1=>nx368);
   ix369 : xnor2 port map ( Y=>nx368, A0=>A(31), A1=>B(31));
   ix9 : inv01 port map ( Y=>Y(1), A=>nx438);
   ix448 : inv01 port map ( Y=>nx447, A=>Y_dup0_3);
   ix456 : inv01 port map ( Y=>nx455, A=>Y_dup0_5);
   ix464 : inv01 port map ( Y=>nx463, A=>Y_dup0_7);
   ix472 : inv01 port map ( Y=>nx471, A=>Y_dup0_9);
   ix480 : inv01 port map ( Y=>nx479, A=>Y_dup0_11);
   ix488 : inv01 port map ( Y=>nx487, A=>Y_dup0_13);
   ix496 : inv01 port map ( Y=>nx495, A=>Y_dup0_15);
   ix504 : inv01 port map ( Y=>nx503, A=>Y_dup0_17);
   ix512 : inv01 port map ( Y=>nx511, A=>Y_dup0_19);
   ix520 : inv01 port map ( Y=>nx519, A=>Y_dup0_21);
   ix528 : inv01 port map ( Y=>nx527, A=>Y_dup0_23);
   ix536 : inv01 port map ( Y=>nx535, A=>Y_dup0_25);
   ix544 : inv01 port map ( Y=>nx543, A=>Y_dup0_27);
   ix552 : inv01 port map ( Y=>nx551, A=>Y_dup0_29);
   ix560 : inv01 port map ( Y=>nx559, A=>Y_dup0_31);
end struct ;

