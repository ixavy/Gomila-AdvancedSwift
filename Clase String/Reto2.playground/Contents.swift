//: Playground - noun: a place where people can play

import UIKit

// string de entrada
// boolean de salida

// ala --> se lee igual de izquierda a derecha que de derecha a izquierda

func palindromo (str: String) -> Bool {
    let string_original = Array(str.characters)
    let string_invertido = Array(str.characters.reversed())
    return string_original == string_invertido
}

assert(palindromo(str: "ala") == true, "el reto 2 tiene un error")
assert(palindromo(str: "casa") == false, "el reto 2 tiene un error")