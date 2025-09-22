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