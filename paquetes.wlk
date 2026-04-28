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
}