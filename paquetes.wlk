import destinos.*

object paquete {
    var property destino = laMatrix
    var estaPago = false

    method registrarPago() {
        estaPago = true
    }

    method rechazarPago() {
        estaPago = false
    }

    method puedeSerEntregado(unMensajero) {
        return destino.dejaPasar(unMensajero) && estaPago
    }

    method precio() {
        return 50
    }
}

object paquetito {
    var property destino = laMatrix

    method puedeSerEntregado(unMensajero) {
        return true
    }

    method precio() {
        return 0
    }
}

object paqueton {
    const destinos = #{}
    var cantidadPagada = 0

    method estaPago() {
        return self.precio() == cantidadPagada
    }

    method puedeSerEntregado(unMensajero) {
        return self.estaPago() && destinos.all({d => d.dejaPasar(unMensajero)})
    }

    method precio() {
        return destinos.size() * 100
    }

    method pagarParcialmente(pago) {
        cantidadPagada = self.precio().min(cantidadPagada + pago)
    }
}