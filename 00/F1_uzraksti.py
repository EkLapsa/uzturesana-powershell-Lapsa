# ----------------------------------------------------------------------
# F1. Rīks ar argumentu
# ----------------------------------------------------------------------

# Uzraksti skriptu, kuram meklējamo kļūdas līmeni padod kā argumentu komandrindā.
# Skripts izvada, cik tāda līmeņa rindu žurnālā ir un parāda pirmās trīs no tām.
# Ja arguments nav padots, skripts izvada pamācību un neavarē.

import sys

if len(sys.argv) < 2:
    sys.exit("python F1_uzraksti.py <līmenis>")

limenis = sys.argv[1]
rindas_limenis = []

for rinda in open("sistema.log", encoding="utf-8"):
    if limenis in rinda:
        rindas_limenis.append(rinda)

print("Skaits:", len(rindas_limenis))
for rinda in rindas_limenis[:3]:
    print(rinda)