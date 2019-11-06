//
// Verilog description for cell Controller_16Bit, 
// Sun Nov  3 13:53:28 2019
//
// LeonardoSpectrum Level 3, 2008b.3 
//


module Controller_16Bit ( Control, ADD_SUB_In, OR_In, AND_In, ADD_SUB_SEL, 
                          nBitOut ) ;

    input [1:0]Control ;
    input [15:0]ADD_SUB_In ;
    input [15:0]OR_In ;
    input [15:0]AND_In ;
    output ADD_SUB_SEL ;
    output [15:0]nBitOut ;

    wire nx6, nx12, nx111, nx119, nx123, nx127, nx131, nx135, nx139, nx143, 
         nx147, nx151, nx155, nx159, nx163, nx167, nx171, nx174, nx181, nx183, 
         nx185;



    and02 ix171 (.Y (ADD_SUB_SEL), .A0 (Control[1]), .A1 (Control[0])) ;
    inv01 ix19 (.Y (nBitOut[0]), .A (nx111)) ;
    aoi222 ix112 (.Y (nx111), .A0 (ADD_SUB_In[0]), .A1 (Control[1]), .B0 (
           AND_In[0]), .B1 (nx181), .C0 (OR_In[0]), .C1 (nx183)) ;
    nor02 ix7 (.Y (nx6), .A0 (Control[1]), .A1 (Control[0])) ;
    nor02ii ix13 (.Y (nx12), .A0 (Control[1]), .A1 (Control[0])) ;
    inv01 ix29 (.Y (nBitOut[1]), .A (nx119)) ;
    aoi222 ix120 (.Y (nx119), .A0 (ADD_SUB_In[1]), .A1 (Control[1]), .B0 (
           AND_In[1]), .B1 (nx181), .C0 (OR_In[1]), .C1 (nx183)) ;
    inv01 ix42 (.Y (nBitOut[2]), .A (nx123)) ;
    aoi222 ix124 (.Y (nx123), .A0 (ADD_SUB_In[2]), .A1 (Control[1]), .B0 (
           AND_In[2]), .B1 (nx181), .C0 (OR_In[2]), .C1 (nx183)) ;
    inv01 ix49 (.Y (nBitOut[3]), .A (nx127)) ;
    aoi222 ix128 (.Y (nx127), .A0 (ADD_SUB_In[3]), .A1 (Control[1]), .B0 (
           AND_In[3]), .B1 (nx181), .C0 (OR_In[3]), .C1 (nx183)) ;
    inv01 ix59 (.Y (nBitOut[4]), .A (nx131)) ;
    aoi222 ix132 (.Y (nx131), .A0 (ADD_SUB_In[4]), .A1 (Control[1]), .B0 (
           AND_In[4]), .B1 (nx181), .C0 (OR_In[4]), .C1 (nx183)) ;
    inv01 ix69 (.Y (nBitOut[5]), .A (nx135)) ;
    aoi222 ix136 (.Y (nx135), .A0 (ADD_SUB_In[5]), .A1 (Control[1]), .B0 (
           AND_In[5]), .B1 (nx181), .C0 (OR_In[5]), .C1 (nx183)) ;
    inv01 ix79 (.Y (nBitOut[6]), .A (nx139)) ;
    aoi222 ix140 (.Y (nx139), .A0 (ADD_SUB_In[6]), .A1 (Control[1]), .B0 (
           AND_In[6]), .B1 (nx181), .C0 (OR_In[6]), .C1 (nx183)) ;
    inv01 ix89 (.Y (nBitOut[7]), .A (nx143)) ;
    aoi222 ix144 (.Y (nx143), .A0 (ADD_SUB_In[7]), .A1 (Control[1]), .B0 (
           AND_In[7]), .B1 (nx181), .C0 (OR_In[7]), .C1 (nx183)) ;
    inv01 ix99 (.Y (nBitOut[8]), .A (nx147)) ;
    aoi222 ix148 (.Y (nx147), .A0 (ADD_SUB_In[8]), .A1 (Control[1]), .B0 (
           AND_In[8]), .B1 (nx181), .C0 (OR_In[8]), .C1 (nx183)) ;
    inv01 ix109 (.Y (nBitOut[9]), .A (nx151)) ;
    aoi222 ix152 (.Y (nx151), .A0 (ADD_SUB_In[9]), .A1 (Control[1]), .B0 (
           AND_In[9]), .B1 (nx181), .C0 (OR_In[9]), .C1 (nx183)) ;
    inv01 ix119 (.Y (nBitOut[10]), .A (nx155)) ;
    aoi222 ix156 (.Y (nx155), .A0 (ADD_SUB_In[10]), .A1 (Control[1]), .B0 (
           AND_In[10]), .B1 (nx181), .C0 (OR_In[10]), .C1 (nx183)) ;
    inv01 ix129 (.Y (nBitOut[11]), .A (nx159)) ;
    aoi222 ix160 (.Y (nx159), .A0 (ADD_SUB_In[11]), .A1 (Control[1]), .B0 (
           AND_In[11]), .B1 (nx181), .C0 (OR_In[11]), .C1 (nx183)) ;
    inv01 ix139 (.Y (nBitOut[12]), .A (nx163)) ;
    aoi222 ix164 (.Y (nx163), .A0 (ADD_SUB_In[12]), .A1 (Control[1]), .B0 (
           AND_In[12]), .B1 (nx6), .C0 (OR_In[12]), .C1 (nx183)) ;
    inv01 ix149 (.Y (nBitOut[13]), .A (nx167)) ;
    aoi222 ix168 (.Y (nx167), .A0 (ADD_SUB_In[13]), .A1 (Control[1]), .B0 (
           AND_In[13]), .B1 (nx6), .C0 (OR_In[13]), .C1 (nx183)) ;
    inv01 ix159 (.Y (nBitOut[14]), .A (nx171)) ;
    aoi222 ix172 (.Y (nx171), .A0 (ADD_SUB_In[14]), .A1 (Control[1]), .B0 (
           AND_In[14]), .B1 (nx6), .C0 (OR_In[14]), .C1 (nx183)) ;
    inv01 ix169 (.Y (nBitOut[15]), .A (nx174)) ;
    aoi222 ix175 (.Y (nx174), .A0 (Control[1]), .A1 (ADD_SUB_In[15]), .B0 (
           AND_In[15]), .B1 (nx6), .C0 (OR_In[15]), .C1 (nx185)) ;
    nor02 ix180 (.Y (nx181), .A0 (Control[1]), .A1 (Control[0])) ;
    buf02 ix182 (.Y (nx183), .A (nx12)) ;
    buf02 ix184 (.Y (nx185), .A (nx12)) ;
endmodule

