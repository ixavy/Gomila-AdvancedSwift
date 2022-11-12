//: Playground - noun: a place where people can play

import UIKit

// 2 strings de entrada
// 1 boolean

// "abcd" "dabc" -> true
// "abcd" "bcda" --> true
// "abcd" "abcd" --> true
// "abcd" "abdc" -> false

func reto8 (str1: String, str2: String) -> Bool {
    if (str1.characters.count != str2.characters.count) {
        return false
    } else {
        let a1 = Array(str1.characters)
        var a2 = Array(str2.characters)
    
        for _ in a2 {
            if a1 == a2 {
                return true
            } else {
                a2.append(a2.removeFirst())
            }
        }
        return false
    }
}

assert(reto8(str1: "abcd", str2: "dabc") == true, "el reto 8 tiene un error")
assert(reto8(str1: "abcd", str2: "bcda") == true, "el reto 8 tiene un error")
assert(reto8(str1: "abcd", str2: "abcd") == true, "el reto 8 tiene un error")
assert(reto8(str1: "abcd", str2: "abdc") == false, "el reto 8 tiene un error")