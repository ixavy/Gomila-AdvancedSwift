//: Playground - noun: a place where people can play

import UIKit

// Reto 11
// Entrada: 2 Strings
// Salida: 1 Boolean

// "casa" y "cosa" --> true
// "casas" y "casa" --> false
// "caballo" y "camello" --> true
// "amigo" y "elijo" --> true 
// "martillo" y "molinill" --> false

func reto11 (str1: String, str2: String) -> Bool {
    var string1 = Array(str1.lowercased().characters)
    var string2 = Array(str2.lowercased().characters)
    var letrasDiferentes = 0
    
    if string1.count == string2.count {
        while string1.count != 0 {
            if string1.removeFirst() != string2.removeFirst() {
                letrasDiferentes += 1
            }
        }
    } else {
        return false
    }
    return letrasDiferentes <= 3
}


assert(reto11(str1: "casa", str2: "cosa") == true, "error")
assert(reto11(str1: "casas", str2: "casa") == false, "error")
assert(reto11(str1: "caballo", str2: "camello") == true, "error")
assert(reto11(str1: "amigo", str2: "elijo") == true, "error")
assert(reto11(str1: "martillo", str2: "molinill") == false, "error")

