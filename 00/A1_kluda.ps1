# ----------------------------------------------------------------------
# A1. Where-Object
# ----------------------------------------------------------------------

# Jāizvada procesi, kas lieto vairāk par 100 MB atmiņas. Skripts nekā neizvada.
# Sameklē kļūdu un izlabo to.

Get-Process | Where WS -gt 100MB
