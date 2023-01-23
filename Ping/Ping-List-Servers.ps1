# Check ping test from a list of servers and write the result to a file
$ServerList = Get-Content C:\Temp\ServerList.txt
$ServerList | ForEach-Object {
    $Server = $_
    $Ping = Test-Connection -ComputerName $Server -Count 1 -Quiet
    if ($Ping) {
        Write-Host "$Server is up"
        $Server + " is up" | Out-File -FilePath C:\Temp\ServerStatus.csv -Append
    }
    else {
        Write-Host "$Server is down"
        $Server + " is down" | Out-File -FilePath C:\Temp\ServerStatus.csv -Append
    }
}