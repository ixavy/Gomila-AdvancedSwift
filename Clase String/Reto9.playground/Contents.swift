//: Playground - noun: a place where people can play

import UIKit

// Tienen que estar todas las letras del alfabeto en el string
// a b c d e f g h i j k l m n ñ o p q r s t u v w x y z = 27

func reto9 (str: String) -> Bool {
    let entrada = Set(str.lowercased().characters)
    let alfabeto = entrada.filter( {$0 >= "a" && $0 <= "z"} )
    return alfabeto.count == 27
}

assert(reto9(str: "abcdefghijklmnñopqrstuvwxyz") == true, "error")
assert(reto9(str: "Mis amigas son tan buenas que me han venido para prepararme una fiesta sorpresa expectacular porque hoy es mi cumpleaños. Me han regalado unos zapatos, kiwis y un jersey.") == true, "error")