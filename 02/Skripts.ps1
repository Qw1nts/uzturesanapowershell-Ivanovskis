Get-Process | Sort-Object -Property WorkingSet | Select-Object -Last 10 | ForEach-Object {
    [PSCustomObject]@{
        "Procesa nosaukums" = $_.Name
        "Id" = $_.Id
        "Atmiņa (MB)" = [System.Math]::Round(($_.WorkingSet / 1MB), 1)
    }
} | Format-Table -AutoSize
