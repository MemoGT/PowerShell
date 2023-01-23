#operadores de comparacion simples de igualdad
2 -eq 2 # Igual a ==
2 -ne 2 # Desigal a !=

#OPERADORES DE COMPARACION SIMPLES
5 -gt 2 # Mayor que 
5 -ge 5 # Mayo o igual que
5 -lt 10 # Menor que
5 -le 5 # Meno o igual que

#OPERADORES DE COMPARACION DE CADENAS
"MyString" -like "*String"
"David" -notlike "s"

#OPERADORES DE COMPARACION DE CADENAS CON EXPRESIONES REGULARES
"MyString" -match "$String"
"MyString" -notmatch "Other"

#OPERADORES DE ARRAYS
1,2,3,4,5 -contains 1
1,2,3,4,5  -notcontains 4

#OPERADOR -AND -OR -Xor -Not
Write-Host ((5 -gt 1) -AND (5 -lt 1))
Write-Host ((5 -gt 1) -or (5 -lt 1))
Write-Host ((5 -gt 1) -xor (5 -lt 1)) #Solo puede haber un "verdadero" para que sea verdadero
Write-Host (-Not  (5 -gt 1)) #El resultado lo combierte a lo contrario, si es verdadero a false y si es false a verdadero

# -Is comprueba si un objeto es de cierto tipo de dato
# -Isnot comprueba si un objeto no es de cierto tipo de objeto
$a = "hola"
$a -is [int]
$b = 5
$b -is [int]
$a -isnot [int]

# DEFINICION DE UN ARRAY
$array_vacio = @()
Write-Host $array_vacio
$array_enteros = @(1,2,3,4,5)
Write-Host $array_enteros
$array_enteros2 = 1,2,3,4,5
Write-Host $array_enteros2
write-host  $array_enteros2.GetType().Name
$array_consecutivo = 1..10
Write-Host $array_consecutivo
$array_string = "uno","dos","tres","cuatro"
Write-Host $array_string
$array_multi = 1,"dos",3,"cuatro",5
Write-Host $array_multi

# VER POSICION DE UN ARRAY
Write-Host $array_enteros[1]
Write-Host $array_enteros[1,4]
Write-Host $array_enteros[-1]

# AGREGAR ELEMENTOS A UN ARRAY
Write-Host $array_enteros
$array_enteros += 6,7
Write-Host $array_enteros

# PENDIENTE COMO ELIMINAR ELEMENTOS

# SUMA DE ARRAYS
$Suma_Array = $array_enteros + $array_enteros2
Write-Host $Suma_Array

# FUNCIONES UTILES DE ARRAYS
$Array_numeros = 1,2,3,4,5
write-host $Array_numeros
$array_numeros -join '-' # Solo imprime no le cambia el valor a la variable
$Array_numeros -contains 20 # Devuelve True o False si el caracter esta en el Array.
$array_string -contains "dos"
$array_string -notcontains "dos"

# IF - Hay flujo si se cumple la condicion
$edad = Read-Host "Ingresa tu edad"
if ($edad -ge 18){
    Write-Host "Es mayor de edad"
}
Write-Host "Fin del Programa"

# IF / ELSE - Hay flujo si se cumple y si no se cumple la condicion
$edad = Read-Host "Ingresa tu edad"
if ($edad -ge 18){
    Write-Host "Es mayor de edad"
}
    else {
        Write-Host "Es menor de edad"
    }

Write-Host "Fin del Programa"

# IF / ELSEIF / ELSE - Cuando existe mas de una condicion, si no se cumple hay un flujo por defecto
$edad = Read-Host "Ingresa tu edad"
if ($edad -ge 18){
    write-host "Es mayor de edad"
}
elseif (($edad -lt 18) -and ($edad -ge 13)){
    Write-Host "Es adolecente"
}
else {
    Write-Host "Es menor de edad"
}
Write-Host "Fin del programa"

# Ejemplo 1
$color = Read-Host "Ingresa el color"
if ($color -eq "Rojo"){
    Write-Host "No puede pasar"
}
elseif ($color -eq "Amarillo"){
    Write-Host "Pase con precaucion"
}
elseif ($color -eq "Verde"){
    Write-Host "Puede pasar"
}
else {
    Write-Host "Color no valido"
}
Write-Host "Fin"

# SWITCH, CUANDO HAY MUCHAS CONDICIONES A EVALUAR
$color_semaforo = Read-Host "Ingrese color: "
switch ($color_semaforo) {
    'rojo' { Write-Host "No puede pasar" }
    'amarillo' { Write-Host "Pase con cuidado" }
    'verde' { Write-Host "Pase tranquilamente" }
    Default {Write-Host "Color Incorrecto"}
}
Write-Host "Fin del programa"

# SWITCH - BREAK - Rompera el flujo de la sentencia actual y seguira adelante, no seguira evaluando, es bueno usarlo siempre
$color_semaforo = Read-Host "Ingrese color: "
switch ($color_semaforo) {
    'rojo' { Write-Host "No puede pasar" 
    BREAK}
    'amarillo' { Write-Host "Pase con cuidado" 
    BREAK}
    'verde' { Write-Host "Pase tranquilamente" 
    BREAK}
    Default {Write-Host "Color Incorrecto"}
}
Write-Host "Fin del programa"

# SWITCH - CON CONDICIONES
$edad1 = Read-Host "Ingrese su edad"
switch ($edad1) {
    {$edad1 -gt 18 } {  
        Write-Host "Es mayor de edad"
    }
    {$edad1 -lt 18}{
        Write-Host "Eres menor"
    }
    Default {
        Write-Host "Edad incorrecta"
    }
}
Write-Host "Fin de programa"










