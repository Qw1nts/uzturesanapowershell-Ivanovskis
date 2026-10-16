$LaikaRobeza = (Get-Date).AddHours(-48)
$Kludas = Get-WinEvent -FilterHashtable @{LogName='System'; Level=2; StartTime=$LaikaRobeza} -ErrorAction SilentlyContinue

if ($null -eq $Kludas) {
    [PSCustomObject]@{
        "Kļūdu skaits pēdējajās 48h" = 0
        "Visbiežākais avots" = "Nav kļūdu"
        "Biežākā avota kļūdu skaits" = 0
    } | Format-List
} else {
    $BiezakaisAvots = $Kludas | Group-Object -Property ProviderName | Sort-Object -Property Count -Descending | Select-Object -First 1
    
    [PSCustomObject]@{
        "Kļūdu skaits pēdējajās 48h" = $Kludas.Count
        "Visbiežākais avots" = $BiezakaisAvots.Name
        "Biežākā avota kļūdu skaits" = $BiezakaisAvots.Count
    } | Format-List

}