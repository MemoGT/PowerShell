# Uptime in a remote computer
Get-CimInstance -ClassName Win32_OperatingSystem -ComputerName DCCAN100JMP91 | Select-Object LastBootUpTime

# Days a server has been up in a remote computer
Get-CimInstance -ClassName Win32_OperatingSystem -ComputerName USCMH100APP02 | Select-Object @{Name='Days';Expression={[math]::truncate((New-TimeSpan -Start (Get-Date) -End $_.LastBootUpTime).TotalDays)}}