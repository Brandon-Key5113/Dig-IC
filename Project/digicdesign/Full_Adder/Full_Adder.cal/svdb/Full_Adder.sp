* SPICE NETLIST
***************************************

.SUBCKT mimcap_g13 plus minus
.ENDS
***************************************
.SUBCKT spiral_inductor_lvs pos neg
.ENDS
***************************************
.SUBCKT xnor2 VDD VSS Y A0 A1
** N=9 EP=5 IP=0 FDC=10
M0 7 A0 6 VSS nmos L=1.4e-07 W=7.7e-07 $X=805 $Y=1610 $D=19
M1 VSS A1 7 VSS nmos L=1.4e-07 W=7.7e-07 $X=1225 $Y=1610 $D=19
M2 Y A1 8 VSS nmos L=1.4e-07 W=7.7e-07 $X=2345 $Y=1610 $D=19
M3 8 A0 Y VSS nmos L=1.4e-07 W=7.7e-07 $X=2905 $Y=1610 $D=19
M4 VSS 6 8 VSS nmos L=1.4e-07 W=7.7e-07 $X=3465 $Y=1610 $D=19
M5 6 A0 VDD VDD pmos L=1.4e-07 W=1.19e-06 $X=1175 $Y=4585 $D=25
M6 VDD A1 6 VDD pmos L=1.4e-07 W=1.19e-06 $X=1735 $Y=4585 $D=25
M7 9 A0 VDD VDD pmos L=1.4e-07 W=2.24e-06 $X=2365 $Y=4620 $D=25
M8 Y A1 9 VDD pmos L=1.4e-07 W=2.24e-06 $X=2855 $Y=4585 $D=25
M9 VDD 6 Y VDD pmos L=1.4e-07 W=1.19e-06 $X=3450 $Y=4620 $D=25
.ENDS
***************************************
.SUBCKT Full_Adder VSS VDD Cout B Cin A Sum
** N=13 EP=7 IP=10 FDC=32
M0 2 B VSS VSS nmos L=1.4e-07 W=7.7e-07 $X=5865 $Y=1220 $D=19
M1 3 A 2 VSS nmos L=1.4e-07 W=7.7e-07 $X=6285 $Y=1220 $D=19
M2 4 Cin 3 VSS nmos L=1.4e-07 W=7.7e-07 $X=6845 $Y=1220 $D=19
M3 VSS 7 4 VSS nmos L=1.4e-07 W=7.7e-07 $X=7265 $Y=1220 $D=19
M4 Cout 3 VSS VSS nmos L=1.4e-07 W=3.5e-07 $X=7860 $Y=1640 $D=19
M5 VSS Sum 7 VSS nmos L=1.4e-07 W=3.5e-07 $X=9750 $Y=1850 $D=19
M6 8 B VDD VDD pmos L=1.4e-07 W=1.19e-06 $X=5725 $Y=6050 $D=25
M7 3 Cin 8 VDD pmos L=1.4e-07 W=1.19e-06 $X=6285 $Y=6050 $D=25
M8 8 7 3 VDD pmos L=1.4e-07 W=1.19e-06 $X=6845 $Y=6050 $D=25
M9 VDD A 8 VDD pmos L=1.4e-07 W=1.19e-06 $X=7405 $Y=6050 $D=25
M10 Cout 3 VDD VDD pmos L=1.4e-07 W=7.7e-07 $X=8000 $Y=6050 $D=25
M11 VDD Sum 7 VDD pmos L=1.4e-07 W=7.7e-07 $X=9750 $Y=5630 $D=25
X12 VDD VSS 12 A B xnor2 $T=20 30 0 0 $X=20 $Y=30
X13 VDD VSS Sum Cin 12 xnor2 $T=15700 30 1 180 $X=10800 $Y=30
.ENDS
***************************************
