// Reduce
// "Combina" los elementos de entrada y devuelve un objeto de tipo result
// El primer parámetro que se le pasa es el valor con el queremos empezar

let myNumbers = [34,65,8,42,39,1988]

let family = ["Juan Gabriel":28, "Mar":20, "Juanjo":51]

// Reducimos el array muNumbers sumando todos sus elementos

// El parámetro into, de tipo Result es el valor con el que queremos empezar
// Dentro del segundo parámetro (el closure), el primer parámetro es el resultado parcial previo
// y el segundo, el valor actual:
// myNumbers.reduce(initialResult: Result, nextPartialResult: (Result, Int) throws -> Result)

myNumbers.reduce(0) { (thePreviousSum, theCurrentInt) -> Int in
    thePreviousSum + theCurrentInt
}

// Si queremos concatenar los elementos del array en vez de sumarlos:

myNumbers.reduce("") {(thePreviousResult, theCurrentValue) -> String in
    thePreviousResult + String(theCurrentValue)
}

// Versiones reducidas:

print(myNumbers.reduce(0, {$0 + $1}))
print(myNumbers.reduce("", {$0 + String($1)}))
