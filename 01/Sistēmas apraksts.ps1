Write-Output "
Datora nosaukums: $((Get-ComputerInfo).CsName)
OS nosaukums: $((Get-ComputerInfo).OsName)
Būvējuma numurs: $((Get-ComputerInfo).WindowsBuildLabEx)
Powershell versija: $($PSVersionTable.PSVersion)
Datums: $(Get-Date)
Procesu skaits: $((Get-Process).count)
"
