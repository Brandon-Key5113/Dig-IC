//
// Verilog description for cell Full_Adder, 
// Sun Nov  3 13:52:20 2019
//
// LeonardoSpectrum Level 3, 2008b.3 
//


module Full_Adder ( A, B, Cin, Sum, Cout ) ;

    input A ;
    input B ;
    input Cin ;
    output Sum ;
    output Cout ;

    wire nx0, nx98;



    ao22 ix11 (.Y (Cout), .A0 (A), .A1 (B), .B0 (Cin), .B1 (nx98)) ;
    xnor2 ix3 (.Y (Sum), .A0 (Cin), .A1 (nx0)) ;
    xnor2 ix1 (.Y (nx0), .A0 (A), .A1 (B)) ;
    inv01 ix99 (.Y (nx98), .A (Sum)) ;
endmodule

