//
// Verilog description for cell ALU_1Bit, 
// Sun Nov  3 13:55:47 2019
//
// LeonardoSpectrum Level 3, 2008b.3 
//


module ALU_1Bit ( Control, A, B, Y, CB ) ;

    input [1:0]Control ;
    input A ;
    input B ;
    output Y ;
    output CB ;

    wire nx0, nx79, nx81, nx83, nx85;



    and03 ix5 (.Y (CB), .A0 (nx0), .A1 (Control[1]), .A2 (B)) ;
    xor2 ix1 (.Y (nx0), .A0 (Control[0]), .A1 (A)) ;
    oai32 ix21 (.Y (Y), .A0 (nx79), .A1 (nx81), .A2 (Control[1]), .B0 (nx83), .B1 (
          nx85)) ;
    inv01 ix80 (.Y (nx79), .A (A)) ;
    inv01 ix82 (.Y (nx81), .A (B)) ;
    xnor2 ix84 (.Y (nx83), .A0 (A), .A1 (B)) ;
    nor02 ix86 (.Y (nx85), .A0 (Control[0]), .A1 (Control[1])) ;
endmodule

