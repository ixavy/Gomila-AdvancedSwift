//: Playground - noun: a place where people can play

import UIKit

// Número de vocales y de consonantes
// Entrada: 1 String
// Salida: 2 Números (vocales, consonantes)

func reto10 (str: String) -> (vocales: Int, consonantes: Int) {
    // inicialización de constantes
    let vocales = Array("aeiou".characters)
    let consonantes = Array("bcdfghjklmnñpqrstvwxyz".characters)
    
    // inicialización de variables
    var nvocales = 0
    var nconsonantes = 0
    
    // reto
    for letra in str.lowercased().characters {
        if vocales.contains(letra) {
            nvocales += 1
        } else if consonantes.contains(letra) {
            nconsonantes += 1
        }
    }
    return (nvocales, nconsonantes)
}

assert(reto10(str: "hola caracola") == (6, 6), "error")

