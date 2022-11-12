//: Playground - noun: a place where people can play

import UIKit

// Reto 12
// Entrada: 1 String de palabras separadas por espacios
// Salida: 1 String

// "muñeco muñeca" -> "muñec"
// "camion camioneta" -> "camion"
// "hola adios" -> ""
// "casa cosa cosita" -> "c"

func reto12 (str: String) -> String {
    let palabras = str.components(separatedBy: " ".lowercased())
    guard let primeraPalabra = palabras.first else { return "" }
    var prefijoActual = ""
    var mejorPrefijo = ""
    for letra in primeraPalabra.characters {
        prefijoActual.append(letra)
        
        for palabra in palabras {
            if !palabra.hasPrefix(prefijoActual) {
                return mejorPrefijo
            }
        }
        mejorPrefijo = prefijoActual
    }
    return mejorPrefijo
}

print(reto12(str: "casa caseta casino"))
print(reto12(str: "muñeco muñeca"))
