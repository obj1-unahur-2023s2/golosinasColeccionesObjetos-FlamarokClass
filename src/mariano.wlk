object mariano {
	const golosinas = []
	
	method comprar(unaGolosina) {
		golosinas.add(unaGolosina)
	}
	
	method desechar(unaGolosina) {
		golosinas.remove(unaGolosina)	
	}
	
	method cantudadDeGolosinas() = golosinas.size()
	
	method tieneLaGolosina(unaGolosina){
		golosinas.contains(unaGolosina)
	}
	
	method probarGolosinas() {
		golosinas.forEach({g => g.mordisco()})
	}
	
	method hayGolosinasSinTACC() = golosinas.any({golosina => golosina.esLibreGluten()})
	
	method preciosCuidados() = golosinas.all({golosina => golosina.precio() >= 10})
	
	method golosinaDeSabor(unSabor) = golosinas.find({golosina => golosina.sabor() == unSabor})
	
	method golosinasDeSabor(unSabor) = golosinas.filter({golosina => golosina.sabor() == unSabor})
		
	method sabores() = golosinas.map({g => g.sabor()})
}
