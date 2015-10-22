//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    
    case Apagado = 0,
         VelocidadBaja = 20,
         VelocidadMedia = 50,
         VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init() {
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String) {
        var velocidadCadena = ""
        switch self.velocidad {
            case .Apagado:
                self.velocidad = .VelocidadBaja
                velocidadCadena = "Velocidad Baja"
            case .VelocidadBaja:
                self.velocidad = .VelocidadMedia
                velocidadCadena = "Velocidad Media"
            case .VelocidadMedia:
                self.velocidad = .VelocidadAlta
                velocidadCadena = "Velocidad Alta"
            default:
                self.velocidad = .Apagado
                velocidadCadena = "Apagado"
        }
        
        return (self.velocidad.rawValue, velocidadCadena)
    }
}

var auto = Auto()
var velocidad = 0
var cadena = "Apagado"

for i in 1...20 {
    print("\(i). \(velocidad), \(cadena)")
    (velocidad, cadena) = auto.cambioDeVelocidad()
}
