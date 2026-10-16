$Dators = Get-CimInstance -ClassName Win32_ComputerSystem
$OS = Get-CimInstance -ClassName Win32_OperatingSystem
$PSVersija = $PSVersionTable.PSVersion
$DatumsLaiks = Get-Date
$Procesi = Get-Process

[PSCustomObject]@{
    "Datora nosaukums" = $Dators.Name
    "Operētājsistēma" = $OS.Caption
    "Būvējuma numurs" = $OS.BuildNumber
    "PowerShell versija" = $PSVersija
    "Pašreizējais datums un laiks" = $DatumsLaiks
    "Aktīvo procesu skaits" = $Procesi.Count
} | Format-List
