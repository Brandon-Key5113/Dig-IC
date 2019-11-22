* SPICE NETLIST
***************************************

.SUBCKT mimcap_g13 plus minus
.ENDS
***************************************
.SUBCKT spiral_inductor_lvs pos neg
.ENDS
***************************************
.SUBCKT inv Vdd GROUND Y A
** N=4 EP=4 IP=0 FDC=2
M0 Y A GROUND GROUND nmos L=1.3e-07 W=2.6e-07 $X=390 $Y=-92820 $D=19
M1 Y A Vdd Vdd pmos L=1.3e-07 W=5.2e-07 $X=390 $Y=-90870 $D=25
.ENDS
***************************************
