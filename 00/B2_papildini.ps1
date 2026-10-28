# ----------------------------------------------------------------------
# B2. Rezultāts failā
# ----------------------------------------------------------------------

# Saglabā desmit lielākos procesus CSV failā, ko var atvērt Excel.
# Aizpildi vietu, kur stāv TODO.

Get-Process |
    Sort-Object WorkingSet -Descending |
    Select-Object -First 10 Name, WorkingSet |

Export-Csv -Path .\ws.csv -NoTypeInformation