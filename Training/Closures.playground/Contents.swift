import UIKit
//MARK: Primer ejemplo------------------------------------------------------------------
//var closure: (String, Int) -> [String]
//
//closure = { (char: String, times: Int) -> [String] in
//    var cont: Int = 0
//    var chain: [String] = []
//
//    while (cont < times) {
//        chain.append(char)
//        cont+=1
//    }
//    return chain
//}
//
//print(closure("a", 2))
//MARK: Segundo ejemplo------------------------------------------------------------------
//func upperArray(arrai: [String]) -> [String] {
//    var newArray: [String] = []
//
//    for cont in arrai {
//        newArray.append(cont.uppercased())
//    }
//    return newArray
//}
//
//func doubleArray(arrai: [String]) -> [String] {
//    var newArray: [String] = []
//
//    for cont in arrai {
//        newArray.append(cont + cont)
//    }
//    return newArray
//}
//
//let stringArray: [String] = ["a","b","c","d","e","f"]
//
//upperArray(arrai: stringArray)
//doubleArray(arrai: stringArray)
//--------------------------------------------------------------------------------------
//
//let stringArray: [String] = ["a","b","c","d","e","f"]
//
//func changeArray(arrai: [String], editArrayFunction: (String) -> String) -> [String] {
//    var newArray: [String] = []
//
//    for myString in arrai {
//        newArray.append(editArrayFunction(myString))
//    }
//    return newArray
//}
//
//func upperCaseArray(strings: [String]) -> [String] {
//    return changeArray(arrai: strings) { s -> String in
//        return s.uppercased()
//    }
//}
//
//func doubleArray(strings: [String]) -> [String] {
//    return changeArray(arrai: strings) { s in
//        return s + s
//    }
//}
//
//print(upperCaseArray(strings: stringArray))
//print(doubleArray(strings: stringArray))

//MARK: Tercer ejemplo------------------------------------------------------------------

//func suma(int1: Int, int2: Int) -> Int {
//    return int1 + int2
//}
//
//func multiplica(int1: Int, int2: Int) -> Int {
//    return int1 * int2
//}
//
//print(suma(int1: 4, int2: 9))
//print(multiplica(int1: 4, int2: 9))
//
//func operation(int1: Int, int2: Int, operationFunction: (Int, Int) -> Int) -> Int {
//    return operationFunction(int1, int2)
//}
//
////Pasando funci??n por par??metro
//operation(int1: 4, int2: 9, operationFunction: suma(int1:int2:))
//operation(int1: 4, int2: 9, operationFunction: multiplica(int1:int2:))
//
////Incluyendo el c??digo del closure directamente
//operation(int1: 4, int2: 9) { int1, int2 in
//    return int1 + int2
//}
//operation(int1: 4, int2: 9) { int1, int2 in
//    return int1 * int2
//}

//--------------------------------------------------------------------------------------
//
//struct Car {
//    private var marca: String
//    private var modelo: String
//
//    private var cc: Int
//
//    init() {
//        self.marca = "Lexus"
//        self.modelo = "RX400H"
//        self.cc = 3000
//    }
//
//    func funcion(cc: Int, factor: (Int) -> Int) -> Int {
//        return cc * factor(9)
//    }
//}
//
//var myCar: Car = Car()
//
//myCar.funcion(cc: 8) { int1 in
//    return int1
//}
//MARK: Ejemplo 1 simplificado Closure----------------------------------------------------
//
////Funci??n que acepta dos par??metros de entrada: Un Int y una Closure y devuelve un Int. La closure a su vez acepta un par??metro Int y devuelve un Int
////En la funci??n, la closure S??LO EST?? DECLARADA COMO PAR??METRO DE ENTRADA. NO SE IMPLEMENTA.
////La closure es igual que una funci??n dentro de la funci??n. Es la funci??n la que PASA EL PAR??METRO DE ENTRADA A LA CLOSURE
//
//func funcion(cc: Int, factor: (Int) -> Int) -> Int {
//    return cc * factor(9)
//}
//
////Llamamos a la funci??n pas??ndole los dos par??metros de entrada: el entero y la closure.
////El par??metro de entrada de la closure, SE LO PASA LA FUNCI??N A LA CLOSURE, y el retorno de la closure SE LO PASA A LA FUNCI??N
//funcion(cc: 3000) { int1 in
//    if int1 % 2 == 0 {
//        return int1
//    } else {
//        return int1 + 1
//    }
//}

//MARK: Ejemplo 2 simplificado Closure----------------------------------------------------
//
//func operacionMatematica(int1: Int, int2: Int, operacion: (Int, Int) -> Int) -> Int {
//    return operacion(int1, int2)
//}
//
//print(operacionMatematica(int1: 4, int2: 5) { ynt1, ynt2 in
//    return ynt1 + ynt2
//})
////Simplificada
//print(operacionMatematica(int1: 4, int2: 5) { $0 * $1 })

//MARK: Ejemplo 3 simplificado Closure----------------------------------------------------
//La closure se encarga de pasar el array de strings a may??sculas
//La funci??n coge el resultado de la closure y le a??ade a cada elemento del array de strings un string separador entre ellos

func alterarStrings(str1: [String], separador: String, closure: ([String]) -> [String]) -> [String] {
    let resultadoClosure: [String] = closure(str1)
    var newStrings: [String] = []
    
    for caracter in resultadoClosure {
        newStrings.append(caracter)
        newStrings.append(separador)
    }
    return newStrings
}

let parametroStrings: [String] = ["Psic??pata","Asesino","Bipolar","Multireincidente"]
let parametroSeparador: String = "-"

print(alterarStrings(str1: parametroStrings, separador: parametroSeparador) { str in
    var tempStrings: [String] = []
    
    for ts in str {
        tempStrings.append(ts.uppercased())
    }
    return tempStrings
})
