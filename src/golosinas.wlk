
object bombon {
	var peso = 15
	
	method esLibreGluten() = true 
	
	method peso() = peso
	method precio() = 5
	method sabor() = "frutilla"
	
	method mordisco() {
		peso *=  0.8
	}
}

object alfajor {
	//completar
}

object pastillaTuttiFrutti {
	const sabores = ["frutilla", "chocolate", "naranja"]
	var contador = 0
	var peso = 5
	var property esLibreGluten = false
	method peso() = peso
	method precio() = if(esLibreGluten){7}else{10}
	
	method sabor() = sabores.get(contador % sabores.size()) //limitará que se pase de 0,1,2, que a su vez es el indice de los sabores 
	
	method mordisco() {
		contador +=1 // cuando muerda el contador se incrementa
	}	
	
}