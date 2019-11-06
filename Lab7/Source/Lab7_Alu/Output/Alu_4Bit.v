//
// Verilog description for cell ALU_4Bit, 
// Wed Nov  6 09:57:29 2019
//
// LeonardoSpectrum Level 3, 2008b.3 
//


module ALU_4Bit ( Control, A, B, nBitOut, CB ) ;

    input [1:0]Control ;
    input [15:0]A ;
    input [15:0]B ;
    output [15:0]nBitOut ;
    output CB ;

    wire nx4, nx6, nx18, nx24, nx40, nx48, nx52, nx58, nx64, nx80, nx92, nx98, 
         nx104, nx112, nx120, nx132, nx138, nx144, nx152, nx160, nx172, nx178, 
         nx184, nx192, nx200, nx212, nx218, nx224, nx232, nx240, nx252, nx258, 
         nx264, nx272, nx280, nx292, nx298, nx304, nx312, nx320, nx332, nx338, 
         nx344, nx352, nx360, nx372, nx378, nx384, nx392, nx400, nx412, nx418, 
         nx424, nx432, nx440, nx452, nx458, nx464, nx472, nx480, nx492, nx498, 
         nx504, nx512, nx520, nx532, nx538, nx544, nx552, nx560, nx572, nx578, 
         nx584, nx592, nx600, nx612, nx618, nx632, nx331, nx335, nx339, nx343, 
         nx347, nx351, nx355, nx359, nx369, nx377, nx389, nx391, nx395, nx409, 
         nx411, nx415, nx429, nx431, nx435, nx449, nx451, nx455, nx469, nx471, 
         nx475, nx489, nx491, nx495, nx509, nx511, nx517, nx527, nx531, nx535, 
         nx539, nx545, nx547, nx549, nx557, nx559, nx561, nx569, nx571, nx573, 
         nx581, nx583, nx585, nx593, nx595, nx597, nx605, nx607, nx609, nx617, 
         nx619, nx621, nx629, nx631, nx633, nx639, nx641, nx643, nx651, nx653, 
         nx655, nx660, nx662, nx664, nx669, nx671, nx673, nx678, nx680, nx682, 
         nx687, nx689, nx691, nx693, nx696, nx707, nx709, nx711, nx713, nx719, 
         nx721, nx723;



    nand02 ix5 (.Y (nx4), .A0 (Control[0]), .A1 (Control[1])) ;
    aoi22 ix332 (.Y (nx331), .A0 (nx584), .A1 (nx612), .B0 (A[15]), .B1 (nx618)
          ) ;
    aoi22 ix336 (.Y (nx335), .A0 (nx504), .A1 (nx532), .B0 (A[13]), .B1 (nx538)
          ) ;
    aoi22 ix340 (.Y (nx339), .A0 (nx424), .A1 (nx452), .B0 (A[11]), .B1 (nx458)
          ) ;
    aoi22 ix344 (.Y (nx343), .A0 (nx344), .A1 (nx372), .B0 (A[9]), .B1 (nx378)
          ) ;
    aoi22 ix348 (.Y (nx347), .A0 (nx264), .A1 (nx292), .B0 (A[7]), .B1 (nx298)
          ) ;
    aoi22 ix352 (.Y (nx351), .A0 (nx184), .A1 (nx212), .B0 (A[5]), .B1 (nx218)
          ) ;
    aoi22 ix356 (.Y (nx355), .A0 (nx104), .A1 (nx132), .B0 (A[3]), .B1 (nx138)
          ) ;
    aoi22 ix360 (.Y (nx359), .A0 (nx18), .A1 (nx52), .B0 (A[1]), .B1 (nx58)) ;
    mux21 ix19 (.Y (nx18), .A0 (nx721), .A1 (A[0]), .S0 (B[0])) ;
    or02 ix59 (.Y (nx58), .A0 (nx52), .A1 (nx18)) ;
    nand02 ix139 (.Y (nx138), .A0 (nx389), .A1 (nx391)) ;
    aoi22 ix392 (.Y (nx391), .A0 (nx64), .A1 (nx92), .B0 (A[2]), .B1 (nx98)) ;
    nand02 ix99 (.Y (nx98), .A0 (nx369), .A1 (nx359)) ;
    nand02 ix219 (.Y (nx218), .A0 (nx409), .A1 (nx411)) ;
    aoi22 ix412 (.Y (nx411), .A0 (nx144), .A1 (nx172), .B0 (A[4]), .B1 (nx178)
          ) ;
    nand02 ix179 (.Y (nx178), .A0 (nx395), .A1 (nx355)) ;
    nand02 ix299 (.Y (nx298), .A0 (nx429), .A1 (nx431)) ;
    aoi22 ix432 (.Y (nx431), .A0 (nx224), .A1 (nx252), .B0 (A[6]), .B1 (nx258)
          ) ;
    nand02 ix259 (.Y (nx258), .A0 (nx415), .A1 (nx351)) ;
    nand02 ix379 (.Y (nx378), .A0 (nx449), .A1 (nx451)) ;
    aoi22 ix452 (.Y (nx451), .A0 (nx304), .A1 (nx332), .B0 (A[8]), .B1 (nx338)
          ) ;
    nand02 ix339 (.Y (nx338), .A0 (nx435), .A1 (nx347)) ;
    nand02 ix459 (.Y (nx458), .A0 (nx469), .A1 (nx471)) ;
    aoi22 ix472 (.Y (nx471), .A0 (nx384), .A1 (nx412), .B0 (A[10]), .B1 (nx418)
          ) ;
    nand02 ix419 (.Y (nx418), .A0 (nx455), .A1 (nx343)) ;
    nand02 ix539 (.Y (nx538), .A0 (nx489), .A1 (nx491)) ;
    aoi22 ix492 (.Y (nx491), .A0 (nx464), .A1 (nx492), .B0 (A[12]), .B1 (nx498)
          ) ;
    nand02 ix499 (.Y (nx498), .A0 (nx475), .A1 (nx339)) ;
    nand02 ix619 (.Y (nx618), .A0 (nx509), .A1 (nx511)) ;
    aoi22 ix512 (.Y (nx511), .A0 (nx544), .A1 (nx572), .B0 (A[14]), .B1 (nx578)
          ) ;
    nand02 ix579 (.Y (nx578), .A0 (nx495), .A1 (nx335)) ;
    oai21 ix47 (.Y (nBitOut[0]), .A0 (Control[1]), .A1 (nx377), .B0 (nx517)) ;
    aoi32 ix518 (.Y (nx517), .A0 (nx24), .A1 (Control[0]), .A2 (nx377), .B0 (
          Control[1]), .B1 (nx40)) ;
    or02 ix25 (.Y (nx24), .A0 (nx6), .A1 (A[0])) ;
    xor2 ix41 (.Y (nx40), .A0 (A[0]), .A1 (B[0])) ;
    oai321 ix89 (.Y (nBitOut[1]), .A0 (nx527), .A1 (nx707), .A2 (nx64), .B0 (
           nx531), .B1 (nx713), .C0 (nx535)) ;
    nor03 ix528 (.Y (nx527), .A0 (nx18), .A1 (A[1]), .A2 (nx52)) ;
    inv01 ix532 (.Y (nx531), .A (B[1])) ;
    oai21 ix536 (.Y (nx535), .A0 (nx80), .A1 (nx719), .B0 (A[1])) ;
    oai21 ix81 (.Y (nx80), .A0 (Control[1]), .A1 (nx531), .B0 (nx539)) ;
    nand03 ix540 (.Y (nx539), .A0 (nx52), .A1 (Control[1]), .A2 (nx18)) ;
    oai321 ix129 (.Y (nBitOut[2]), .A0 (nx545), .A1 (nx707), .A2 (nx104), .B0 (
           nx547), .B1 (nx713), .C0 (nx549)) ;
    nor03 ix546 (.Y (nx545), .A0 (nx64), .A1 (A[2]), .A2 (nx92)) ;
    inv01 ix548 (.Y (nx547), .A (B[2])) ;
    oai21 ix550 (.Y (nx549), .A0 (nx120), .A1 (nx719), .B0 (A[2])) ;
    ao22 ix121 (.Y (nx120), .A0 (nx707), .A1 (B[2]), .B0 (nx92), .B1 (nx112)) ;
    oai321 ix169 (.Y (nBitOut[3]), .A0 (nx557), .A1 (nx707), .A2 (nx144), .B0 (
           nx559), .B1 (nx713), .C0 (nx561)) ;
    nor03 ix558 (.Y (nx557), .A0 (nx104), .A1 (A[3]), .A2 (nx132)) ;
    inv01 ix560 (.Y (nx559), .A (B[3])) ;
    oai21 ix562 (.Y (nx561), .A0 (nx160), .A1 (nx719), .B0 (A[3])) ;
    ao22 ix161 (.Y (nx160), .A0 (nx707), .A1 (B[3]), .B0 (nx132), .B1 (nx152)) ;
    oai321 ix209 (.Y (nBitOut[4]), .A0 (nx569), .A1 (nx707), .A2 (nx184), .B0 (
           nx571), .B1 (nx713), .C0 (nx573)) ;
    nor03 ix570 (.Y (nx569), .A0 (nx144), .A1 (A[4]), .A2 (nx172)) ;
    inv01 ix572 (.Y (nx571), .A (B[4])) ;
    oai21 ix574 (.Y (nx573), .A0 (nx200), .A1 (nx719), .B0 (A[4])) ;
    ao22 ix201 (.Y (nx200), .A0 (nx707), .A1 (B[4]), .B0 (nx172), .B1 (nx192)) ;
    oai321 ix249 (.Y (nBitOut[5]), .A0 (nx581), .A1 (nx707), .A2 (nx224), .B0 (
           nx583), .B1 (nx713), .C0 (nx585)) ;
    nor03 ix582 (.Y (nx581), .A0 (nx184), .A1 (A[5]), .A2 (nx212)) ;
    inv01 ix584 (.Y (nx583), .A (B[5])) ;
    oai21 ix586 (.Y (nx585), .A0 (nx240), .A1 (nx719), .B0 (A[5])) ;
    ao22 ix241 (.Y (nx240), .A0 (nx707), .A1 (B[5]), .B0 (nx212), .B1 (nx232)) ;
    oai321 ix289 (.Y (nBitOut[6]), .A0 (nx593), .A1 (nx707), .A2 (nx264), .B0 (
           nx595), .B1 (nx713), .C0 (nx597)) ;
    nor03 ix594 (.Y (nx593), .A0 (nx224), .A1 (A[6]), .A2 (nx252)) ;
    inv01 ix596 (.Y (nx595), .A (B[6])) ;
    oai21 ix598 (.Y (nx597), .A0 (nx280), .A1 (nx719), .B0 (A[6])) ;
    ao22 ix281 (.Y (nx280), .A0 (nx709), .A1 (B[6]), .B0 (nx252), .B1 (nx272)) ;
    oai321 ix329 (.Y (nBitOut[7]), .A0 (nx605), .A1 (nx709), .A2 (nx304), .B0 (
           nx607), .B1 (nx713), .C0 (nx609)) ;
    nor03 ix606 (.Y (nx605), .A0 (nx264), .A1 (A[7]), .A2 (nx292)) ;
    inv01 ix608 (.Y (nx607), .A (B[7])) ;
    oai21 ix610 (.Y (nx609), .A0 (nx320), .A1 (nx719), .B0 (A[7])) ;
    ao22 ix321 (.Y (nx320), .A0 (nx709), .A1 (B[7]), .B0 (nx292), .B1 (nx312)) ;
    oai321 ix369 (.Y (nBitOut[8]), .A0 (nx617), .A1 (nx709), .A2 (nx344), .B0 (
           nx619), .B1 (nx713), .C0 (nx621)) ;
    nor03 ix618 (.Y (nx617), .A0 (nx304), .A1 (A[8]), .A2 (nx332)) ;
    inv01 ix620 (.Y (nx619), .A (B[8])) ;
    oai21 ix622 (.Y (nx621), .A0 (nx360), .A1 (nx719), .B0 (A[8])) ;
    ao22 ix361 (.Y (nx360), .A0 (nx709), .A1 (B[8]), .B0 (nx332), .B1 (nx352)) ;
    oai321 ix409 (.Y (nBitOut[9]), .A0 (nx629), .A1 (nx709), .A2 (nx384), .B0 (
           nx631), .B1 (nx713), .C0 (nx633)) ;
    nor03 ix630 (.Y (nx629), .A0 (nx344), .A1 (A[9]), .A2 (nx372)) ;
    inv01 ix632 (.Y (nx631), .A (B[9])) ;
    oai21 ix634 (.Y (nx633), .A0 (nx400), .A1 (nx719), .B0 (A[9])) ;
    ao22 ix401 (.Y (nx400), .A0 (nx709), .A1 (B[9]), .B0 (nx372), .B1 (nx392)) ;
    oai321 ix449 (.Y (nBitOut[10]), .A0 (nx639), .A1 (nx709), .A2 (nx424), .B0 (
           nx641), .B1 (nx713), .C0 (nx643)) ;
    nor03 ix640 (.Y (nx639), .A0 (nx384), .A1 (A[10]), .A2 (nx412)) ;
    inv01 ix642 (.Y (nx641), .A (B[10])) ;
    oai21 ix644 (.Y (nx643), .A0 (nx440), .A1 (nx719), .B0 (A[10])) ;
    ao22 ix441 (.Y (nx440), .A0 (nx709), .A1 (B[10]), .B0 (nx412), .B1 (nx432)
         ) ;
    oai321 ix489 (.Y (nBitOut[11]), .A0 (nx651), .A1 (nx709), .A2 (nx464), .B0 (
           nx653), .B1 (nx713), .C0 (nx655)) ;
    nor03 ix652 (.Y (nx651), .A0 (nx424), .A1 (A[11]), .A2 (nx452)) ;
    inv01 ix654 (.Y (nx653), .A (B[11])) ;
    oai21 ix656 (.Y (nx655), .A0 (nx480), .A1 (nx719), .B0 (A[11])) ;
    ao22 ix481 (.Y (nx480), .A0 (nx711), .A1 (B[11]), .B0 (nx452), .B1 (nx472)
         ) ;
    oai321 ix529 (.Y (nBitOut[12]), .A0 (nx660), .A1 (nx711), .A2 (nx504), .B0 (
           nx662), .B1 (nx713), .C0 (nx664)) ;
    nor03 ix661 (.Y (nx660), .A0 (nx464), .A1 (A[12]), .A2 (nx492)) ;
    inv01 ix663 (.Y (nx662), .A (B[12])) ;
    oai21 ix665 (.Y (nx664), .A0 (nx520), .A1 (nx719), .B0 (A[12])) ;
    ao22 ix521 (.Y (nx520), .A0 (nx711), .A1 (B[12]), .B0 (nx492), .B1 (nx512)
         ) ;
    oai321 ix569 (.Y (nBitOut[13]), .A0 (nx669), .A1 (nx711), .A2 (nx544), .B0 (
           nx671), .B1 (nx713), .C0 (nx673)) ;
    nor03 ix670 (.Y (nx669), .A0 (nx504), .A1 (A[13]), .A2 (nx532)) ;
    inv01 ix672 (.Y (nx671), .A (B[13])) ;
    oai21 ix674 (.Y (nx673), .A0 (nx560), .A1 (nx719), .B0 (A[13])) ;
    ao22 ix561 (.Y (nx560), .A0 (nx711), .A1 (B[13]), .B0 (nx532), .B1 (nx552)
         ) ;
    oai321 ix609 (.Y (nBitOut[14]), .A0 (nx678), .A1 (nx711), .A2 (nx584), .B0 (
           nx680), .B1 (nx713), .C0 (nx682)) ;
    nor03 ix679 (.Y (nx678), .A0 (nx544), .A1 (A[14]), .A2 (nx572)) ;
    inv01 ix681 (.Y (nx680), .A (B[14])) ;
    oai21 ix683 (.Y (nx682), .A0 (nx600), .A1 (nx719), .B0 (A[14])) ;
    ao22 ix601 (.Y (nx600), .A0 (nx711), .A1 (B[14]), .B0 (nx572), .B1 (nx592)
         ) ;
    oai222 ix649 (.Y (nBitOut[15]), .A0 (nx687), .A1 (nx689), .B0 (nx691), .B1 (
           nx693), .C0 (nx696), .C1 (nx713)) ;
    nor03 ix688 (.Y (nx687), .A0 (nx584), .A1 (A[15]), .A2 (nx612)) ;
    nand02 ix690 (.Y (nx689), .A0 (Control[1]), .A1 (nx331)) ;
    inv01 ix692 (.Y (nx691), .A (A[15])) ;
    aoi221 ix694 (.Y (nx693), .A0 (nx711), .A1 (B[15]), .B0 (nx612), .B1 (nx632)
           , .C0 (nx719)) ;
    inv01 ix697 (.Y (nx696), .A (B[15])) ;
    inv01 ix510 (.Y (nx509), .A (nx612)) ;
    inv01 ix585 (.Y (nx584), .A (nx511)) ;
    inv01 ix496 (.Y (nx495), .A (nx572)) ;
    inv01 ix545 (.Y (nx544), .A (nx335)) ;
    inv01 ix490 (.Y (nx489), .A (nx532)) ;
    inv01 ix505 (.Y (nx504), .A (nx491)) ;
    inv01 ix476 (.Y (nx475), .A (nx492)) ;
    inv01 ix465 (.Y (nx464), .A (nx339)) ;
    inv01 ix470 (.Y (nx469), .A (nx452)) ;
    inv01 ix425 (.Y (nx424), .A (nx471)) ;
    inv01 ix456 (.Y (nx455), .A (nx412)) ;
    inv01 ix385 (.Y (nx384), .A (nx343)) ;
    inv01 ix450 (.Y (nx449), .A (nx372)) ;
    inv01 ix345 (.Y (nx344), .A (nx451)) ;
    inv01 ix436 (.Y (nx435), .A (nx332)) ;
    inv01 ix305 (.Y (nx304), .A (nx347)) ;
    inv01 ix430 (.Y (nx429), .A (nx292)) ;
    inv01 ix265 (.Y (nx264), .A (nx431)) ;
    inv01 ix416 (.Y (nx415), .A (nx252)) ;
    inv01 ix225 (.Y (nx224), .A (nx351)) ;
    inv01 ix410 (.Y (nx409), .A (nx212)) ;
    inv01 ix185 (.Y (nx184), .A (nx411)) ;
    inv01 ix396 (.Y (nx395), .A (nx172)) ;
    inv01 ix145 (.Y (nx144), .A (nx355)) ;
    inv01 ix390 (.Y (nx389), .A (nx132)) ;
    inv01 ix105 (.Y (nx104), .A (nx391)) ;
    inv01 ix370 (.Y (nx369), .A (nx92)) ;
    inv01 ix65 (.Y (nx64), .A (nx359)) ;
    inv01 ix378 (.Y (nx377), .A (nx18)) ;
    inv02 ix706 (.Y (nx707), .A (Control[1])) ;
    inv02 ix708 (.Y (nx709), .A (Control[1])) ;
    inv02 ix710 (.Y (nx711), .A (Control[1])) ;
    inv02 ix712 (.Y (nx713), .A (nx48)) ;
    xnor2 ix651 (.Y (CB), .A0 (nx721), .A1 (nx331)) ;
    xor2 ix53 (.Y (nx52), .A0 (B[1]), .A1 (nx721)) ;
    xor2 ix93 (.Y (nx92), .A0 (B[2]), .A1 (nx721)) ;
    xor2 ix133 (.Y (nx132), .A0 (B[3]), .A1 (nx721)) ;
    xor2 ix173 (.Y (nx172), .A0 (B[4]), .A1 (nx721)) ;
    xor2 ix213 (.Y (nx212), .A0 (B[5]), .A1 (nx721)) ;
    xor2 ix253 (.Y (nx252), .A0 (B[6]), .A1 (nx721)) ;
    xor2 ix293 (.Y (nx292), .A0 (B[7]), .A1 (nx721)) ;
    xor2 ix333 (.Y (nx332), .A0 (B[8]), .A1 (nx721)) ;
    xor2 ix373 (.Y (nx372), .A0 (B[9]), .A1 (nx723)) ;
    xor2 ix413 (.Y (nx412), .A0 (B[10]), .A1 (nx723)) ;
    xor2 ix453 (.Y (nx452), .A0 (B[11]), .A1 (nx723)) ;
    xor2 ix493 (.Y (nx492), .A0 (B[12]), .A1 (nx723)) ;
    xor2 ix533 (.Y (nx532), .A0 (B[13]), .A1 (nx723)) ;
    xor2 ix573 (.Y (nx572), .A0 (B[14]), .A1 (nx723)) ;
    xor2 ix613 (.Y (nx612), .A0 (B[15]), .A1 (nx723)) ;
    xor2 ix7 (.Y (nx6), .A0 (B[0]), .A1 (nx723)) ;
    nor02ii ix534 (.Y (nx48), .A0 (Control[1]), .A1 (Control[0])) ;
    nor02ii ix113 (.Y (nx112), .A0 (nx359), .A1 (Control[1])) ;
    nor02ii ix153 (.Y (nx152), .A0 (nx391), .A1 (Control[1])) ;
    nor02ii ix193 (.Y (nx192), .A0 (nx355), .A1 (Control[1])) ;
    nor02ii ix233 (.Y (nx232), .A0 (nx411), .A1 (Control[1])) ;
    nor02ii ix273 (.Y (nx272), .A0 (nx351), .A1 (Control[1])) ;
    nor02ii ix313 (.Y (nx312), .A0 (nx431), .A1 (Control[1])) ;
    nor02ii ix353 (.Y (nx352), .A0 (nx347), .A1 (Control[1])) ;
    nor02ii ix393 (.Y (nx392), .A0 (nx451), .A1 (Control[1])) ;
    nor02ii ix433 (.Y (nx432), .A0 (nx343), .A1 (Control[1])) ;
    nor02ii ix473 (.Y (nx472), .A0 (nx471), .A1 (Control[1])) ;
    nor02ii ix513 (.Y (nx512), .A0 (nx339), .A1 (Control[1])) ;
    nor02ii ix553 (.Y (nx552), .A0 (nx491), .A1 (Control[1])) ;
    nor02ii ix593 (.Y (nx592), .A0 (nx335), .A1 (Control[1])) ;
    nor02ii ix633 (.Y (nx632), .A0 (nx511), .A1 (Control[1])) ;
    inv01 ix718 (.Y (nx719), .A (nx713)) ;
    inv02 ix720 (.Y (nx721), .A (nx4)) ;
    inv02 ix722 (.Y (nx723), .A (nx4)) ;
endmodule

