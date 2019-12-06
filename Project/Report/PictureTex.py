formaty1 = "\\begin{figure}[H] \n\
    \\centering \n\
    \\includegraphics[width=\\textwidth,height=\\dimexpr\\textheight-4\\baselineskip-\\abovecaptionskip-\\belowcaptionskip\\relax,keepaspectratio]{\""
formaty2 = "\"}\n\
    \\caption{"
formaty3 = "} \n\
    \\label{fig:"
formaty4 = "} \n\
\\end{figure}\n"

#TODO Add Smart caption and label

import os

files = []


def rchop(thestring, ending):
  if thestring.lower().endswith(ending):
    return thestring[:-len(ending)]
  return thestring

for file in sorted(os.listdir("./Pictures")):
    if file.lower().endswith(".png"):
        files += [file]


for filez in files:
    noEnd = rchop(filez, ".png")
    toDash = noEnd.replace(' ', '-').replace('_', '-')
    toUnd  = noEnd.replace(' ', '_').replace('-', '_')
    toSp   = noEnd.replace('_', ' ').replace('-', ' ')

    print (formaty1 + "Pictures/" + noEnd + formaty2 + toSp + formaty3 + toDash + formaty4 + "\n")
