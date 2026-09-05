object tito {
  var peso = 70
  var bebidaConsumida = terere 
  var dosis = 10 
  method peso() = peso
  method cambiarPeso(nuevoPeso) {peso = nuevoPeso}

  method consumir(cantidad, bebida) {
    bebidaConsumida = bebida
    dosis = cantidad
  }

  method bebidaConsumida() = bebidaConsumida

  method velocidad() {
    return bebidaConsumida.rendimientoQueOtorga(dosis)
    * 490 / peso
  }
}

object pepe {
  var peso = 80
  var bebidaConsumida = terere 
  var dosis = 10 
  var edad = 30



  method peso() = peso
  method cumplisAnios(){edad += 1}
  method cambiarPeso(nuevoPeso) {peso = nuevoPeso}
  method consumir(cantidad, bebida) {
    bebidaConsumida = bebida
    dosis = cantidad
  }

  method bebidaConsumida() = bebidaConsumida

  method velocidad() {
    return bebidaConsumida.rendimientoQueOtorga(dosis,self)
    * 490 / peso  - if(edad>30) 10 else 0 
  }
}


object whisky {
  method rendimientoQueOtroga(dosisConsumida) {
    return 0.9 ** dosisConsumida
  }
}

object terere {
   method rendimientoQueOtroga(dosisConsumida) {
    return (0.1 * dosisConsumida).min(1)
  }
}

object cianuro {
  method rendimientoQueOtorga(dosisConsumida){
    return if(tito.peso() > 70) tito.peso() * 0.01 + dosisConsumida else 0 
  }
}