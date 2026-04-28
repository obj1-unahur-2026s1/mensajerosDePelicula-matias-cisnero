object bicicleta {
    method peso() {
        return 5
    }
}

object camion {
    var cantAcoplados = 1

    method cantAcoplados(nuevaCantidad) {
        cantAcoplados = nuevaCantidad
    }

    method peso() {
        return 500 * cantAcoplados
    }
}