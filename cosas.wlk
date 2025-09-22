object knightRider {
    method peso() = 500
    method peligrosidad() = 10
}

object bumblebeebee {
    method peso() = 800

    method peligrosidad() {
        return transformacion.peligrosidad()
    }

    var transformacion = auto

    method cambiarTransformacion(nuevaTransformacion) {
        transformacion = nuevaTransformacion
    }
}

object auto {
    method peligrosidad() = 15
}

object robot {
    method peligrosidad() = 30
}

object paqueteDeLadrillos {
    var cantLadrillos = 10 

    method setLadrillos(nuevaCantidad) {
        cantLadrillos = nuevaCantidad
    }

    method peso() = cantLadrillos * 2

    method peligrosidad() = 2
}

object arenaAGranel {
    var property peso = 10

    method peligrosidad() = 1
}
