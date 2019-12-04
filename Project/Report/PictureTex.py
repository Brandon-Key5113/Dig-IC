formaty = "\\begin{figure}[H] \n\
    \\centering \n\
    \\includegraphics[width=1\linewidth]{\""
formaty2= "\"}\n\
    \\caption{Functional Simulation of 1-bit ALU} \n\
    \\label{fig:alu1bit-functional-sim-} \n\
\\end{figure}\n"

#TODO Add Smart caption and label

import os

files = []

for file in os.listdir("./Pictures"):
    if file.endswith(".png"):
        files += [file]


for filez in files:
    print (formaty + filez + formaty2 + "\n")
print(files)
