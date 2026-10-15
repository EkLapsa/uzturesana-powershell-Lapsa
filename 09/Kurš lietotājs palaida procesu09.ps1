Get-CimInstance Win32_Process | ForEach-Object {
    $owner = Invoke-CimMethod -InputObject $_ -MethodName GetOwner
    "$($_.Name) Lietotājs: $($owner.Domain)\$($owner.User)"
}
