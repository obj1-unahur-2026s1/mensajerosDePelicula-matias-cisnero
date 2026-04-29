object mensajeria {
    const mensajeros = []

    method contratarUnMensajero(unMensajero) {
        mensajeros.add(unMensajero)
    }

    method despedirUnMensajero(unMensajero) {
        mensajeros.remove(unMensajero)
    }

    method despedirATodos() {
        mensajeros.clear()
    }

    method esGrande() {
        return mensajeros.size() > 2
    }

    method elPrimerEmpleadoPuedeEntregar(unPaquete) {
        return unPaquete.puedeSerEntregado(self.primerEmpleado())
    }

    method primerEmpleado() {
        return mensajeros.first()
    }

    method ultimoEmpleado() {
        return mensajeros.last()
    }

    method pesoUltimoMensajero() {
        return self.ultimoEmpleado().peso()
    }

    method pesoTotalDeLosMensajeros() {
        return mensajeros.sum({m => m.peso()})
    }

    method pesosTotales() {
        return mensajeros.map({m => m.peso()})
    }

    method alMenosUnMensajeroPuedeEntregar(unPaquete) {
        mensajeros.any({m => unPaquete.puedeSerEntregado(m)})
    }

    method mensajerosQuePuedenLlevar(unPaquete) {
        mensajeros.filter({m => unPaquete.puedeSerEntregado(m)})
    }

    method tieneSobrepeso() {
        return self.pesosTotales() > 500
    }
}