//: Playground - noun: a place where people can play

import UIKit

// Contar los caracteres de un string

func longitud (str: String) -> Int {
    var numero = 0;
    for _ in str.characters {
        numero += 1
    }
    return numero
}

assert(longitud(str: "mariposa") == 8, "longitud tiene un error")
assert(longitud(str: "") == 0, "longitud tiene un error")