# Escribir un programa que muestre "Hola Munddo"
$saludo = "Hola Mundo"
$nombre = Read-Host "¿Cómo te llamas?"
write-host ("Hola " + $nombre + ", " + $saludo)

# Escribir un programa que pregunta el nombre y lo muestre en pantalla
$nombre = Read-Host ("¿Cual es tu nombre?")
$saludo = ("Hola ", $nombre)
write-host $saludo

# Escribir nombre y un numero, imprimir el nombre tantas veces como el numero
$nombre = read-host ("Ingrese su nombre ")
$numero = read-host ("Ingrese un numero ")
Write-Host $nombre $numero
for ($i=0; $i -lt $numero; $i++){
    write-host $i $nombre
}

# Ingresar nombre, escribir nombre en mayuscula y cantidad de letras
$nombre = Read-Host ("Ingrese nombre")
$n = $nombre.Length
$mayuscula = $nombre.ToUpper()
Write-Host ($mayuscula + " tiene " + $n + " letras")

# Otra forma simple
$nombre = Read-Host ("Ingrese nombre")
Write-Host $nombre.ToUpper() "tiene" $nombre.Length "letras"

#
$resul = ((3+2)/2.5) ^ 2
Write-Host $resul

# Calcular cuanto gana por hora un empleado
[double]$PrimeraQuincena = Read-Host ("Ingrese sueldo de la primera quincena")
[double]$SegundaQuincena = Read-Host ("Ingrese sueldo de la segunda quincena")
[double]$HorasTrabajadas = Read-Host ("Ingrese horas trabajadas a la semana")
[double]$SueldoPorHora = ($PrimeraQuincena + $SegundaQuincena) / ($HorasTrabajadas * 4)
Write-Host ("Usted gana mensualmente") ($PrimeraQuincena + $SegundaQuincena)
Write-Host ("Usted gana por hora") ($sueldoPorHora)

# Va sumando los numeros hasta llegar al numero que le indiquemos
[int]$numero = Read-Host ("Ingrese un numero")
$sumaA = 0
for ($i=1; $i -le $numero; $i++){
    $sumaA = $sumaA+ $i
}
Write-Host $sumaA

# Lo mismo va sumando hasta llegar al numero que le indiquemos
[int]$numero = read-host ("Ingrese un numero")
$resultado = 0
for ($i=1; $i -le $numero; $i++){
    $resultado = $resultado + $i
}
Write-Host $resultado

# Calcular indice masa corporal [math] es una biblioteca matematica
[float]$PesoLb = Read-Host ("Ingrese su peso en LBs: ")
[float]$altura = Read-Host ("Ingrese altura en mts: ")
[float]$pesoKb = $PesoLb / 2.2046
[float]$imc = $pesoKb / [math]::Pow($altura,2)
Write-Host ("Su IMC es: ",$imc)

# Mostrar cociente y residuo
$n = Read-Host ("Ingrese 1er numero")
$m = Read-Host ("Ingrese 2do numero: ")
$c = $n / $m
$r = $n % $m
Write-Host ("El cociente es:", $c, "El residulo es: ",$m)

# Preguntar cantidad a invertir e interes anual, muestre el capital obtenido
[float]$CantidadInvertir = Read-Host ("Ingrese cantidad a invertir: ")
[float]$InteresAnual = Read-Host ("Ingrese Interes anual: ")
[float]$NumeroAnos = Read-Host ("Ingrese numero de años: ")
[float]$InteresAnualGanado = $CantidadInvertir * ($InteresAnual / 100)
[float]$ganado = $InteresAnualGanado * $NumeroAnos
Write-Host ("Su Capital ganado anual es de:", $InteresAnualGanado, "Su Capital ganado a travez de los años es de: ",$ganado)
