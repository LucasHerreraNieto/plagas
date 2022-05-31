import plagas.*

class Hogar {
	var property confort
	var property mugre
	
	method esBueno() = confort * 0.5 > mugre
	method sufrirAtaque(unaPlaga){
		mugre += unaPlaga.nivelDanio()
		unaPlaga.consecuenciaAtaque()
	}
}

class Huerta{
	var property capacidadProduccion
	
	method esBueno() = capacidadProduccion > nivelMinimoPedido.nivelMP()
	method sufrirAtaque(unaPlaga) {
		capacidadProduccion -= unaPlaga.nivelDanio()*0.1
		if(unaPlaga.transmiteEnfermedades()){
			0.max(capacidadProduccion -= 10)
			unaPlaga.consecuenciaAtaque()
		}
	}
}

object nivelMinimoPedido{
	var property nivelMP = 20
}

class Mascota{
	var property nivelSalud
	
	method esBuena() = nivelSalud > 250
	method sufrirAtaque(unaPlaga){
		if(unaPlaga.transmiteEnfermedades()) {
			0.max(nivelSalud -= unaPlaga.nivelDanio())
			unaPlaga.consecuenciaAtaque()
		}
	}
}