//: Playground - noun: a place where people can play

import UIKit

// RETO 4: ¿Un string contiene a otro?
// 2 strings de entrada
// 1 boolean de salida

// str1: "Camion" str2 = "yo tengo un camion" --> str2 contiene str1 -> true
// str1: "yo tengo un camion", str2: "tengo" --> str1 contiene el str2 -> true

func reto4 (str1: String, str2: String) -> Bool {
    return str1.uppercased().contains(str2.uppercased()) || str2.uppercased().contains(str1.uppercased())
}

assert(reto4(str1: "Camion", str2: "yo tengo un camion") == true, "el reto 4 tiene un error")
assert(reto4(str1: "En verano voy a ir a la piscina con mis amigos", str2: "ir a la piscina") == true, "el reto 4 tiene un error")
