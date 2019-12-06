//
// Verilog description for cell nBitAdder, 
// Sun Nov 17 12:31:48 2019
//
// LeonardoSpectrum Level 3, 2008b.3 
//


module nBitAdder ( A, B, Y, CB ) ;

    input [31:0]A ;
    input [31:0]B ;
    output [31:0]Y ;
    output CB ;

    wire nx4, nx30, nx32, nx54, nx56, nx78, nx80, nx102, nx104, nx126, nx128, 
         nx150, nx152, nx174, nx176, nx198, nx200, nx222, nx224, nx246, nx248, 
         nx270, nx272, nx294, nx296, nx318, nx320, nx342, nx344, nx366, nx368, 
         nx337, nx341, nx345, nx349, nx353, nx357, nx361, nx365, nx369, nx373, 
         nx377, nx381, nx385, nx388, nx391, nx394, nx397, nx400, nx403, nx406, 
         nx409, nx412, nx415, nx418, nx421, nx424, nx427, nx430, nx433, nx436, 
         nx438, nx441, nx443, nx445, nx447, nx451, nx453, nx455, nx459, nx461, 
         nx463, nx467, nx469, nx471, nx475, nx477, nx479, nx483, nx485, nx487, 
         nx491, nx493, nx495, nx499, nx501, nx503, nx507, nx509, nx511, nx515, 
         nx517, nx519, nx523, nx525, nx527, nx531, nx533, nx535, nx539, nx541, 
         nx543, nx547, nx549, nx551, nx555, nx557, nx559;



    xor2 ix383 (.Y (Y[0]), .A0 (B[0]), .A1 (A[0])) ;
    ao22 ix379 (.Y (CB), .A0 (B[31]), .A1 (nx366), .B0 (A[31]), .B1 (nx559)) ;
    oai22 ix367 (.Y (nx366), .A0 (nx337), .A1 (Y[30]), .B0 (nx557), .B1 (nx341)
          ) ;
    inv01 ix338 (.Y (nx337), .A (A[30])) ;
    xnor2 ix359 (.Y (Y[30]), .A0 (nx341), .A1 (nx555)) ;
    aoi22 ix342 (.Y (nx341), .A0 (B[29]), .A1 (nx342), .B0 (A[29]), .B1 (nx551)
          ) ;
    oai22 ix343 (.Y (nx342), .A0 (nx345), .A1 (Y[28]), .B0 (nx549), .B1 (nx349)
          ) ;
    inv01 ix346 (.Y (nx345), .A (A[28])) ;
    xnor2 ix335 (.Y (Y[28]), .A0 (nx349), .A1 (nx547)) ;
    aoi22 ix350 (.Y (nx349), .A0 (B[27]), .A1 (nx318), .B0 (A[27]), .B1 (nx543)
          ) ;
    oai22 ix319 (.Y (nx318), .A0 (nx353), .A1 (Y[26]), .B0 (nx541), .B1 (nx357)
          ) ;
    inv01 ix354 (.Y (nx353), .A (A[26])) ;
    xnor2 ix311 (.Y (Y[26]), .A0 (nx357), .A1 (nx539)) ;
    aoi22 ix358 (.Y (nx357), .A0 (B[25]), .A1 (nx294), .B0 (A[25]), .B1 (nx535)
          ) ;
    oai22 ix295 (.Y (nx294), .A0 (nx361), .A1 (Y[24]), .B0 (nx533), .B1 (nx365)
          ) ;
    inv01 ix362 (.Y (nx361), .A (A[24])) ;
    xnor2 ix287 (.Y (Y[24]), .A0 (nx365), .A1 (nx531)) ;
    aoi22 ix366 (.Y (nx365), .A0 (B[23]), .A1 (nx270), .B0 (A[23]), .B1 (nx527)
          ) ;
    oai22 ix271 (.Y (nx270), .A0 (nx369), .A1 (Y[22]), .B0 (nx525), .B1 (nx373)
          ) ;
    inv01 ix370 (.Y (nx369), .A (A[22])) ;
    xnor2 ix263 (.Y (Y[22]), .A0 (nx373), .A1 (nx523)) ;
    aoi22 ix374 (.Y (nx373), .A0 (B[21]), .A1 (nx246), .B0 (A[21]), .B1 (nx519)
          ) ;
    oai22 ix247 (.Y (nx246), .A0 (nx377), .A1 (Y[20]), .B0 (nx517), .B1 (nx381)
          ) ;
    inv01 ix378 (.Y (nx377), .A (A[20])) ;
    xnor2 ix239 (.Y (Y[20]), .A0 (nx381), .A1 (nx515)) ;
    aoi22 ix382 (.Y (nx381), .A0 (B[19]), .A1 (nx222), .B0 (A[19]), .B1 (nx511)
          ) ;
    oai22 ix223 (.Y (nx222), .A0 (nx385), .A1 (Y[18]), .B0 (nx509), .B1 (nx388)
          ) ;
    inv01 ix386 (.Y (nx385), .A (A[18])) ;
    xnor2 ix215 (.Y (Y[18]), .A0 (nx388), .A1 (nx507)) ;
    aoi22 ix389 (.Y (nx388), .A0 (B[17]), .A1 (nx198), .B0 (A[17]), .B1 (nx503)
          ) ;
    oai22 ix199 (.Y (nx198), .A0 (nx391), .A1 (Y[16]), .B0 (nx501), .B1 (nx394)
          ) ;
    inv01 ix392 (.Y (nx391), .A (A[16])) ;
    xnor2 ix191 (.Y (Y[16]), .A0 (nx394), .A1 (nx499)) ;
    aoi22 ix395 (.Y (nx394), .A0 (B[15]), .A1 (nx174), .B0 (A[15]), .B1 (nx495)
          ) ;
    oai22 ix175 (.Y (nx174), .A0 (nx397), .A1 (Y[14]), .B0 (nx493), .B1 (nx400)
          ) ;
    inv01 ix398 (.Y (nx397), .A (A[14])) ;
    xnor2 ix167 (.Y (Y[14]), .A0 (nx400), .A1 (nx491)) ;
    aoi22 ix401 (.Y (nx400), .A0 (B[13]), .A1 (nx150), .B0 (A[13]), .B1 (nx487)
          ) ;
    oai22 ix151 (.Y (nx150), .A0 (nx403), .A1 (Y[12]), .B0 (nx485), .B1 (nx406)
          ) ;
    inv01 ix404 (.Y (nx403), .A (A[12])) ;
    xnor2 ix143 (.Y (Y[12]), .A0 (nx406), .A1 (nx483)) ;
    aoi22 ix407 (.Y (nx406), .A0 (B[11]), .A1 (nx126), .B0 (A[11]), .B1 (nx479)
          ) ;
    oai22 ix127 (.Y (nx126), .A0 (nx409), .A1 (Y[10]), .B0 (nx477), .B1 (nx412)
          ) ;
    inv01 ix410 (.Y (nx409), .A (A[10])) ;
    xnor2 ix119 (.Y (Y[10]), .A0 (nx412), .A1 (nx475)) ;
    aoi22 ix413 (.Y (nx412), .A0 (B[9]), .A1 (nx102), .B0 (A[9]), .B1 (nx471)) ;
    oai22 ix103 (.Y (nx102), .A0 (nx415), .A1 (Y[8]), .B0 (nx469), .B1 (nx418)
          ) ;
    inv01 ix416 (.Y (nx415), .A (A[8])) ;
    xnor2 ix95 (.Y (Y[8]), .A0 (nx418), .A1 (nx467)) ;
    aoi22 ix419 (.Y (nx418), .A0 (B[7]), .A1 (nx78), .B0 (A[7]), .B1 (nx463)) ;
    oai22 ix79 (.Y (nx78), .A0 (nx421), .A1 (Y[6]), .B0 (nx461), .B1 (nx424)) ;
    inv01 ix422 (.Y (nx421), .A (A[6])) ;
    xnor2 ix71 (.Y (Y[6]), .A0 (nx424), .A1 (nx459)) ;
    aoi22 ix425 (.Y (nx424), .A0 (B[5]), .A1 (nx54), .B0 (A[5]), .B1 (nx455)) ;
    oai22 ix55 (.Y (nx54), .A0 (nx427), .A1 (Y[4]), .B0 (nx453), .B1 (nx430)) ;
    inv01 ix428 (.Y (nx427), .A (A[4])) ;
    xnor2 ix47 (.Y (Y[4]), .A0 (nx430), .A1 (nx451)) ;
    aoi22 ix431 (.Y (nx430), .A0 (B[3]), .A1 (nx30), .B0 (A[3]), .B1 (nx447)) ;
    oai22 ix31 (.Y (nx30), .A0 (nx433), .A1 (Y[2]), .B0 (nx445), .B1 (nx436)) ;
    inv01 ix434 (.Y (nx433), .A (A[2])) ;
    xnor2 ix23 (.Y (Y[2]), .A0 (nx436), .A1 (nx443)) ;
    aoi32 ix437 (.Y (nx436), .A0 (B[1]), .A1 (B[0]), .A2 (A[0]), .B0 (A[1]), .B1 (
          nx438)) ;
    xnor2 ix439 (.Y (nx438), .A0 (nx4), .A1 (nx441)) ;
    nand02 ix5 (.Y (nx4), .A0 (B[0]), .A1 (A[0])) ;
    xnor2 ix442 (.Y (nx441), .A0 (A[1]), .A1 (B[1])) ;
    xor2 ix444 (.Y (nx443), .A0 (A[2]), .A1 (B[2])) ;
    inv01 ix446 (.Y (nx445), .A (B[2])) ;
    xor2 ix452 (.Y (nx451), .A0 (A[4]), .A1 (B[4])) ;
    inv01 ix454 (.Y (nx453), .A (B[4])) ;
    xor2 ix460 (.Y (nx459), .A0 (A[6]), .A1 (B[6])) ;
    inv01 ix462 (.Y (nx461), .A (B[6])) ;
    xor2 ix468 (.Y (nx467), .A0 (A[8]), .A1 (B[8])) ;
    inv01 ix470 (.Y (nx469), .A (B[8])) ;
    xor2 ix476 (.Y (nx475), .A0 (A[10]), .A1 (B[10])) ;
    inv01 ix478 (.Y (nx477), .A (B[10])) ;
    xor2 ix484 (.Y (nx483), .A0 (A[12]), .A1 (B[12])) ;
    inv01 ix486 (.Y (nx485), .A (B[12])) ;
    xor2 ix492 (.Y (nx491), .A0 (A[14]), .A1 (B[14])) ;
    inv01 ix494 (.Y (nx493), .A (B[14])) ;
    xor2 ix500 (.Y (nx499), .A0 (A[16]), .A1 (B[16])) ;
    inv01 ix502 (.Y (nx501), .A (B[16])) ;
    xor2 ix508 (.Y (nx507), .A0 (A[18]), .A1 (B[18])) ;
    inv01 ix510 (.Y (nx509), .A (B[18])) ;
    xor2 ix516 (.Y (nx515), .A0 (A[20]), .A1 (B[20])) ;
    inv01 ix518 (.Y (nx517), .A (B[20])) ;
    xor2 ix524 (.Y (nx523), .A0 (A[22]), .A1 (B[22])) ;
    inv01 ix526 (.Y (nx525), .A (B[22])) ;
    xor2 ix532 (.Y (nx531), .A0 (A[24]), .A1 (B[24])) ;
    inv01 ix534 (.Y (nx533), .A (B[24])) ;
    xor2 ix540 (.Y (nx539), .A0 (A[26]), .A1 (B[26])) ;
    inv01 ix542 (.Y (nx541), .A (B[26])) ;
    xor2 ix548 (.Y (nx547), .A0 (A[28]), .A1 (B[28])) ;
    inv01 ix550 (.Y (nx549), .A (B[28])) ;
    xor2 ix556 (.Y (nx555), .A0 (A[30]), .A1 (B[30])) ;
    inv01 ix558 (.Y (nx557), .A (B[30])) ;
    xnor2 ix35 (.Y (Y[3]), .A0 (nx30), .A1 (nx32)) ;
    xnor2 ix33 (.Y (nx32), .A0 (A[3]), .A1 (B[3])) ;
    xnor2 ix59 (.Y (Y[5]), .A0 (nx54), .A1 (nx56)) ;
    xnor2 ix57 (.Y (nx56), .A0 (A[5]), .A1 (B[5])) ;
    xnor2 ix83 (.Y (Y[7]), .A0 (nx78), .A1 (nx80)) ;
    xnor2 ix81 (.Y (nx80), .A0 (A[7]), .A1 (B[7])) ;
    xnor2 ix107 (.Y (Y[9]), .A0 (nx102), .A1 (nx104)) ;
    xnor2 ix105 (.Y (nx104), .A0 (A[9]), .A1 (B[9])) ;
    xnor2 ix131 (.Y (Y[11]), .A0 (nx126), .A1 (nx128)) ;
    xnor2 ix129 (.Y (nx128), .A0 (A[11]), .A1 (B[11])) ;
    xnor2 ix155 (.Y (Y[13]), .A0 (nx150), .A1 (nx152)) ;
    xnor2 ix153 (.Y (nx152), .A0 (A[13]), .A1 (B[13])) ;
    xnor2 ix179 (.Y (Y[15]), .A0 (nx174), .A1 (nx176)) ;
    xnor2 ix177 (.Y (nx176), .A0 (A[15]), .A1 (B[15])) ;
    xnor2 ix203 (.Y (Y[17]), .A0 (nx198), .A1 (nx200)) ;
    xnor2 ix201 (.Y (nx200), .A0 (A[17]), .A1 (B[17])) ;
    xnor2 ix227 (.Y (Y[19]), .A0 (nx222), .A1 (nx224)) ;
    xnor2 ix225 (.Y (nx224), .A0 (A[19]), .A1 (B[19])) ;
    xnor2 ix253 (.Y (Y[21]), .A0 (nx246), .A1 (nx248)) ;
    xnor2 ix252 (.Y (nx248), .A0 (A[21]), .A1 (B[21])) ;
    xnor2 ix275 (.Y (Y[23]), .A0 (nx270), .A1 (nx272)) ;
    xnor2 ix273 (.Y (nx272), .A0 (A[23]), .A1 (B[23])) ;
    xnor2 ix299 (.Y (Y[25]), .A0 (nx294), .A1 (nx296)) ;
    xnor2 ix297 (.Y (nx296), .A0 (A[25]), .A1 (B[25])) ;
    xnor2 ix323 (.Y (Y[27]), .A0 (nx318), .A1 (nx320)) ;
    xnor2 ix321 (.Y (nx320), .A0 (A[27]), .A1 (B[27])) ;
    xnor2 ix347 (.Y (Y[29]), .A0 (nx342), .A1 (nx344)) ;
    xnor2 ix345 (.Y (nx344), .A0 (A[29]), .A1 (B[29])) ;
    xnor2 ix371 (.Y (Y[31]), .A0 (nx366), .A1 (nx368)) ;
    xnor2 ix369 (.Y (nx368), .A0 (A[31]), .A1 (B[31])) ;
    inv01 ix9 (.Y (Y[1]), .A (nx438)) ;
    inv01 ix448 (.Y (nx447), .A (Y[3])) ;
    inv01 ix456 (.Y (nx455), .A (Y[5])) ;
    inv01 ix464 (.Y (nx463), .A (Y[7])) ;
    inv01 ix472 (.Y (nx471), .A (Y[9])) ;
    inv01 ix480 (.Y (nx479), .A (Y[11])) ;
    inv01 ix488 (.Y (nx487), .A (Y[13])) ;
    inv01 ix496 (.Y (nx495), .A (Y[15])) ;
    inv01 ix504 (.Y (nx503), .A (Y[17])) ;
    inv01 ix512 (.Y (nx511), .A (Y[19])) ;
    inv01 ix520 (.Y (nx519), .A (Y[21])) ;
    inv01 ix528 (.Y (nx527), .A (Y[23])) ;
    inv01 ix536 (.Y (nx535), .A (Y[25])) ;
    inv01 ix544 (.Y (nx543), .A (Y[27])) ;
    inv01 ix552 (.Y (nx551), .A (Y[29])) ;
    inv01 ix560 (.Y (nx559), .A (Y[31])) ;
endmodule

