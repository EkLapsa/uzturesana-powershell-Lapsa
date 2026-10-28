# ----------------------------------------------------------------------
# D1. Vārdnīca bez else
# ----------------------------------------------------------------------

# Jāsaskaita, cik rindu ir katram paziņoijuma līmenim no .log faila. Programma avarē ar KeyError.
# Sameklē kļūdu un izlabo to.

skaits = {}

with open("sistema.log", encoding="utf-8") as f:
    for rinda in f:
        limenis = rinda.split()[2]
        skaits[limenis] = skaits.get(limenis, 0) + 1

print(skaits)