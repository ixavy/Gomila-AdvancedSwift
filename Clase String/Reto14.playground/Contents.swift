//: Playground - noun: a place where people can play

import UIKit

// "a" -> "a"
// "ab" -> "ab" "ba"
// "abc" -> "abc" "acb" "bac" "bca" "cab" "cba"

func reto14(string: String, actual: String) {
 
    let longitud = string.characters.count
    let strArray = Array(string.characters)
    
    if longitud == 0 {
        print(actual)
    } else {
 
        // para cada caracter del string
        for i in 0..<longitud {
            
            // coger parte izquierda y parte derecha dejando la letra i del string en el limbo
            let izq = String(strArray[0..<i])
            let der = String(strArray[i+1..<longitud])
            
            // utilizar recursividad
            reto14(string: izq + der, actual: actual + String(strArray[i]))
            
        }
    }
}

reto14(string: "abc", actual: "")

