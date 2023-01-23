# Get date and time, CPU average usage, we can add this script as a shedule task to run every 1 hour.
#Invoke-Command -ComputerName dccan100cfg10.corp.pbwan.net -Command {Get-Date -Format "yyyy-MM-dd HH:mm:ss"} | Out-File -FilePath C:\Temp\cpu.txt -Append
#Get-Counter -ComputerName dccan100cfg10.corp.pbwan.net -Counter "\Processor(_Total)\% Processor Time" -SampleInterval 60 -MaxSamples 1 | Select-Object CounterSamples | Select-Object -ExpandProperty CounterSamples | Select-Object -ExpandProperty CookedValue | Measure-Object -Average | Out-File -FilePath C:\Temp\cpu.txt -Append
#Get-WmiObject Win32_PerfFormattedData_PerfProc_Process -ComputerName dccan100cfg10.corp.pbwan.net | Sort-Object PercentProcessorTime -Descending | Select-Object Name, PercentProcessorTime | Out-File -FilePath C:\Temp\cpu.txt -Append

Invoke-Command -Command {Get-Date -Format "yyyy-MM-dd HH:mm:ss"} | Out-File -FilePath C:\Temp\cpu.txt -Append
Get-Counter -Counter "\Processor(_Total)\% Processor Time" -SampleInterval 60 -MaxSamples 1 | Select-Object CounterSamples | Select-Object -ExpandProperty CounterSamples | Select-Object -ExpandProperty CookedValue | Measure-Object -Average | Out-File -FilePath C:\Temp\cpu.txt -Append
Get-WmiObject Win32_PerfFormattedData_PerfProc_Process  | Sort-Object PercentProcessorTime -Descending | Select-Object Name, PercentProcessorTime | Out-File -FilePath C:\Temp\cpu.txt -Append

# Get CPU usage in percentage in a remote server
Get-Counter -ComputerName DCCAN100CFG26.corp.pbwan.net  -Counter "\Processor(_Total)\% Processor Time" -SampleInterval 60 -MaxSamples 1 | Select-Object CounterSamples | Select-Object -ExpandProperty CounterSamples | Select-Object -ExpandProperty CookedValue | Measure-Object -Average