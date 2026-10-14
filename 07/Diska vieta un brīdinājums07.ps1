Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3" | ForEach-Object {
    $briviGB = [math]::Round($_.FreeSpace / 1GB, 2)
    "$($_.DeviceID): brīvi $briviGB GB, kopā $([math]::Round($_.Size / 1GB, 2)) GB"

    if ($briviGB -lt $robezaGB) {
        "brīvā vieta ir mazāka par $robezaGB GB"
    }
}
