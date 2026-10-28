# ----------------------------------------------------------------------
# E2. CSV atskaite
# ----------------------------------------------------------------------

# Saglabā līmeņu kopsavilkumu CSV failā, ko var atvērt Excel ar latviešu burtiem.
# Aizpildi vietu, kur stāv TODO.

import csv

skaits = {"INFO": 747, "WARNING": 284, "ERROR": 146, "CRITICAL": 23}

with open("atskaite.csv", "w", newline="",
    encoding="utf-8-sig") as f:
    r = csv.writer(f, delimiter=";")
    r.writerow(["Līmenis", "Skaits"])
    for limenis, skaitts in skaits.items():
        r.writerow([limenis, skaitts])
