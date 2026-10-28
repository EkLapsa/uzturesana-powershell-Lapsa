# ----------------------------------------------------------------------
# D2. Lielie un mazie burti
# ----------------------------------------------------------------------

# Jāsaskaita rindas, kurās ir ERROR. Izvadās nulle, lai gan žurnālā kļūdu ir daudz.
# Sameklē kļūdu un izlabo to.

skaits = 0

with open("sistema.log", encoding="utf-8") as f:
    for rinda in f:
        if "ERROR" in rinda:
            skaits = skaits + 1

print("ERROR rindas:", skaits)
