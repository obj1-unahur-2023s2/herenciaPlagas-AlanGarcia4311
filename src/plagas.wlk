class Plaga {
	var poblacion
	
	method poblacion() = poblacion
	method transmiteEnfermedad() = poblacion >= 10
	method atacar(elemento) { 
		poblacion += (poblacion * 0.1)
		elemento.recibirAtaque()
	}
}

class Cucaracha inherits Plaga {
	var peso
	
	method peso() = peso
	method nivelDeDanio() = poblacion / 2
	override method transmiteEnfermedad() = poblacion >= 10 and peso >= 10
	override method atacar(elemento) { 
		poblacion += (poblacion * 0.10) 
		peso += 2
	}
}

class Mosquito inherits Plaga {
	method nivelDeDanio() = poblacion
	override method transmiteEnfermedad() = poblacion >= 10 and poblacion % 3 == 0
}

class Pulga inherits Plaga {
	method nivelDeDanio() = poblacion * 2
}

class Garrapata inherits Pulga{
	override method atacar(elemento) { poblacion += (poblacion * 0.2) }
}

