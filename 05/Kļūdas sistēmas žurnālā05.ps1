$startTime = (Get-Date).AddHours(-48)

$kluda = Get-WinEvent -FilterHashtable @{
    LogName   = 'System'
    Level     = 2
    StartTime = $startTime
}

$errorCount = @($kluda).Count

Write "Kļūdu ierakstu pēdējo 48 stundu laikā: $errorCount"

$avots = $kluda | Group -Property ProviderName | Sort -Property Count -Descending | Select -First 1

Write "Biežākais avots: $($avots.Name) — $($avots.Count) reizes"
