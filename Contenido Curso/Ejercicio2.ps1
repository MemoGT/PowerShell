# Preguntar al usuario la edad y mostrar si es mayor o menor de edad
$edad = Read-Host ("Cual es su edad: ")
if ($edad -ge 18){
    Write-Host ("Usted es MAYOR de edad: ")
}
    else {
        Write-Host ("Usted es MENOR de edad")
    }

# Guardar contraseña en una variable y decile al usuario si coincide o no
[string]$Contrasena = "Passw0rd"
[string]$ContrasenaUsuario = Read-Host ("Ingrese la contraseña: ")
if ($Contrasena -eq $ContrasenaUsuario){
    Write-Host ("La contraseña es correcta")
}
else {
    Write-Host ("La contraseña No es correcta")
}

# Pregunte al usuario la contraseña y no pase hasta que la meta correctamente. La letra "c" despues del - es para que distiga de mayusculas y minusculas
[string]$pass = "Passw0rd"
[string]$ContrasenaUsuario = Read-Host ("Ingrese la contraseña: ")
while ($pass -cne $ContrasenaUsuario){
    [string]$ContrasenaUsuario = Read-Host ("La contraseña NO es correcta, ingrese nuevamente: ")
}
Write-Host ("CONTRASENA CORRECTA FELICITACIONES")

# Preguntar el dividendo y el divisor, si esl divisor es 0 que tire un mensaje de error
$Numero1 = Read-Host ("Ingrese primer numero: ")
$Numero2 = Read-Host ("Ingrese segundo numero: ")
while ($numero2 -eq 0){
    $Numero2 = Read-Host ("Numero no es correcto, ingreselo nuevamente ")
}
    $resultado = $Numero1 / $Numero2
    Write-Host ("El resultado de la division es ",$resultado)
