# Atrodam draiverus, kuru ražotāja nosaukumā NAV vārda "Microsoft"
$Draiveri = Get-CimInstance -ClassName Win32_PnPSignedDriver | Where-Object {$_.Manufacturer -notmatch "Microsoft"}

# Eksportējam datus uz CSV failu
$Draiveri | Export-Csv -Path "draiveri.csv" -NoTypeInformation -Encoding utf8

# Saskaitām rindas CSV failā un izvadām rezultātu
$CSVLinijas = (Get-Content -Path "draiveri.csv").Count
Write-Output "CSV failā esošo rindu skaits: $CSVLinijas"