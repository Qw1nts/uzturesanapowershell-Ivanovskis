Get-Process | ForEach-Object {
    try {
        [PSCustomObject]@{
            "Process" = $_.Name
            "Lietotājs" = $_.GetOwner().User
        }
    } catch {
        [PSCustomObject]@{
            "Process" = $_.Name
            "Lietotājs" = "Nav tiesību (Sistēmas process)"
        }
    }
} | Format-Table -AutoSize
