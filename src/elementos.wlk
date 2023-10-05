import plagas.*

class Barrio {
	const elementos = []
	
	method elementos() = elementos
	method cantidadDeBuenos() = elementos.count({x=>x.esBueno()})
	method cantidadDeMalos() = elementos.count({x=> not x.esBueno()})
	method esCopado() = self.cantidadDeBuenos() > self.cantidadDeMalos()
}

class Hogar {
	var mugre = 0
	var confort 
	
	method mugre() = mugre
	method confort() = confort
	method esBueno() = (confort / 2) >= mugre
	method recibirAtaque(plaga) { mugre += plaga.nivelDeDanio() }
}

class Huerta {
	var capacidadProduccion
	const nivelRequerido = 0// es igual para todas las huertas
	
	method capacidadProduccion() = capacidadProduccion
	method nivelRequerido() = nivelRequerido
	method esBueno() = capacidadProduccion > nivelRequerido
	method recibirAtaque(plaga) { 
		capacidadProduccion -= (plaga.nivelDeDanio() * 0.1)
		if (plaga.transmiteEnfermedad()) capacidadProduccion -= 10
	}
}

class Mascota {
	var nivelSalud // más alto es más saludable
	
	method nivelSalud() = nivelSalud
	method esBueno() = nivelSalud > 250
	method recibirAtaque(plaga) { if (plaga.transmiteEnfermedad()) nivelSalud -= plaga.nivelDeDanio() }
}

