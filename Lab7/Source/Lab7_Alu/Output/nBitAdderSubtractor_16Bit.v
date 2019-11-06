//
// Verilog description for cell nBitAdderSubtractor_16Bit, 
// Sun Nov  3 13:52:43 2019
//
// LeonardoSpectrum Level 3, 2008b.3 
//


module nBitAdderSubtractor_16Bit ( A, B, SEL, Y, CB ) ;

    input [15:0]A ;
    input [15:0]B ;
    input SEL ;
    output [15:0]Y ;
    output CB ;

    wire nx0, nx42, nx44, nx54, nx56, nx66, nx68, nx78, nx80, nx90, nx92, nx102, 
         nx104, nx114, nx116, nx126, nx128, nx138, nx140, nx150, nx152, nx162, 
         nx164, nx174, nx176, nx186, nx188, nx198, nx200, nx210, nx216, nx226, 
         nx240, nx243, nx245, nx251, nx259, nx267, nx275, nx283, nx291, nx299, 
         nx307, nx315, nx323, nx331, nx339, nx347, nx360, nx366, nx372, nx378, 
         nx384, nx390, nx396, nx402, nx408, nx414, nx420, nx426, nx430, nx432, 
         nx444, nx456, nx458, nx460, nx462, nx464, nx466, nx468, nx470, nx472, 
         nx474, nx476, nx478, nx480, nx482;



    xnor2 ix235 (.Y (CB), .A0 (nx240), .A1 (SEL)) ;
    aoi22 ix241 (.Y (nx240), .A0 (A[15]), .A1 (nx216), .B0 (nx210), .B1 (nx0)) ;
    nand02 ix217 (.Y (nx216), .A0 (nx243), .A1 (nx245)) ;
    xnor2 ix244 (.Y (nx243), .A0 (B[15]), .A1 (SEL)) ;
    xnor2 ix252 (.Y (nx251), .A0 (B[13]), .A1 (SEL)) ;
    xnor2 ix260 (.Y (nx259), .A0 (B[12]), .A1 (SEL)) ;
    xnor2 ix268 (.Y (nx267), .A0 (B[11]), .A1 (SEL)) ;
    xnor2 ix276 (.Y (nx275), .A0 (B[10]), .A1 (SEL)) ;
    xnor2 ix284 (.Y (nx283), .A0 (B[9]), .A1 (SEL)) ;
    xnor2 ix292 (.Y (nx291), .A0 (B[8]), .A1 (SEL)) ;
    xnor2 ix300 (.Y (nx299), .A0 (B[7]), .A1 (SEL)) ;
    xnor2 ix308 (.Y (nx307), .A0 (B[6]), .A1 (SEL)) ;
    xnor2 ix316 (.Y (nx315), .A0 (B[5]), .A1 (SEL)) ;
    xnor2 ix324 (.Y (nx323), .A0 (B[4]), .A1 (SEL)) ;
    xnor2 ix332 (.Y (nx331), .A0 (B[3]), .A1 (SEL)) ;
    xnor2 ix340 (.Y (nx339), .A0 (B[2]), .A1 (SEL)) ;
    xnor2 ix348 (.Y (nx347), .A0 (B[1]), .A1 (SEL)) ;
    mux21 ix43 (.Y (nx42), .A0 (SEL), .A1 (A[0]), .S0 (B[0])) ;
    xnor2 ix361 (.Y (nx360), .A0 (nx347), .A1 (nx44)) ;
    xnor2 ix45 (.Y (nx44), .A0 (A[1]), .A1 (nx42)) ;
    xnor2 ix367 (.Y (nx366), .A0 (nx339), .A1 (nx56)) ;
    xnor2 ix57 (.Y (nx56), .A0 (A[2]), .A1 (nx54)) ;
    xnor2 ix373 (.Y (nx372), .A0 (nx331), .A1 (nx68)) ;
    xnor2 ix69 (.Y (nx68), .A0 (A[3]), .A1 (nx66)) ;
    xnor2 ix379 (.Y (nx378), .A0 (nx323), .A1 (nx80)) ;
    xnor2 ix81 (.Y (nx80), .A0 (A[4]), .A1 (nx78)) ;
    xnor2 ix385 (.Y (nx384), .A0 (nx315), .A1 (nx92)) ;
    xnor2 ix93 (.Y (nx92), .A0 (A[5]), .A1 (nx90)) ;
    xnor2 ix391 (.Y (nx390), .A0 (nx307), .A1 (nx104)) ;
    xnor2 ix105 (.Y (nx104), .A0 (A[6]), .A1 (nx102)) ;
    xnor2 ix397 (.Y (nx396), .A0 (nx299), .A1 (nx116)) ;
    xnor2 ix117 (.Y (nx116), .A0 (A[7]), .A1 (nx114)) ;
    xnor2 ix403 (.Y (nx402), .A0 (nx291), .A1 (nx128)) ;
    xnor2 ix129 (.Y (nx128), .A0 (A[8]), .A1 (nx126)) ;
    xnor2 ix409 (.Y (nx408), .A0 (nx283), .A1 (nx140)) ;
    xnor2 ix141 (.Y (nx140), .A0 (A[9]), .A1 (nx138)) ;
    xnor2 ix415 (.Y (nx414), .A0 (nx275), .A1 (nx152)) ;
    xnor2 ix153 (.Y (nx152), .A0 (A[10]), .A1 (nx150)) ;
    xnor2 ix421 (.Y (nx420), .A0 (nx267), .A1 (nx164)) ;
    xnor2 ix165 (.Y (nx164), .A0 (A[11]), .A1 (nx162)) ;
    xnor2 ix427 (.Y (nx426), .A0 (nx259), .A1 (nx176)) ;
    xnor2 ix177 (.Y (nx176), .A0 (A[12]), .A1 (nx174)) ;
    xnor2 ix431 (.Y (nx430), .A0 (nx432), .A1 (nx200)) ;
    xnor2 ix433 (.Y (nx432), .A0 (B[14]), .A1 (SEL)) ;
    xnor2 ix201 (.Y (nx200), .A0 (A[14]), .A1 (nx198)) ;
    xnor2 ix445 (.Y (nx444), .A0 (nx251), .A1 (nx188)) ;
    xnor2 ix189 (.Y (nx188), .A0 (A[13]), .A1 (nx186)) ;
    xor2 ix35 (.Y (Y[0]), .A0 (B[0]), .A1 (A[0])) ;
    ao32 ix233 (.Y (Y[15]), .A0 (nx0), .A1 (A[15]), .A2 (nx210), .B0 (nx240), .B1 (
         nx226)) ;
    or03 ix227 (.Y (nx226), .A0 (nx210), .A1 (A[15]), .A2 (nx0)) ;
    inv01 ix246 (.Y (nx245), .A (nx210)) ;
    inv01 ix1 (.Y (nx0), .A (nx243)) ;
    inv01 ix47 (.Y (Y[1]), .A (nx360)) ;
    inv01 ix59 (.Y (Y[2]), .A (nx366)) ;
    inv01 ix71 (.Y (Y[3]), .A (nx372)) ;
    inv01 ix83 (.Y (Y[4]), .A (nx378)) ;
    inv01 ix95 (.Y (Y[5]), .A (nx384)) ;
    inv01 ix107 (.Y (Y[6]), .A (nx390)) ;
    inv01 ix119 (.Y (Y[7]), .A (nx396)) ;
    inv01 ix131 (.Y (Y[8]), .A (nx402)) ;
    inv01 ix143 (.Y (Y[9]), .A (nx408)) ;
    inv01 ix155 (.Y (Y[10]), .A (nx414)) ;
    inv01 ix167 (.Y (Y[11]), .A (nx420)) ;
    inv01 ix179 (.Y (Y[12]), .A (nx426)) ;
    inv01 ix194 (.Y (Y[13]), .A (nx444)) ;
    inv01 ix203 (.Y (Y[14]), .A (nx430)) ;
    ao22 ix199 (.Y (nx198), .A0 (A[13]), .A1 (nx444), .B0 (nx186), .B1 (nx456)
         ) ;
    inv01 ix455 (.Y (nx456), .A (nx251)) ;
    ao22 ix187 (.Y (nx186), .A0 (A[12]), .A1 (nx426), .B0 (nx174), .B1 (nx458)
         ) ;
    inv01 ix457 (.Y (nx458), .A (nx259)) ;
    ao22 ix175 (.Y (nx174), .A0 (A[11]), .A1 (nx420), .B0 (nx162), .B1 (nx460)
         ) ;
    inv01 ix459 (.Y (nx460), .A (nx267)) ;
    ao22 ix163 (.Y (nx162), .A0 (A[10]), .A1 (nx414), .B0 (nx150), .B1 (nx462)
         ) ;
    inv01 ix461 (.Y (nx462), .A (nx275)) ;
    ao22 ix151 (.Y (nx150), .A0 (A[9]), .A1 (nx408), .B0 (nx138), .B1 (nx464)) ;
    inv01 ix463 (.Y (nx464), .A (nx283)) ;
    ao22 ix139 (.Y (nx138), .A0 (A[8]), .A1 (nx402), .B0 (nx126), .B1 (nx466)) ;
    inv01 ix465 (.Y (nx466), .A (nx291)) ;
    ao22 ix127 (.Y (nx126), .A0 (A[7]), .A1 (nx396), .B0 (nx114), .B1 (nx468)) ;
    inv01 ix467 (.Y (nx468), .A (nx299)) ;
    ao22 ix115 (.Y (nx114), .A0 (A[6]), .A1 (nx390), .B0 (nx102), .B1 (nx470)) ;
    inv01 ix469 (.Y (nx470), .A (nx307)) ;
    ao22 ix103 (.Y (nx102), .A0 (A[5]), .A1 (nx384), .B0 (nx90), .B1 (nx472)) ;
    inv01 ix471 (.Y (nx472), .A (nx315)) ;
    ao22 ix91 (.Y (nx90), .A0 (A[4]), .A1 (nx378), .B0 (nx78), .B1 (nx474)) ;
    inv01 ix473 (.Y (nx474), .A (nx323)) ;
    ao22 ix79 (.Y (nx78), .A0 (A[3]), .A1 (nx372), .B0 (nx66), .B1 (nx476)) ;
    inv01 ix475 (.Y (nx476), .A (nx331)) ;
    ao22 ix67 (.Y (nx66), .A0 (A[2]), .A1 (nx366), .B0 (nx54), .B1 (nx478)) ;
    inv01 ix477 (.Y (nx478), .A (nx339)) ;
    ao22 ix55 (.Y (nx54), .A0 (A[1]), .A1 (nx360), .B0 (nx42), .B1 (nx480)) ;
    inv01 ix479 (.Y (nx480), .A (nx347)) ;
    ao22 ix211 (.Y (nx210), .A0 (A[14]), .A1 (nx430), .B0 (nx198), .B1 (nx482)
         ) ;
    inv01 ix481 (.Y (nx482), .A (nx432)) ;
endmodule

