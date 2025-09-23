object camion {
    const cosas = []
    var pesoCamion = 1000
    const cosasQueSuperenPeligrosidad = []
    method peso() {return pesoCamion} 
    method cargarUnaCosa(unaCosa) {
         cosas.add(unaCosa)
         pesoCamion += unaCosa.peso()
    }
    method descargarUnaCosa(unaCosa) {
        cosas.remove(unaCosa)
        pesoCamion -= unaCosa.peso()
    }
    method sonCosasPares() {
        cosas.size().mod(2) == 0
    }
    method hayCosaConPeso(unPeso){
        return cosas.any({c => c.peso() == unPeso})
    }
    method obtenerCosaConNivelDePeligrosidad(unNivel) {
        return cosas.find({c => c.peligrosidad() == unNivel})
    }
    method obtenerTodasConPeligrosidad(unNivel){
        return cosas.filter({c=> c.peligrosidad() > unNivel})
    }
    method devolverListaDeCosasConPeligrosidadSuperada(unNivel){
        cosasQueSuperenPeligrosidad.addAll(
            self.obtenerCosaConNivelDePeligrosidad(unNivel)) 
    }
    method estaExcedido() {
        return self.peso() > 2500
    }
    method hayCosaConPeligrosidad(unNivel) {
        return cosas.any({c => c.peligrosidad() == unNivel})
    }
    method puedeCircularEnRuta(unNivel) {
        return not self.estaExcedido() and 
        not self.hayCosaConPeligrosidad(unNivel)
    }
    method cantidadTotalDeBultos() { /* pensamiento, habria que ver si cuenta el contenedor
     o las cosas que lleva dentro del mismo*/
        return cosas.size()
    }
}