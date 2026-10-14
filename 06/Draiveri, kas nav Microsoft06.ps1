$drivers = @(
    Get-CimInstance Win32_PnPSignedDriver |
        Where {
            $_.DriverProviderName -notlike 'Microsoft*'
        } |
        Select DeviceName | select -skip 1
)

$drivers | Export-Csv -Path '.\draiveri.csv' -NoTypeInformation -Encoding UTF8

$drivers.Count -1
