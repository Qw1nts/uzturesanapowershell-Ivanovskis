$Laiks1 = Measure-Command -Expression {
    Get-Service -Name "Spooler"
}

$Laiks2 = Measure-Command -Expression {
    Get-CimInstance -ClassName Win32_Service -Filter "Name='Spooler'"
}

[PSCustomObject]@{
    "Get-Service laiks (ms)" = $Laiks1.TotalMilliseconds
    "Get-CimInstance laiks (ms)" = $Laiks2.TotalMilliseconds
} | Format-List