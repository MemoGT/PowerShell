get-help Get-Service -Online 
Get-Help get-service -Examples
Get-Service | Sort-Object Status
Get-Service | Where-Object {$_.Status -eq "Running"}
Get-Service | Where-Object {$_.Status -eq "stopped"}
Get-Service | Where-Object {$_.Name -eq "VirtualAudioFs"}