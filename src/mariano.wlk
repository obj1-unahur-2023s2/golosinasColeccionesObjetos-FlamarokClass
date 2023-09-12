import golosinas.*

object mariano {
	const golosinas = []
	
	method comprar(unaGolosina) {
		golosinas.add(unaGolosina)
	}
	
	method desechar(unaGolosina) {
		golosinas.remove(unaGolosina)	
	}
	
	method cantidadDeGolosinas() = golosinas.size()
	
	method tieneLaGolosina(unaGolosina){
		golosinas.contains(unaGolosina)
	}
	
	method probarGolosinas() {
		golosinas.forEach({g => g.mordisco()})
	}
	
	method hayGolosinasSinTACC() =  golosinas.any({golosina => golosina.esLibreGluten()})
	
	method preciosCuidados() = golosinas.all({golosina => golosina.precio() >= 10})
	
	method golosinaDeSabor(unSabor) = golosinas.find({golosina => golosina.sabor() == unSabor})
	
	method golosinasDeSabor(unSabor) = golosinas.filter({golosina => golosina.sabor() == unSabor})
		
	method sabores() = golosinas.map({g => g.sabor()})
	
	method gustosFaltantes(todosLosSabores) {
		return todosLosSabores.asSet().difference(self.sabores())
	} 
	
	method golosinaMasCara() {
		return golosinas.max({g => g.precio()})
	}
	
	method saborDeLaGolosinaMasCara() {
		return self.golosinaMasCara().sabor()
	}
	
	method buscarGolosinas(closure) {
		return golosinas.filter(closure)
	}
	
	// mariano.buscarGolosinas(g => g.peso() > 7)
	// buscará una golosina que tenga un peso mayor a 7
	
	
	// Pasar a ejercicio de clase:
	// true si los elementos de la lista estan en orden
	
	const lista = []
	(1..5).forEach({ i => lista.add(1.randomUpTo(101).truncate(0)) )} // va agregando un numero aleatorio a Lista
	
	// consulta si esta ordenada o no
	
	(1..lista.size()-1).all({i => lista.get(-1) <= lista.get(i)}) 
	//(1..lista.size()-1) tomo los indices del 1 al 5
}
