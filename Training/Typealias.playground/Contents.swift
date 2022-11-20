import UIKit

// Declaramos un alias (aliasString) que representa el tipo de dato String
// Declaramos un alias (aliasArrayString) que basándose en el alias anterior crea un tipo de dato Array de String
// Declaramos un alias (AliasSinParametroArrayStringVuelta) que basándose en los dos anteriores crea un tipo sin parámtros de entrada y Array de String de salida

typealias aliasString = String
typealias aliasArrayString = [aliasString]
typealias aliasSinParametroArrayStringVuelta = () -> aliasArrayString

// Declaramos una constante que es de tipo String utilizando el alias aliasString
let unaVariable: aliasString = "Esta es una variable de tipo String"

// Declaramos una función que devuelve un Array de String utilizando el alias aliasArrayString
func unaFuncion () -> aliasArrayString {
    return ["String 1 del array de la función","String 2 del array de la función"]

}

// Declaramos una closure que no admite parámetros y devuelve un Array de String utilizando el alias aliasSinParametroArrayStringVuelta
var unaClosure: aliasSinParametroArrayStringVuelta = {
        return ["String 1 del array del closure","String 2 del array del closure"]
}

// Imprimimos resultados
print(unaVariable)
print(unaFuncion())
print(unaClosure())


