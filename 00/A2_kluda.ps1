# ----------------------------------------------------------------------
# A2. Sort-Object virziens
# ----------------------------------------------------------------------

# Jāizvada pieci procesi ar VISLIELĀKO atmiņas patēriņu. Izvadās pieci paši mazākie.
# Sameklē kļūdu un izlabo to.

Get-Process |
    Sort-Object WorkingSet -Descending |
    Select-Object -First 5 Name, WorkingSet
