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

    method pesoDelUltimoMensajero() {
        return self.ultimoEmpleado().peso()
    }
}