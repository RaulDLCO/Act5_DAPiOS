import Foundation
/*:
# Playground - Actividad 5
* Class y Struct
* Extension
* Optional
*/

/*: 
### Actividad Class y Struct
A) Diseñar la clase Persona que contenga dos metodos, el primero "Saludar" que reciba el parámetro nombre y regrese el mensaje el nombre mas el texto "mucho gusto", el segundo metodo "Caminar" que reciba como parámetro un tipo de dato Int y regrese un tipo de dato String indicando el numero de pasos caminados.
*/

class Persona{
    var camino = 0
    var saludo = ""
   
     func Saludar (nombre:String) {
        self.saludo = nombre
        print("Hola " + nombre + ", mucho gusto" )
    }

    func Caminar(pasos:Int) {
        self.camino = pasos
           print("Caminó", pasos , "pasos." )
    }
}

//: B) Diseñar el struct "Pantalla" la cual recibirá como como parametros el ancho y alto de una pantalla como tipo de datos Int con un constructor, para inicializar la estructura.

struct Pantalla {
    var ancho:Int
    var alto:Int

    init(ancho:Int, alto:Int) {
        self.ancho = ancho
        self.alto = alto
    }
   
    func Resolucion() -> (Int, Int) {
        return (self.alto, self.ancho)
    }
}

/*:
### Extensions
A) Diseñar un extensión del tipo de dato Int que represente las horas y que pueda regresar los segundos correspondientes (puedes utilizar una función o una variable computada)
*/

//: B) Diseñar una extensión del tipo de dato String que represente un día de la semana y regrese el numero correspondiente iniciando con Domingo = 1 y finalizando Sábado = 7

/*:
### Optionals
A) Diseñar una variable optional para recibir el tipo de dato Int en caso de que exista.
*/

var number:Int?
number=4

if number != nil {
    print(number!)
}else{
    print("*** Variable sin dato asignado ***")
}

//: B) Para la colección let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200] diseñar una variable opcional para recibir el valor de dias["DF"]

let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200]

if let temp = dias ["DF"] {
    print("Con existencia")
}else{
    print ("Sin existencia")
}