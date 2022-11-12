//: Playground - noun: a place where people can play

import UIKit

// 2 strings de entrada
// 1 boolean de salida

//func reto3 (str1: String, str2: String) -> Bool {
//    if str1.characters.count == str2.characters.count {
//        let array1 = Array(str1.characters)
//        var array2 = Array(str2.characters)
//        for letra in array1 {
//            if array2.contains(letra) {
//                let indice = array2.index(of: letra)
//                array2.remove(at: indice!)
//            } else { // el array2 no contiene la letra del array1
//                return false
//            }
//        }
//        return true
//    }
//    return false
//}

func reto3 (str1: String, str2: String) -> Bool {
    let array1 = Array(str1.characters)
    let array2 = Array(str2.characters)
    return array1.count == array2.count && array1.sorted() == array2.sorted()
    
}

assert(reto3(str1: "saco", str2: "cosa") == true, "el reto 3 tiene un error")
assert(reto3(str1: "hola", str2: "hola") == true, "el reto 3 tiene un error")
assert(reto3(str1: "casa", str2: "camion") == false, "el reto 3 tiene un error")
assert(reto3(str1: "abc", str2: "cba") == true, "el reto 3 tiene un error")
assert(reto3(str1: "abca", str2: "cba") == false, "el reto 3 tiene un error")
assert(reto3(str1: "a", str2: "aa") == false, "el reto 3 tiene un error")

