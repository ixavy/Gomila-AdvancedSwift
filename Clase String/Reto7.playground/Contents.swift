//: Playground - noun: a place where people can play

import UIKit

// "El   perro   come    pienso" -> "El perro come pienso"

func reto7(str: String) -> String {
    var resultado = [Character]()
    var anteriorEsEspacio = false
    let espacio = Array(" ".characters).first
    
    for letra in str.characters {
        if letra == espacio {
            if anteriorEsEspacio == false {
                resultado.append(letra)
            }
            anteriorEsEspacio = true
        } else {
            anteriorEsEspacio = false
            resultado.append(letra)
        }
    }
    return String(resultado)
}

assert(reto7(str: "El perro   come     pienso") == "El perro come pienso", "El reto 7 tiene un error")