# ----------------------------------------------------------------------
# E1. Kļūdas pa servisiem
# ----------------------------------------------------------------------

# Saskaiti, cik ERROR rindu ir katram servisam, un izvadi tos no biežākā uz retāko.
# Aizpildi vietu, kur stāv TODO.

skaits = {}

with open("sistema.log", encoding="utf-8") as f:
    for rinda in f:
        dalas = rinda.split()
        if dalas[2] == "ERROR":
            serviss = dalas[3].rstrip(":")
            skaits[serviss] = skaits.get(serviss, 0) + 1

for serviss in sorted(skaits, key=skaits.get, reverse=True):
    print(serviss, skaits[serviss])
