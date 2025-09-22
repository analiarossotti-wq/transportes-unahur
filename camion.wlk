object camion {
    const cosas = []
    var pesoCamion = 1000
    var cosasQueSuperenPeligrosidad = []
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
    
}