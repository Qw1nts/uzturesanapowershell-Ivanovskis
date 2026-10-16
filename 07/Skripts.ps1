$BrīdinājumaRobežaGB = 20

Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DriveType=3" | ForEach-Object {
    $DiskaBurts = $_.DeviceID
    $KopējaisIzmursGB = [System.Math]::Round(($_.Size / 1GB), 2)
    $BrīvāVietaGB = [System.Math]::Round(($_.FreeSpace / 1GB), 2)
    
    [PSCustomObject]@{
        "Disks" = $DiskaBurts
        "Kopējais izmērs (GB)" = $KopējaisIzmursGB
        "Brīvā vieta (GB)" = $BrīvāVietaGB
    }

    if ($BrīvāVietaGB -lt $BrīdinājumaRobežaGB) {
        Write-Warning "BRĪDINĀJUMS: Diskam $DiskaBurts ir mazāk par $BrīdinājumaRobežaGB GB brīvās vietas!"
    }
}