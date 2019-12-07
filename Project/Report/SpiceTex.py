
formaty1 = "\\lstinputlisting[caption={"
formaty2 = "}\\label{lst:"
formaty3 = "}]{\""
formaty4 = "\"}"


import os

files = []

fileEnding = ".cir"
folder = "Spice"

def rchop(thestring, ending):
  if thestring.lower().endswith(ending):
    return thestring[:-len(ending)]
  return thestring

for file in os.listdir("./" + folder):
    if file.lower().endswith(fileEnding):
        files += [file]


for filez in files:
    noEnd = rchop(filez, fileEnding)
    toDash = noEnd.replace(' ', '-').replace('_', '-')
    toUnd  = noEnd.replace(' ', '_').replace('-', '_')
    toSp   = noEnd.replace('_', ' ').replace('-', ' ')

    print (formaty1 + toSp + " SPICE " + formaty2 + toDash + "-spice" + formaty3 + folder + "/" + filez + formaty4 + "\n")