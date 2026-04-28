object roberto {
    var vehiculo = bicicleta
    var peso = 80

    method cambiarVehiculo(nuevoVehiculo) {
        vehiculo =  nuevoVehiculo
    }

    method cambiarPeso(nuevoPeso) {
        peso = nuevoPeso
    }

    method peso() {
        return peso + vehiculo.peso()
    }

    method puedeLlamar() {
        return false
    }
}

object chuckNorris {
    method peso() {
        return 80
    }

    method puedeLlamar() {
        return true
    }
}

object neo {
    method peso() {
        return 0
    }

    method puedeLlamar() {
        return celular.tieneCredito()
    }
}

//otros

object celular {
    var property tieneCredito = false
}