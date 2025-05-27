class ChevroletCorsa{
  var property color 
  method capacidad() = 4
  method velocidad() = 150
  method peso() = 1300
}

class RenaultKwid {
  const tieneTanqueAdicional
  method capacidad() = if (tieneTanqueAdicional) 3 else 4
  method velocidad() = if (tieneTanqueAdicional) 120 else 110
  method peso() = if (tieneTanqueAdicional) 1350 else 1200
  method color() = "azul"
}

object trafic{
var interior = comodo
var motor= pulenta
method color()= "blanco"
method capacidad() = interior.capacidad()
method velocidad() = motor.velocidad()
method peso() = motor.peso() + interior.peso()
method cambiarInterior(){
  if(interior == comodo){
    interior = popular
    }else{
    interior = comodo
    }

  }
method cambiarMotor(){
  if(motor == pulenta){
    motor = bataton
    }else{
    motor = pulenta
    }

  }
}
object comodo {
  method capacidad() = 5
  method peso()= 700
}
object popular {
  method capacidad() = 12
  method peso()= 1000
}
object pulenta {
  method velocidad() = 130
  method peso()= 800
}
object bataton {
  method velocidad() = 80
  method peso()= 500
}

class AutosEspeciales {
  const property capacidad
  const property velocidad
  const property peso
  const property color  
}

class Dependencia {
  const rodados = {}
  const property empleados 
  method agregarAFlota(rodado) {
    rodados.add(rodado)
  }
  method quitarDeFlota(rodado) {
    rodados.remove(rodado)
  }
  method pesoTotalFlota() = rodados.sum({a=> a.peso()})
  method estaBienEquipada() = rodados.filter({a => a.velocidad() >= 100}).size() >= 3
  method capacidadTotalEnColor(color) = rodados.filter({a => a.color() == color}).sum({a => a.capacidad()})
  method colorDelRodadoMasRapido() = rodados.max({a => a.velocidad()}).color()
  method capacidadFaltante() = empleados - rodados.sum({a=> a.capacidad()})
  method esGrande() = empleados >= 40 and rodados.size() >= 5
}