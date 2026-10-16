$VisiServisi = Get-Service
$Darbojas = 0
$Aptureeti = 0

foreach ($Serviss in $VisiServisi) {
    if ($Serviss.Status -eq "Running") {
        $Darbojas++
    }
    elseif ($Serviss.Status -eq "Stopped") {
        $Aptureeti++
    }
}

$Summa = $Darbojas + $Aptureeti

[PSCustomObject]@{
    "Darbojošos servisu skaits" = $Darbojas
    "Apturēto servisu skaits" = $Aptureeti
    "Abu summa" = $Summa
    "Kopējais saraksta garums" = $VisiServisi.Count
} | Format-List
