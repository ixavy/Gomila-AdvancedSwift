// Map

let myNumbers: [Int] = [34,65,8,42,39,1988]

// Multiplicar los números del array por 2
// Versión SIN MAP

var newNumbers: [Int] = []
for numbers in myNumbers {
    newNumbers.append(numbers * 2)
}

print(newNumbers)

// Versión CON MAP
// El MAP es un clousure que toma como entrada los valores del array en el parámetro que le indicamos y lo transforma según el código escrito en él
// Versión larga:

let doubleNumbers = myNumbers.map { (currentNumber) -> Int in
    return currentNumber * 2
}

let strNumbers = myNumbers.map { (currentNumber) -> String in
    return String(currentNumber)
}

let squareNumbers = myNumbers.map { (currrentNumber) -> Int in
    return currrentNumber * currrentNumber
}

print(doubleNumbers)
print(strNumbers)
print(squareNumbers)

// Versión reducida

print(myNumbers.map { $0 * 2})
print(myNumbers.map { String($0)})
print(myNumbers.map { $0 * $0})

// Ejemplo de map con diccionarios
// Hay dos parámetros de entrada: la clave y el valor ($0 y $1). El return (valor de vuelta) no puede ser un objeto, por lo tanto no puede ser un diccionario
// Tiene que ser un tipo simple (Int, String, etc..)
// Recordatorio: Un diccionario no tiene orden, se suele ordenar por el orden alfabético de sus claves

let  family = ["Juan Gabriel":28,"Mar":20,"Juanjo":51]

family.map { (familyName: String, familyAge: Int) -> String in
    return "\(familyName) tiene \(familyAge) años."
}

print(family.map {"\($0) tiene \($1) años."})
