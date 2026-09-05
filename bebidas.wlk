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

object whisky {
  method rendimientoQueOtroga(dosisConsumida) {
    return 0.9 ** dosisConsumida
  }
}

object terere {
   method rendimientoQueOtroga(dosisConsumida) {
    return 1.max (0.1 * dosisConsumida)
  }
}

object cianuro {
  method rendimientoQueOtorga(dosisConsumida){
    return if(tito.peso() > 70) tito.peso() * 0.01 + dosisConsumida else 0 
  }
}