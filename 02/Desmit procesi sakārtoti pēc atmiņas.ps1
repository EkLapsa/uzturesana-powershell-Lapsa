gps | Sort WS -Descending | Select -First 10 | Sort WS | Select Name, Id, @{Name = 'Atmiņa (MB)'; Expression = { '{0:N1}' -f ($_.WS / 1MB) }}
