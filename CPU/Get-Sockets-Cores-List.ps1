# Check number of virtual processors and cores of a list of servers and write the result to a file
$Computers = Get-Content -Path C:\Temp\ServerList.txt
foreach ($Computer in $Computers) {
    $Resultado = Get-WmiObject Win32_ComputerSystem -ComputerName $Computer| Select NumberOfProcessors,NumberOfLogicalProcessors
    $computer, $Resultado | Out-File -FilePath C:\Temp\SocketStatus.csv -Append
}