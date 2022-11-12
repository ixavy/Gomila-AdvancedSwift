//: Playground - noun: a place where people can play

import UIKit

// eliminar las letras que se repiten en un string de forma que no queden repetidas

// "hello" -> "helo"
// "carro" -> "caro"
// "casa" -> "cas"
// "television" -> "telvison"

func eliminarRepetidas (str: String) -> String {
    var noRepetidas = [Character]()
    for letra in str.characters {
        if !noRepetidas.contains(letra) {
            noRepetidas.append(letra)
        }
    }
    return String(noRepetidas)
}

assert(eliminarRepetidas(str: "hello") == "helo", "el reto 6 esta mal")
assert(eliminarRepetidas(str: "carro") == "caro", "el reto 6 esta mal")
assert(eliminarRepetidas(str: "casa") == "cas", "el reto 6 esta mal")
assert(eliminarRepetidas(str: "television") == "telvison", "el reto 6 esta mal")
