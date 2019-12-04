//
// Verilog description for cell nBitMux_2to1, 
// Sun Nov 17 15:29:20 2019
//
// LeonardoSpectrum Level 3, 2008b.3 
//


module nBitMux_2to1 ( A, B, sel, Y ) ;

    input [15:0]A ;
    input [15:0]B ;
    input sel ;
    output [15:0]Y ;




    mux21 ix7 (.Y (Y[0]), .A0 (A[0]), .A1 (B[0]), .S0 (sel)) ;
    mux21 ix15 (.Y (Y[1]), .A0 (A[1]), .A1 (B[1]), .S0 (sel)) ;
    mux21 ix23 (.Y (Y[2]), .A0 (A[2]), .A1 (B[2]), .S0 (sel)) ;
    mux21 ix31 (.Y (Y[3]), .A0 (A[3]), .A1 (B[3]), .S0 (sel)) ;
    mux21 ix39 (.Y (Y[4]), .A0 (A[4]), .A1 (B[4]), .S0 (sel)) ;
    mux21 ix47 (.Y (Y[5]), .A0 (A[5]), .A1 (B[5]), .S0 (sel)) ;
    mux21 ix55 (.Y (Y[6]), .A0 (A[6]), .A1 (B[6]), .S0 (sel)) ;
    mux21 ix63 (.Y (Y[7]), .A0 (A[7]), .A1 (B[7]), .S0 (sel)) ;
    mux21 ix71 (.Y (Y[8]), .A0 (A[8]), .A1 (B[8]), .S0 (sel)) ;
    mux21 ix79 (.Y (Y[9]), .A0 (A[9]), .A1 (B[9]), .S0 (sel)) ;
    mux21 ix87 (.Y (Y[10]), .A0 (A[10]), .A1 (B[10]), .S0 (sel)) ;
    mux21 ix95 (.Y (Y[11]), .A0 (A[11]), .A1 (B[11]), .S0 (sel)) ;
    mux21 ix103 (.Y (Y[12]), .A0 (A[12]), .A1 (B[12]), .S0 (sel)) ;
    mux21 ix111 (.Y (Y[13]), .A0 (A[13]), .A1 (B[13]), .S0 (sel)) ;
    mux21 ix119 (.Y (Y[14]), .A0 (A[14]), .A1 (B[14]), .S0 (sel)) ;
    mux21 ix127 (.Y (Y[15]), .A0 (A[15]), .A1 (B[15]), .S0 (sel)) ;
endmodule

