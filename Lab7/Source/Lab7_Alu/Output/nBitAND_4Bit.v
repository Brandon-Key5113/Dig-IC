//
// Verilog description for cell nBitAND_4Bit, 
// Sun Nov  3 13:53:06 2019
//
// LeonardoSpectrum Level 3, 2008b.3 
//


module nBitAND_4Bit ( A, B, Y ) ;

    input [15:0]A ;
    input [15:0]B ;
    output [15:0]Y ;




    and02 ix1 (.Y (Y[0]), .A0 (B[0]), .A1 (A[0])) ;
    and02 ix3 (.Y (Y[1]), .A0 (B[1]), .A1 (A[1])) ;
    and02 ix5 (.Y (Y[2]), .A0 (B[2]), .A1 (A[2])) ;
    and02 ix7 (.Y (Y[3]), .A0 (B[3]), .A1 (A[3])) ;
    and02 ix9 (.Y (Y[4]), .A0 (B[4]), .A1 (A[4])) ;
    and02 ix11 (.Y (Y[5]), .A0 (B[5]), .A1 (A[5])) ;
    and02 ix13 (.Y (Y[6]), .A0 (B[6]), .A1 (A[6])) ;
    and02 ix15 (.Y (Y[7]), .A0 (B[7]), .A1 (A[7])) ;
    and02 ix17 (.Y (Y[8]), .A0 (B[8]), .A1 (A[8])) ;
    and02 ix19 (.Y (Y[9]), .A0 (B[9]), .A1 (A[9])) ;
    and02 ix21 (.Y (Y[10]), .A0 (B[10]), .A1 (A[10])) ;
    and02 ix23 (.Y (Y[11]), .A0 (B[11]), .A1 (A[11])) ;
    and02 ix25 (.Y (Y[12]), .A0 (B[12]), .A1 (A[12])) ;
    and02 ix27 (.Y (Y[13]), .A0 (B[13]), .A1 (A[13])) ;
    and02 ix29 (.Y (Y[14]), .A0 (B[14]), .A1 (A[14])) ;
    and02 ix31 (.Y (Y[15]), .A0 (B[15]), .A1 (A[15])) ;
endmodule

