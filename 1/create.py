fin = open("file.txt", "w")

out = ""
for i in range(120):
    out += str(i)
    fin.write(out + "\n")
