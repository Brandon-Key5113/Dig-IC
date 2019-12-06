############################################################
## EZwave - Saved Window File
## Saturday, November 9, 2019 at 7:39:34 PM EST
##
## Note: This is an auto-generated file.
##
## In case of modification, Do not remove this comment
############################################################

onerror {resume}

# ===== Open required Database =====
dataset open /home/bxk5113/Pyxis_SPT_HEP/ic_projects/Pyxis_SPT/digicdesign/ALU_16Bit/layout_test.wdb layout_test

# ====== Create the expressions =====
wfc {Dig_V_CONTROL_0_=atod(wf("{layout_test/CONTROL[0]}", " -show TRAN.V "),1.08)}
wfc {Dig_V_CONTROL_1_=atod(wf("{layout_test/CONTROL[1]}", " -show TRAN.V "),1.08)}
wave createbus V(CONTROL[0:1] -show calc.V -separator / -signals calc/Dig_V_CONTROL_0_ -show calc.V -separator / -signals calc/Dig_V_CONTROL_1_
wfc {Dig_V_A_0_=atod(wf("{layout_test/A[0]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_A_1_=atod(wf("{layout_test/A[1]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_A_2_=atod(wf("{layout_test/A[2]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_A_3_=atod(wf("{layout_test/A[3]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_A_4_=atod(wf("{layout_test/A[4]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_A_5_=atod(wf("{layout_test/A[5]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_A_6_=atod(wf("{layout_test/A[6]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_A_7_=atod(wf("{layout_test/A[7]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_A_8_=atod(wf("{layout_test/A[8]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_A_9_=atod(wf("{layout_test/A[9]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_A_10_=atod(wf("{layout_test/A[10]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_A_11_=atod(wf("{layout_test/A[11]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_A_12_=atod(wf("{layout_test/A[12]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_A_13_=atod(wf("{layout_test/A[13]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_A_14_=atod(wf("{layout_test/A[14]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_A_15_=atod(wf("{layout_test/A[15]}", " -show TRAN.V "),0.54)}
wave createbus V(A[0:15] -show calc.V -separator / -signals calc/Dig_V_A_0_ -show calc.V -separator / -signals calc/Dig_V_A_1_ -show calc.V -separator / -signals calc/Dig_V_A_2_ -show calc.V -separator / -signals calc/Dig_V_A_3_ -show calc.V -separator / -signals calc/Dig_V_A_4_ -show calc.V -separator / -signals calc/Dig_V_A_5_ -show calc.V -separator / -signals calc/Dig_V_A_6_ -show calc.V -separator / -signals calc/Dig_V_A_7_ -show calc.V -separator / -signals calc/Dig_V_A_8_ -show calc.V -separator / -signals calc/Dig_V_A_9_ -show calc.V -separator / -signals calc/Dig_V_A_10_ -show calc.V -separator / -signals calc/Dig_V_A_11_ -show calc.V -separator / -signals calc/Dig_V_A_12_ -show calc.V -separator / -signals calc/Dig_V_A_13_ -show calc.V -separator / -signals calc/Dig_V_A_14_ -show calc.V -separator / -signals calc/Dig_V_A_15_
wfc {Dig_V_B_0_=atod(wf("{layout_test/B[0]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_B_1_=atod(wf("{layout_test/B[1]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_B_2_=atod(wf("{layout_test/B[2]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_B_3_=atod(wf("{layout_test/B[3]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_B_4_=atod(wf("{layout_test/B[4]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_B_5_=atod(wf("{layout_test/B[5]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_B_6_=atod(wf("{layout_test/B[6]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_B_7_=atod(wf("{layout_test/B[7]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_B_8_=atod(wf("{layout_test/B[8]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_B_9_=atod(wf("{layout_test/B[9]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_B_10_=atod(wf("{layout_test/B[10]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_B_11_=atod(wf("{layout_test/B[11]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_B_12_=atod(wf("{layout_test/B[12]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_B_13_=atod(wf("{layout_test/B[13]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_B_14_=atod(wf("{layout_test/B[14]}", " -show TRAN.V "),0.54)}
wfc {Dig_V_B_15_=atod(wf("{layout_test/B[15]}", " -show TRAN.V "),0.54)}
wave createbus V(B[0:15] -show calc.V -separator / -signals calc/Dig_V_B_0_ -show calc.V -separator / -signals calc/Dig_V_B_1_ -show calc.V -separator / -signals calc/Dig_V_B_2_ -show calc.V -separator / -signals calc/Dig_V_B_3_ -show calc.V -separator / -signals calc/Dig_V_B_4_ -show calc.V -separator / -signals calc/Dig_V_B_5_ -show calc.V -separator / -signals calc/Dig_V_B_6_ -show calc.V -separator / -signals calc/Dig_V_B_7_ -show calc.V -separator / -signals calc/Dig_V_B_8_ -show calc.V -separator / -signals calc/Dig_V_B_9_ -show calc.V -separator / -signals calc/Dig_V_B_10_ -show calc.V -separator / -signals calc/Dig_V_B_11_ -show calc.V -separator / -signals calc/Dig_V_B_12_ -show calc.V -separator / -signals calc/Dig_V_B_13_ -show calc.V -separator / -signals calc/Dig_V_B_14_ -show calc.V -separator / -signals calc/Dig_V_B_15_
wfc {Dig_V_NBITOUT_0_=atod(wf("{layout_test/NBITOUT[0]}", " -show TRAN.V "),0.5423343716115039)}
wfc {Dig_V_NBITOUT_1_=atod(wf("{layout_test/NBITOUT[1]}", " -show TRAN.V "),0.5423343716115039)}
wfc {Dig_V_NBITOUT_2_=atod(wf("{layout_test/NBITOUT[2]}", " -show TRAN.V "),0.5423343716115039)}
wfc {Dig_V_NBITOUT_3_=atod(wf("{layout_test/NBITOUT[3]}", " -show TRAN.V "),0.5423343716115039)}
wfc {Dig_V_NBITOUT_4_=atod(wf("{layout_test/NBITOUT[4]}", " -show TRAN.V "),0.5423343716115039)}
wfc {Dig_V_NBITOUT_5_=atod(wf("{layout_test/NBITOUT[5]}", " -show TRAN.V "),0.5423343716115039)}
wfc {Dig_V_NBITOUT_6_=atod(wf("{layout_test/NBITOUT[6]}", " -show TRAN.V "),0.5423343716115039)}
wfc {Dig_V_NBITOUT_7_=atod(wf("{layout_test/NBITOUT[7]}", " -show TRAN.V "),0.5423343716115039)}
wfc {Dig_V_NBITOUT_8_=atod(wf("{layout_test/NBITOUT[8]}", " -show TRAN.V "),0.5423343716115039)}
wfc {Dig_V_NBITOUT_9_=atod(wf("{layout_test/NBITOUT[9]}", " -show TRAN.V "),0.5423343716115039)}
wfc {Dig_V_NBITOUT_10_=atod(wf("{layout_test/NBITOUT[10]}", " -show TRAN.V "),0.5423343716115039)}
wfc {Dig_V_NBITOUT_11_=atod(wf("{layout_test/NBITOUT[11]}", " -show TRAN.V "),0.5423343716115039)}
wfc {Dig_V_NBITOUT_12_=atod(wf("{layout_test/NBITOUT[12]}", " -show TRAN.V "),0.5423343716115039)}
wfc {Dig_V_NBITOUT_13_=atod(wf("{layout_test/NBITOUT[13]}", " -show TRAN.V "),0.5423343716115039)}
wfc {Dig_V_NBITOUT_14_=atod(wf("{layout_test/NBITOUT[14]}", " -show TRAN.V "),0.5423343716115039)}
wfc {Dig_V_NBITOUT_15_=atod(wf("{layout_test/NBITOUT[15]}", " -show TRAN.V "),0.5423343716115039)}
wave createbus V(NBITOUT[0:15] -show calc.V -separator / -signals calc/Dig_V_NBITOUT_0_ -show calc.V -separator / -signals calc/Dig_V_NBITOUT_1_ -show calc.V -separator / -signals calc/Dig_V_NBITOUT_2_ -show calc.V -separator / -signals calc/Dig_V_NBITOUT_3_ -show calc.V -separator / -signals calc/Dig_V_NBITOUT_4_ -show calc.V -separator / -signals calc/Dig_V_NBITOUT_5_ -show calc.V -separator / -signals calc/Dig_V_NBITOUT_6_ -show calc.V -separator / -signals calc/Dig_V_NBITOUT_7_ -show calc.V -separator / -signals calc/Dig_V_NBITOUT_8_ -show calc.V -separator / -signals calc/Dig_V_NBITOUT_9_ -show calc.V -separator / -signals calc/Dig_V_NBITOUT_10_ -show calc.V -separator / -signals calc/Dig_V_NBITOUT_11_ -show calc.V -separator / -signals calc/Dig_V_NBITOUT_12_ -show calc.V -separator / -signals calc/Dig_V_NBITOUT_13_ -show calc.V -separator / -signals calc/Dig_V_NBITOUT_14_ -show calc.V -separator / -signals calc/Dig_V_NBITOUT_15_


# ===== Open the window =====
wave addwindow -x 0  -y 0 -width 1422  -height 756 -divider 0.91

# ===== Create row #1 =====
add wave  -show none.v -binary  -signals  {V(CONTROL[0:1]}

# ===== Create row #2 =====
add wave  -show none.v -hex  -signals  {V(A[0:15]}

# ===== Create row #3 =====
add wave  -show none.v -hex  -signals  {V(B[0:15]}

# ===== Create row #4 =====
add wave  -show none.v -hex  -signals  {V(NBITOUT[0:15]}

# ===== Create row #5 =====
add wave  -show TRAN.v -color -256 -terminals  {NBITOUT[0]}


# ===== Create row #6 =====
add wave  -show TRAN.v -color -16744193 -terminals  {NBITOUT[15]}


# ===== Create row #7 =====
add wave  -show TRAN.v -color -16711936 -terminals  CB


# ====== Create the cursors, markers and measurements =====
measure rise -lower 0.1 -upper 0.9 -relative -wf {<TRAN>V(NBITOUT[0])}
measure rise -lower 0.1 -upper 0.9 -relative -wf {<TRAN>V(NBITOUT[15])}
measure rise -lower 0.1 -upper 0.9 -relative -wf <TRAN>V(CB)
measure fall -lower 0.1 -upper 0.9 -relative -wf {<TRAN>V(NBITOUT[0])}
measure rise -x1 1.201E-7 -x2 2.001E-7 -lower 0.1 -upper 0.9 -relative -wf {<TRAN>V(NBITOUT[15])}
measure rise -x1 1.201E-7 -x2 2.001E-7 -lower 0.1 -upper 0.9 -relative -wf <TRAN>V(CB)
measure rise -x1 1.201E-7 -x2 2.001E-7 -lower 0.1 -upper 0.9 -relative -wf {<TRAN>V(NBITOUT[0])}
measure fall -x1 1.201E-7 -x2 2.001E-7 -lower 0.1 -upper 0.9 -relative -wf {<TRAN>V(NBITOUT[15])}
measure fall -x1 1.201E-7 -x2 2.001E-7 -lower 0.1 -upper 0.9 -relative -wf <TRAN>V(CB)
measure fall -x1 1.201E-7 -x2 2.001E-7 -lower 0.1 -upper 0.9 -relative -wf {<TRAN>V(NBITOUT[0])}
measure fall -x1 1.921070836400416E-7 -x2 2.6010000000000006E-7 -lower 0.1 -upper 0.9 -relative -wf {<TRAN>V(NBITOUT[15])}
measure fall -x1 1.921070836400416E-7 -x2 2.6010000000000006E-7 -lower 0.1 -upper 0.9 -relative -wf <TRAN>V(CB)
measure fall -x1 1.921070836400416E-7 -x2 2.6010000000000006E-7 -lower 0.1 -upper 0.9 -relative -wf {<TRAN>V(NBITOUT[0])}
measure fall -x1 1.921070836400416E-7 -x2 2.6010000000000006E-7 -lower 0.1 -upper 0.9 -relative -wf {<TRAN>V(NBITOUT[15])}
measure fall -x1 1.921070836400416E-7 -x2 2.6010000000000006E-7 -lower 0.1 -upper 0.9 -relative -wf <TRAN>V(CB)
measure fall -x1 1.921070836400416E-7 -x2 2.6010000000000006E-7 -lower 0.1 -upper 0.9 -relative -wf {<TRAN>V(NBITOUT[0])}
measure fall -x1 1.921070836400416E-7 -x2 2.6010000000000006E-7 -lower 0.1 -upper 0.9 -relative -wf {<TRAN>V(NBITOUT[15])}
measure fall -x1 1.921070836400416E-7 -x2 2.6010000000000006E-7 -lower 0.1 -upper 0.9 -relative -wf <TRAN>V(CB)
measure fall -x1 1.921070836400416E-7 -x2 2.6010000000000006E-7 -lower 0.1 -upper 0.9 -relative -wf {<TRAN>V(NBITOUT[0])}
measure rise -x1 2.1315971521898897E-7 -x2 2.6010000000000006E-7 -lower 0.1 -upper 0.9 -relative -wf {<TRAN>V(NBITOUT[15])}
measure rise -x1 2.5131760995583106E-7 -x2 3.687518204821469E-7 -lower 0.1 -upper 0.9 -relative -wf {<TRAN>V(NBITOUT[15])}
measure rise -x1 2.5131760995583106E-7 -x2 3.687518204821469E-7 -lower 0.1 -upper 0.9 -relative -wf <TRAN>V(CB)
measure rise -x1 2.5131760995583106E-7 -x2 3.687518204821469E-7 -lower 0.1 -upper 0.9 -relative -wf {<TRAN>V(NBITOUT[0])}
measure fall -x1 2.5131760995583106E-7 -x2 3.687518204821469E-7 -lower 0.1 -upper 0.9 -relative -wf {<TRAN>V(NBITOUT[15])}
measure fall -x1 2.5131760995583106E-7 -x2 3.687518204821469E-7 -lower 0.1 -upper 0.9 -relative -wf {<TRAN>V(NBITOUT[0])}
measure fall -lower 0.1 -upper 0.9 -relative -wf {<TRAN>V(NBITOUT[15])}
measure fall -lower 0.1 -upper 0.9 -relative -wf <TRAN>V(CB)
