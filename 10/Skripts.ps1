# 1. uzdevuma dati: Aktīvo procesu skaits
$ProcesuSkaits = (Get-Process).Count

# 3. uzdevuma dati: Servisu skaitīšana ar foreach ciklu
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

# 5. uzdevuma dati: Kļūdu skaits pēdējajās 48 stundās
$LaikaRobeza = (Get-Date).AddHours(-48)
$Kludas = Get-WinEvent -FilterHashtable @{LogName='System'; Level=2; StartTime=$LaikaRobeza} -ErrorAction SilentlyContinue
$KludasSkaits = if ($null -eq $Kludas) { 0 } else { $Kludas.Count }

# 7. uzdevuma dati: Diska brīvā vieta gigabaitos
$DiskuDati = Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DriveType=3" | ForEach-Object {
    "$($_.DeviceID) - Brīva vieta: " + [System.Math]::Round(($_.FreeSpace / 1GB), 2) + " GB"
}

# Apvienotais kopsavilkums
[PSCustomObject]@{
    "Aktīvo procesu skaits (1. uzd.)" = $ProcesuSkaits
    "Strādājošie servisi (3. uzd.)" = $Darbojas
    "Apturētie servisi (3. uzd.)" = $Aptureeti
    "Kļūdu skaits 48h (5. uzd.)" = $KludasSkaits
    "Disku dati (7. uzd.)" = ($DiskuDati -join "; ")
} | Format-List