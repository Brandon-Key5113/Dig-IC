//
// Verilog description for cell nBitRegister_16, 
// Sun Nov 17 14:04:04 2019
//
// LeonardoSpectrum Level 3, 2008b.3 
//


module nBitRegister_16 ( nBitIn, WE, Reset, clk, Y ) ;

    input [15:0]nBitIn ;
    input WE ;
    input Reset ;
    input clk ;
    output [15:0]Y ;

    wire NOT_Reset, nx230, nx240, nx250, nx260, nx270, nx280, nx290, nx300, 
         nx310, nx320, nx330, nx340, nx350, nx360, nx370, nx380;
    wire [15:0] \$dummy ;




    dffr reg_Y_0 (.Q (Y[0]), .QB (\$dummy [0]), .D (nx230), .CLK (clk), .R (
         NOT_Reset)) ;
    mux21 ix231 (.Y (nx230), .A0 (Y[0]), .A1 (nBitIn[0]), .S0 (WE)) ;
    inv01 ix393 (.Y (NOT_Reset), .A (Reset)) ;
    dffr reg_Y_1 (.Q (Y[1]), .QB (\$dummy [1]), .D (nx240), .CLK (clk), .R (
         NOT_Reset)) ;
    mux21 ix241 (.Y (nx240), .A0 (Y[1]), .A1 (nBitIn[1]), .S0 (WE)) ;
    dffr reg_Y_2 (.Q (Y[2]), .QB (\$dummy [2]), .D (nx250), .CLK (clk), .R (
         NOT_Reset)) ;
    mux21 ix251 (.Y (nx250), .A0 (Y[2]), .A1 (nBitIn[2]), .S0 (WE)) ;
    dffr reg_Y_3 (.Q (Y[3]), .QB (\$dummy [3]), .D (nx260), .CLK (clk), .R (
         NOT_Reset)) ;
    mux21 ix261 (.Y (nx260), .A0 (Y[3]), .A1 (nBitIn[3]), .S0 (WE)) ;
    dffr reg_Y_4 (.Q (Y[4]), .QB (\$dummy [4]), .D (nx270), .CLK (clk), .R (
         NOT_Reset)) ;
    mux21 ix271 (.Y (nx270), .A0 (Y[4]), .A1 (nBitIn[4]), .S0 (WE)) ;
    dffr reg_Y_5 (.Q (Y[5]), .QB (\$dummy [5]), .D (nx280), .CLK (clk), .R (
         NOT_Reset)) ;
    mux21 ix281 (.Y (nx280), .A0 (Y[5]), .A1 (nBitIn[5]), .S0 (WE)) ;
    dffr reg_Y_6 (.Q (Y[6]), .QB (\$dummy [6]), .D (nx290), .CLK (clk), .R (
         NOT_Reset)) ;
    mux21 ix291 (.Y (nx290), .A0 (Y[6]), .A1 (nBitIn[6]), .S0 (WE)) ;
    dffr reg_Y_7 (.Q (Y[7]), .QB (\$dummy [7]), .D (nx300), .CLK (clk), .R (
         NOT_Reset)) ;
    mux21 ix301 (.Y (nx300), .A0 (Y[7]), .A1 (nBitIn[7]), .S0 (WE)) ;
    dffr reg_Y_8 (.Q (Y[8]), .QB (\$dummy [8]), .D (nx310), .CLK (clk), .R (
         NOT_Reset)) ;
    mux21 ix311 (.Y (nx310), .A0 (Y[8]), .A1 (nBitIn[8]), .S0 (WE)) ;
    dffr reg_Y_9 (.Q (Y[9]), .QB (\$dummy [9]), .D (nx320), .CLK (clk), .R (
         NOT_Reset)) ;
    mux21 ix321 (.Y (nx320), .A0 (Y[9]), .A1 (nBitIn[9]), .S0 (WE)) ;
    dffr reg_Y_10 (.Q (Y[10]), .QB (\$dummy [10]), .D (nx330), .CLK (clk), .R (
         NOT_Reset)) ;
    mux21 ix331 (.Y (nx330), .A0 (Y[10]), .A1 (nBitIn[10]), .S0 (WE)) ;
    dffr reg_Y_11 (.Q (Y[11]), .QB (\$dummy [11]), .D (nx340), .CLK (clk), .R (
         NOT_Reset)) ;
    mux21 ix341 (.Y (nx340), .A0 (Y[11]), .A1 (nBitIn[11]), .S0 (WE)) ;
    dffr reg_Y_12 (.Q (Y[12]), .QB (\$dummy [12]), .D (nx350), .CLK (clk), .R (
         NOT_Reset)) ;
    mux21 ix351 (.Y (nx350), .A0 (Y[12]), .A1 (nBitIn[12]), .S0 (WE)) ;
    dffr reg_Y_13 (.Q (Y[13]), .QB (\$dummy [13]), .D (nx360), .CLK (clk), .R (
         NOT_Reset)) ;
    mux21 ix361 (.Y (nx360), .A0 (Y[13]), .A1 (nBitIn[13]), .S0 (WE)) ;
    dffr reg_Y_14 (.Q (Y[14]), .QB (\$dummy [14]), .D (nx370), .CLK (clk), .R (
         NOT_Reset)) ;
    mux21 ix371 (.Y (nx370), .A0 (Y[14]), .A1 (nBitIn[14]), .S0 (WE)) ;
    dffr reg_Y_15 (.Q (Y[15]), .QB (\$dummy [15]), .D (nx380), .CLK (clk), .R (
         NOT_Reset)) ;
    mux21 ix381 (.Y (nx380), .A0 (Y[15]), .A1 (nBitIn[15]), .S0 (WE)) ;
endmodule

