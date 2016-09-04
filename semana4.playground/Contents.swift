//: Playground - noun: a place where people can play

import UIKit

enum velocidades: Int {
    case apagado = 0, velocidadBaja = 20, velocidadMedia = 50, velocidadAlta=120
    
    init ( velocidadInicial: velocidades ){
        self = velocidadInicial
    }
}

class Auto {

    var velocidad: Int
    var velocidadEnCadena: String
    var velocidadAux: Int

    init(){
        self.velocidad = velocidades.apagado.rawValue
        velocidadEnCadena = "apagado"
        velocidadAux = 0
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String){
        if velocidad == 0 && velocidadAux == 0{
            velocidadAux=1
            return (velocidad, velocidadEnCadena)
        }
        if velocidad == 0{
            velocidad = velocidades.velocidadBaja.rawValue
            velocidadEnCadena = "velocidad baja"
        } else if velocidad == 20{
            velocidad = velocidades.velocidadMedia.rawValue
            velocidadEnCadena = "velocidad media"
        } else if velocidad == 50{
            velocidad = velocidades.velocidadAlta.rawValue
            velocidadEnCadena = "velocidad alta"
        } else if velocidad == 120{
            velocidad = velocidades.velocidadMedia.rawValue
            velocidadEnCadena = "velocidad media"
        }
        return (velocidad, velocidadEnCadena)
    }

    
}

var it = Auto()
for var i = 0; i < 20; i++ {
    var cambio = it.cambioDeVelocidad()
    //it.cambioDeVelocidad()
    print("\(cambio.actual) \(cambio.velocidadEnCadena)")
}