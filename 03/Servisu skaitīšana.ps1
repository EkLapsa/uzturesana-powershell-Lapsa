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
