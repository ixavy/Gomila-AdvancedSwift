//: Playground - noun: a place where people can play

import UIKit

// "Esto es un reto" -> "otsE se nu oter"

func reto15(str: String) -> String {
    let palabras = str.components(separatedBy: " ")
    let invertidas = palabras.map{String($0.characters.reversed())}
    return invertidas.joined(separator: " ")
}

print(reto15(str: "Esto es un reto"))