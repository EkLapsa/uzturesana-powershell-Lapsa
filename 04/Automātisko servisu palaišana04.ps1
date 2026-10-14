$services = Gsv | Where {$_.Status -eq 'Stopped' -and $_.StartType -eq 'Automatic'}

if (-not $services) {
    'Atrastie servisi: 0'
} else {
    $services | Select Name, Status, StartType
}
