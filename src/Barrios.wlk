import elementos.*

class Barrio{
	const elementos = []
	
	method agregarElementos(unElemento) {elementos.add(unElemento)} 
	method esCopado() = self.cantElementosBuenos() > self.cantElementosMalos()
	method cantElementosBuenos() = elementos.count({e=>e.esBueno()}) 
	method cantElementosMalos () = elementos.count({e=>!e.esBueno()})

}
