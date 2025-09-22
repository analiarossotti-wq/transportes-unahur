<<<<<<< HEAD
/*un contenedor puede tener otras cosas adentro.
 El peso es 100 + la suma de todas las cosas que estén adentro.
 Es tan peligroso como el objeto más peligroso que contiene.
 Si está vacío, su peligrosidad es 0.

*/
object contenedores {
    const cosasAdentro = []
    method agregarCosa(cosa) {
        cosasAdentro.add(cosa)
        
    }
    method peso() {
        return 100 + cosasAdentro.sum({cosa => cosa.peso()})
        
    }
    method peligrosidad(){
        if(cosasAdentro.isEmpty()) {
            return 0
        } else {
            return cosasAdentro.max({cosa => cosa.peligrosidad()})
        }
    }
}
=======
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
>>>>>>> 12f452c47d46a2898355a97663f8cc85dea9931c
