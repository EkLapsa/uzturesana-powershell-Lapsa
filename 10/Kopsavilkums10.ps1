Write-Output "
Datora nosaukums: $((Get-ComputerInfo).CsName)
OS nosaukums: $((Get-ComputerInfo).OsName)
Būvējuma numurs: $((Get-ComputerInfo).WindowsBuildLabEx)
Powershell versija: $($PSVersionTable.PSVersion)
Datums: $(Get-Date)
Procesu skaits: $((Get-Process).count)
"

$darbojas = 0
$apturets = 0

foreach ($serviss in gsv) {
    if ($serviss.Status -eq 'Running') {
        $darbojas++
    }
    elseif ($serviss.Status -eq 'Stopped') {
        $apturets++
    }
}

$kopa = $darbojas + $apturets

write "
Darbojoši servisi: $darbojas
Apturēti servisi: $apturets
Servisu summa: $kopa
"



$startTime = (Get-Date).AddHours(-48)

$kluda = Get-WinEvent -FilterHashtable @{
    LogName   = 'System'
    Level     = 2
    StartTime = $startTime
}

$errorCount = @($kluda).Count

$avots = $kluda | Group -Property ProviderName | Sort -Property Count -Descending | Select -First 1

Write "Kļūdu ierakstu pēdējo 48 stundu laikā: $errorCount"
Write "Biežākais avots: $($avots.Name) — $($avots.Count) reizes"



Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3" | ForEach-Object {
    $briviGB = [math]::Round($_.FreeSpace / 1GB, 2)
    "$($_.DeviceID): brīvi $briviGB GB, kopā $([math]::Round($_.Size / 1GB, 2)) GB"

    if ($briviGB -lt $robezaGB) {
        "brīvā vieta ir mazāka par $robezaGB GB"
    }
}
