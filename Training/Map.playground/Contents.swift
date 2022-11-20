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

let doubleNumbers = myNumbers.map { currentNumber in
    return currentNumber * 2
}

// Transformando los enteros a string

let strNumbers = myNumbers.map { currentNumber in
    return String(currentNumber)
}

let squareNumbers = myNumbers.map { currrentNumber in
    return currrentNumber * currrentNumber
}

print(doubleNumbers)
print(strNumbers)
print(squareNumbers)

// Versiones reducidas de los dos ejemplos anteriores

print(myNumbers.map { $0 * 2})
print(myNumbers.map { String($0)})
print(myNumbers.map { $0 * $0})
