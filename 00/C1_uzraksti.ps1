# ----------------------------------------------------------------------
# C1. Atskaite par procesoru
# ----------------------------------------------------------------------

# Uzraksti PowerShell skriptu, kas izvada desmit procesus ar lielāko procesora patēriņu (CPU) un saglabā tos CSV failā. Katrai rindai jābūt procesa nosaukumam, CPU un atmiņai.

gps | sort cpu -descending | select -first 10 name, CPU, WS |

export-csv -path .\cpu.csv -NoTypeInformation