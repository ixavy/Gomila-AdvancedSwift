//: Playground - noun: a place where people can play

import UIKit


func reto13 (str: String) -> String {
    var resultado = ""
    var entrada = Array(str.characters)
    if str == "" {
        return resultado
    } else {
        while entrada.count != 0 {
            let letra = entrada.removeFirst()
            var contador = 1
            while entrada.count != 0 && letra == entrada.first {
                entrada.removeFirst()
                contador += 1
            }
            resultado.append("\(letra)\(contador)")
        }
        return resultado
    }
}

print(reto13(str: "abc")) // -> "a1b1c1"
print(reto13(str: "aabbcca")) // -> "a2b2c2a1"
print(reto13(str: "aaAAbB")) // -> "a2A2b1B1"
