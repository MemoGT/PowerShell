# VER TODO LO QUE TIENE UN OBJETO (propiedades y metodos)
Get-Member -InputObject Get-ChildItem
Get-Member -InputObject .\Orientada-Objetos.ps1
Get-Item .\Orientada-Objetos.ps1 | Get-Member
Get-ChildItem | Get-Member
Get-Service | Get-Member
Get-Service | Get-Member -MemberType Properties
Get-Service | Get-Member -MemberType Method

# VER PROPIEDADES DE UN OBJETO
Get-ChildItem | Get-Member -MemberType Properties 
#Tambien se puede ver asi las propiedades
Select-Object -InputObject Get-ChildItem -Property * 

# VER METODOS DE UN OBJETO
Get-ChildItem | Get-Member -MemberType Method

# USAR UN METODO O ACCIONES QUE PUEDE HACER EL OBJETO
(Get-ChildItem).OpenText()
(Get-ChildItem).LastAccessTime
(Get-Help).GetType()
(Get-Variable).GetType()

# VER SOLO ALGUNAS PROPIEDADES DE UN OBJETO

Get-Variable | Get-Member -MemberType Properties
Get-Variable | Select-Object -Property Module, Value


# ALGUNOS COMANDO DE EJEMPLO

Get-Member -InputObject .\Orientada-Objetos.ps1 # Muestra todo lo que tiene el objeto el archivo "Orientada-objetos.ps1"
Get-Item .\Orientada-Objetos.ps1 | Get-Member # Muesta lo mismo propiedades y metodos.

Get-Item .\Orientada-Objetos.ps1 | Get-Member -MemberType Properties # Muestra solo propiedades

(Get-Item .\Orientada-Objetos.ps1).IsReadOnly #Muestra solo la propiedad .IsReadonly del objeto "Orientada-objetos.ps1"


$numero = 2
write-host $numero
$numero | Get-Member -MemberType Properties 

Get-Help Get-Member\

Get-Service -Property status, name
Get-Service | Select-Object -Property Status, Name

Get-Member -InputObject Get-Service