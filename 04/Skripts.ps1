$Servisi = Get-Service | Where-Object {$_.StartType -eq "Automatic" -and $_.Status -eq "Stopped"}

if ($null -eq $Servisi) {
    Write-Output "Atrasto servisu skaits: 0"
} else {
    $Servisi | Start-Service 
}