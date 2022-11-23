// Filter
// Filtra los valores del array según el resultado booleano del closure

let unArray: [Int] = [4,78,34,12,454,23,435,67]

unArray.filter { isIncluded in
    isIncluded < 54
}

// Versión reducida

print(unArray.filter {$0 < 54})

// En caso que en vez de un array, el parámetro de entrada sea un diccionario, filter devuelve una tupla de 2 elementos

let aDictionary: [String:Int] = ["Primer String": 12, "Segundo String": 65, "Tercer String":34]

aDictionary.filter { inDictionary in
    inDictionary.1 > 12
}

// Versión reducida

print(aDictionary.filter {$1 > 12})

