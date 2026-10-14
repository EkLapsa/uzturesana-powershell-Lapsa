$t1 = Measure-Command { Get-Service Spooler }
$t2 = Measure-Command { Get-CimInstance Win32_Service -Filter "Name='Spooler'" }

"Get-Service:  $($t1.TotalMilliseconds) ms"
"Get-CimInstance:  $($t2.TotalMilliseconds) ms"
