//
// Verilog description for cell nBitRegister_32, 
// Sun Nov 17 14:04:11 2019
//
// LeonardoSpectrum Level 3, 2008b.3 
//


module nBitRegister_32 ( nBitIn, WE, Reset, clk, Y ) ;

    input [31:0]nBitIn ;
    input WE ;
    input Reset ;
    input clk ;
    output [31:0]Y ;

    wire NOT_Reset, nx422, nx432, nx442, nx452, nx462, nx472, nx482, nx492, 
         nx502, nx512, nx522, nx532, nx542, nx552, nx562, nx572, nx582, nx592, 
         nx602, nx612, nx622, nx632, nx642, nx652, nx662, nx672, nx682, nx692, 
         nx702, nx712, nx722, nx732, nx845, nx847;
    wire [31:0] \$dummy ;




    dffr reg_Y_0 (.Q (Y[0]), .QB (\$dummy [0]), .D (nx422), .CLK (clk), .R (
         nx845)) ;
    mux21 ix423 (.Y (nx422), .A0 (Y[0]), .A1 (nBitIn[0]), .S0 (WE)) ;
    inv01 ix745 (.Y (NOT_Reset), .A (Reset)) ;
    dffr reg_Y_1 (.Q (Y[1]), .QB (\$dummy [1]), .D (nx432), .CLK (clk), .R (
         nx845)) ;
    mux21 ix433 (.Y (nx432), .A0 (Y[1]), .A1 (nBitIn[1]), .S0 (WE)) ;
    dffr reg_Y_2 (.Q (Y[2]), .QB (\$dummy [2]), .D (nx442), .CLK (clk), .R (
         nx845)) ;
    mux21 ix443 (.Y (nx442), .A0 (Y[2]), .A1 (nBitIn[2]), .S0 (WE)) ;
    dffr reg_Y_3 (.Q (Y[3]), .QB (\$dummy [3]), .D (nx452), .CLK (clk), .R (
         nx845)) ;
    mux21 ix453 (.Y (nx452), .A0 (Y[3]), .A1 (nBitIn[3]), .S0 (WE)) ;
    dffr reg_Y_4 (.Q (Y[4]), .QB (\$dummy [4]), .D (nx462), .CLK (clk), .R (
         nx845)) ;
    mux21 ix463 (.Y (nx462), .A0 (Y[4]), .A1 (nBitIn[4]), .S0 (WE)) ;
    dffr reg_Y_5 (.Q (Y[5]), .QB (\$dummy [5]), .D (nx472), .CLK (clk), .R (
         nx845)) ;
    mux21 ix473 (.Y (nx472), .A0 (Y[5]), .A1 (nBitIn[5]), .S0 (WE)) ;
    dffr reg_Y_6 (.Q (Y[6]), .QB (\$dummy [6]), .D (nx482), .CLK (clk), .R (
         nx845)) ;
    mux21 ix483 (.Y (nx482), .A0 (Y[6]), .A1 (nBitIn[6]), .S0 (WE)) ;
    dffr reg_Y_7 (.Q (Y[7]), .QB (\$dummy [7]), .D (nx492), .CLK (clk), .R (
         nx845)) ;
    mux21 ix493 (.Y (nx492), .A0 (Y[7]), .A1 (nBitIn[7]), .S0 (WE)) ;
    dffr reg_Y_8 (.Q (Y[8]), .QB (\$dummy [8]), .D (nx502), .CLK (clk), .R (
         nx845)) ;
    mux21 ix503 (.Y (nx502), .A0 (Y[8]), .A1 (nBitIn[8]), .S0 (WE)) ;
    dffr reg_Y_9 (.Q (Y[9]), .QB (\$dummy [9]), .D (nx512), .CLK (clk), .R (
         nx845)) ;
    mux21 ix513 (.Y (nx512), .A0 (Y[9]), .A1 (nBitIn[9]), .S0 (WE)) ;
    dffr reg_Y_10 (.Q (Y[10]), .QB (\$dummy [10]), .D (nx522), .CLK (clk), .R (
         nx845)) ;
    mux21 ix523 (.Y (nx522), .A0 (Y[10]), .A1 (nBitIn[10]), .S0 (WE)) ;
    dffr reg_Y_11 (.Q (Y[11]), .QB (\$dummy [11]), .D (nx532), .CLK (clk), .R (
         nx845)) ;
    mux21 ix533 (.Y (nx532), .A0 (Y[11]), .A1 (nBitIn[11]), .S0 (WE)) ;
    dffr reg_Y_12 (.Q (Y[12]), .QB (\$dummy [12]), .D (nx542), .CLK (clk), .R (
         nx845)) ;
    mux21 ix543 (.Y (nx542), .A0 (Y[12]), .A1 (nBitIn[12]), .S0 (WE)) ;
    dffr reg_Y_13 (.Q (Y[13]), .QB (\$dummy [13]), .D (nx552), .CLK (clk), .R (
         nx845)) ;
    mux21 ix553 (.Y (nx552), .A0 (Y[13]), .A1 (nBitIn[13]), .S0 (WE)) ;
    dffr reg_Y_14 (.Q (Y[14]), .QB (\$dummy [14]), .D (nx562), .CLK (clk), .R (
         nx845)) ;
    mux21 ix563 (.Y (nx562), .A0 (Y[14]), .A1 (nBitIn[14]), .S0 (WE)) ;
    dffr reg_Y_15 (.Q (Y[15]), .QB (\$dummy [15]), .D (nx572), .CLK (clk), .R (
         nx847)) ;
    mux21 ix573 (.Y (nx572), .A0 (Y[15]), .A1 (nBitIn[15]), .S0 (WE)) ;
    dffr reg_Y_16 (.Q (Y[16]), .QB (\$dummy [16]), .D (nx582), .CLK (clk), .R (
         nx847)) ;
    mux21 ix583 (.Y (nx582), .A0 (Y[16]), .A1 (nBitIn[16]), .S0 (WE)) ;
    dffr reg_Y_17 (.Q (Y[17]), .QB (\$dummy [17]), .D (nx592), .CLK (clk), .R (
         nx847)) ;
    mux21 ix593 (.Y (nx592), .A0 (Y[17]), .A1 (nBitIn[17]), .S0 (WE)) ;
    dffr reg_Y_18 (.Q (Y[18]), .QB (\$dummy [18]), .D (nx602), .CLK (clk), .R (
         nx847)) ;
    mux21 ix603 (.Y (nx602), .A0 (Y[18]), .A1 (nBitIn[18]), .S0 (WE)) ;
    dffr reg_Y_19 (.Q (Y[19]), .QB (\$dummy [19]), .D (nx612), .CLK (clk), .R (
         nx847)) ;
    mux21 ix613 (.Y (nx612), .A0 (Y[19]), .A1 (nBitIn[19]), .S0 (WE)) ;
    dffr reg_Y_20 (.Q (Y[20]), .QB (\$dummy [20]), .D (nx622), .CLK (clk), .R (
         nx847)) ;
    mux21 ix623 (.Y (nx622), .A0 (Y[20]), .A1 (nBitIn[20]), .S0 (WE)) ;
    dffr reg_Y_21 (.Q (Y[21]), .QB (\$dummy [21]), .D (nx632), .CLK (clk), .R (
         nx847)) ;
    mux21 ix633 (.Y (nx632), .A0 (Y[21]), .A1 (nBitIn[21]), .S0 (WE)) ;
    dffr reg_Y_22 (.Q (Y[22]), .QB (\$dummy [22]), .D (nx642), .CLK (clk), .R (
         nx847)) ;
    mux21 ix643 (.Y (nx642), .A0 (Y[22]), .A1 (nBitIn[22]), .S0 (WE)) ;
    dffr reg_Y_23 (.Q (Y[23]), .QB (\$dummy [23]), .D (nx652), .CLK (clk), .R (
         nx847)) ;
    mux21 ix653 (.Y (nx652), .A0 (Y[23]), .A1 (nBitIn[23]), .S0 (WE)) ;
    dffr reg_Y_24 (.Q (Y[24]), .QB (\$dummy [24]), .D (nx662), .CLK (clk), .R (
         nx847)) ;
    mux21 ix663 (.Y (nx662), .A0 (Y[24]), .A1 (nBitIn[24]), .S0 (WE)) ;
    dffr reg_Y_25 (.Q (Y[25]), .QB (\$dummy [25]), .D (nx672), .CLK (clk), .R (
         nx847)) ;
    mux21 ix673 (.Y (nx672), .A0 (Y[25]), .A1 (nBitIn[25]), .S0 (WE)) ;
    dffr reg_Y_26 (.Q (Y[26]), .QB (\$dummy [26]), .D (nx682), .CLK (clk), .R (
         nx847)) ;
    mux21 ix683 (.Y (nx682), .A0 (Y[26]), .A1 (nBitIn[26]), .S0 (WE)) ;
    dffr reg_Y_27 (.Q (Y[27]), .QB (\$dummy [27]), .D (nx692), .CLK (clk), .R (
         nx847)) ;
    mux21 ix693 (.Y (nx692), .A0 (Y[27]), .A1 (nBitIn[27]), .S0 (WE)) ;
    dffr reg_Y_28 (.Q (Y[28]), .QB (\$dummy [28]), .D (nx702), .CLK (clk), .R (
         nx847)) ;
    mux21 ix703 (.Y (nx702), .A0 (Y[28]), .A1 (nBitIn[28]), .S0 (WE)) ;
    dffr reg_Y_29 (.Q (Y[29]), .QB (\$dummy [29]), .D (nx712), .CLK (clk), .R (
         nx847)) ;
    mux21 ix713 (.Y (nx712), .A0 (Y[29]), .A1 (nBitIn[29]), .S0 (WE)) ;
    dffr reg_Y_30 (.Q (Y[30]), .QB (\$dummy [30]), .D (nx722), .CLK (clk), .R (
         NOT_Reset)) ;
    mux21 ix723 (.Y (nx722), .A0 (Y[30]), .A1 (nBitIn[30]), .S0 (WE)) ;
    dffr reg_Y_31 (.Q (Y[31]), .QB (\$dummy [31]), .D (nx732), .CLK (clk), .R (
         NOT_Reset)) ;
    mux21 ix733 (.Y (nx732), .A0 (Y[31]), .A1 (nBitIn[31]), .S0 (WE)) ;
    inv01 ix844 (.Y (nx845), .A (Reset)) ;
    inv01 ix846 (.Y (nx847), .A (Reset)) ;
endmodule

