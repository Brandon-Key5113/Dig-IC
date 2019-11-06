//
// Verilog description for cell nBitOR_16Bit, 
// Sun Nov  3 13:53:15 2019
//
// LeonardoSpectrum Level 3, 2008b.3 
//


module nBitOR_16Bit ( A, B, Y ) ;

    input [15:0]A ;
    input [15:0]B ;
    output [15:0]Y ;




    or02 ix1 (.Y (Y[0]), .A0 (A[0]), .A1 (B[0])) ;
    or02 ix3 (.Y (Y[1]), .A0 (A[1]), .A1 (B[1])) ;
    or02 ix5 (.Y (Y[2]), .A0 (A[2]), .A1 (B[2])) ;
    or02 ix7 (.Y (Y[3]), .A0 (A[3]), .A1 (B[3])) ;
    or02 ix9 (.Y (Y[4]), .A0 (A[4]), .A1 (B[4])) ;
    or02 ix11 (.Y (Y[5]), .A0 (A[5]), .A1 (B[5])) ;
    or02 ix13 (.Y (Y[6]), .A0 (A[6]), .A1 (B[6])) ;
    or02 ix15 (.Y (Y[7]), .A0 (A[7]), .A1 (B[7])) ;
    or02 ix17 (.Y (Y[8]), .A0 (A[8]), .A1 (B[8])) ;
    or02 ix19 (.Y (Y[9]), .A0 (A[9]), .A1 (B[9])) ;
    or02 ix21 (.Y (Y[10]), .A0 (A[10]), .A1 (B[10])) ;
    or02 ix23 (.Y (Y[11]), .A0 (A[11]), .A1 (B[11])) ;
    or02 ix25 (.Y (Y[12]), .A0 (A[12]), .A1 (B[12])) ;
    or02 ix27 (.Y (Y[13]), .A0 (A[13]), .A1 (B[13])) ;
    or02 ix29 (.Y (Y[14]), .A0 (A[14]), .A1 (B[14])) ;
    or02 ix31 (.Y (Y[15]), .A0 (A[15]), .A1 (B[15])) ;
endmodule

