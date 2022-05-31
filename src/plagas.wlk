class Plaga{
	var property poblacion = 0
	
	method nivelDanio() = poblacion
	method transmiteEnfermedades() = poblacion >= 10
	method consecuenciaAtaque() {poblacion += poblacion *0.1}
}

class Cucarachas inherits Plaga{
	var property pesoPromedio = 0
	
	override method nivelDanio() = super()/2
	override method transmiteEnfermedades() = super() and pesoPromedio >= 10
	override method consecuenciaAtaque(){
		super()
		pesoPromedio += 2
	}
}

class Pulgas inherits Plaga{
	
	override method nivelDanio() = super()*2
}

class Garrapatas inherits Pulgas{
	override consecuenciaAtaque() {poblacion *= 1.2}
}

class Mosquitos inherits Plaga{
	
	method poblacionEsMultiploDe3()= poblacion%3 == 0
	override method transmiteEnfermedades() = super() and self.poblacionEsMultiploDe3()
}