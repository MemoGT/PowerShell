# Check status of service in a remote computer
get-WmiObject -Class Win32_Service -ComputerName DCCAN100JMP91.corp.pbwan.net -Filter "Name=' DHCP service'"

# check services that contain DHCP in the name
get-WmiObject -Class Win32_Service -ComputerName DCCLD200ERP01D.corp.pbwan.net -Filter "Name like '%IDS%'"

