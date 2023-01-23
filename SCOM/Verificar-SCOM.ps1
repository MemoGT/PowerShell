# Check if SCOM agent is installed in list of remote computers
$Computers = Get-Content -Path C:\Temp\Computers.txt
foreach ($Computer in $Computers) {
    $Agent = Get-WmiObject -Class Win32_Service -ComputerName $Computer -Filter "Name='HealthService'"
    if ($Agent) {
        Write-Host $Computer -ForegroundColor Green  "  | SCOM si esta instalado"
    }
    else {
        Write-Host $Computer -ForegroundColor Red
    }
}