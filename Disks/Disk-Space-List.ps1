 # Get computer name and disk space in a list of remote computers and export to CSV
 $Computers = Get-Content -Path C:\Temp\Computers.txt
 $Computers | ForEach-Object {
     $Computer = $_
     Get-WmiObject Win32_LogicalDisk -ComputerName $Computer -Filter DriveType=3 | Select-Object @{n='ServerName';e={$_.SystemName}}, DeviceID, @{'Name'='Size (GB)'; 'Expression'={[math]::truncate($_.size / 1GB)}}, @{'Name'='Freespace (GB)'; 'Expression'={[math]::truncate($_.freespace / 1GB)}}
 }