#import string.strip
V_HIGH = "1.08"
V_LOW  = "0"

hexSize = 16
busWidth = 16

A_Pattern_Hex = ["0000", "FFFF", "FFFF", "0001", "0000", "ABCD"]
B_Pattern_Hex = ["0000", "FFFF", "0001", "FFFF", "0001", "89EF"]

A_Pattern_Bin = ["0000", "FFFF", "FFFF", "0001", "0000", "ABCD"]
B_Pattern_Bin = ["0000", "FFFF", "0001", "FFFF", "0001", "89EF"]

V0 = "0"
V1 = "1.08"
TD = "0"
TD01 = "0"
TR01 = "0.01n"
TD10 = "0"
TF10 = "0.01n"
BITTIME = "80n"
R = "R" # Make null string for no repeat 

# convert the hex to binary, still in string form...
for i in range(len(A_Pattern_Hex)) :
	A_Pattern_Bin[i] = bin(int(A_Pattern_Hex[i], hexSize))[2:].zfill(busWidth)
	B_Pattern_Bin[i] = bin(int(B_Pattern_Hex[i], hexSize))[2:].zfill(busWidth)
	print(A_Pattern_Bin[i])

#Go Through Each Bit of a and grab the bit pattern
for i in range(busWidth) :
	A_STR = "VFORCE__A["+str(i) + "] A["+str(i) + "] 0 PBIT "+V0+" "+V1+" "+TD+" "+TD01+" "+TR01+" "+TD10+" "+TF10+" "+BITTIME+" "
	for s in A_Pattern_Bin :
		A_STR = A_STR + s[i]
	## Remove trailing comma and sapce
	#A_STR = A_STR.strip(", ")
	A_STR = A_STR + " " + R
	print(A_STR) 


for i in range(busWidth) :
	B_STR = "VFORCE__B["+str(i) + "] B["+str(i) + "] 0 PBIT "+V0+" "+V1+" "+TD+" "+TD01+" "+TR01+" "+TD10+" "+TF10+" "+BITTIME+" "
	for s in B_Pattern_Bin :
		B_STR = B_STR + s[i]
	## Remove trailing comma and sapce
	#B_STR = B_STR.strip(", ")
	B_STR = B_STR + " " + R
	print(B_STR) 


Signals = "CB NBITOUT[15] NBITOUT[14] NBITOUT[13] NBITOUT[12] NBITOUT[11] NBITOUT[10] NBITOUT[9] NBITOUT[8] NBITOUT[7] NBITOUT[6] NBITOUT[5] NBITOUT[4] NBITOUT[3] NBITOUT[2] NBITOUT[1] NBITOUT[0] A[15] A[14] A[13] A[12] A[11] A[10] A[9] A[8] A[7] A[6] A[5] A[4] A[3] A[2] A[1] A[0] B[15] B[14] B[13] B[12] B[11] B[10] B[9] B[8] B[7] B[6] B[5] B[4] B[3] B[2] B[1] B[0] CONTROL[1] CONTROL[0]"

Signal_List = Signals.split()
for s in Signal_List :
	p = ".PLOT TRAN V(" + s + ")"
	print(p)

