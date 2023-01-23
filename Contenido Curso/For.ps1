# SE USA POR LO REGULAR CUANDO SABEMOS DESDE EL PRINCIPIO CUANTAS VECES VA A REPETIR.
# consta de 3 partes: Iniciacion, Condicion y Incremento
# Iniciciacion se ejecuta una sola vez, sirve para determinar el valor de la variable que sera utilizada para la condicion posterior.
# Condicion, eveluar antes de cada interaccion para determinar si se va a ejecutar el bloque de instrucciones o no
# Incremento, sera una o mas instrucciones que se ejecutaran al final de cada interaccion para modificar el valor de la variable que se esta utilizando en la condicion.

# for (inicializacion; condicion; incremento) {
    # Bloque de codigo que se ejecutara cada vez
    # }

    # EJEMPLO 1
for ($i = 0; $i -le 10; $i++) {
    Write-Host $i
}

# EJEMPLO 2

$fin = Read-Host "Ingrese un numero"
for ($i = 0; $i -le $fin; $i++) {
    write-host $i
}

# EJEMPLO 3 - Cantidad de veces que se puede verificar un nombre

$fin = Read-Host "Ingrese Cantidad de nombres a revisar"
for ($i = 0; $i -le $fin; $i++) {
    $nombre = Read-Host "Ingrese un nombre"
    if ($nombre -eq "Guillermo") {
        write-host "Nombre esta en el sistema, BIENVENIDO"
        break
    }
    else {
        write-host "Nombre NO esta en el sistema"
    }
}

# EJEMPLO 4 - 5 veces puede meter un password incorrecto

$i = 0
for ($i = 0; $i -le 5; $i++) {
    $password = Read-Host "Ingrese su password"
    if ($password -eq "12345@") {
        write-host "Password correcto"
        break
    }
    else {
        write-host "Password incorrecto"
    }
}
if ($i -lt 5) {
    write-host "Bienvenido al sistema"
}
else {
    write-host "Usuario bloqueado"
}

# EJEMPLO 5 - Recorrer un array con FOR, desplegar contenido del array

$colores = ("azul","verde","rojo")
$i = 0
for ($i = 0; $i -lt $colores.length; $i++) {
    write-host $colores[$i]
}

# EJEMPLO 6 - Recorrer un array con ForEach

$colores = ("azul","verde","rojo")

foreach ($c in $colores) {
    write-host $c
}
