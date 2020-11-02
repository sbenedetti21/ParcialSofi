import personas.*
import cerveza.*
import juegos.*


class CarpaCervecera{
	
	var capacidadGente
	var litrosCerveza
	var marcaCerveza 
	var tieneBanda
	var genteIngresada = #{}
	var cervezaVendida
	
	method marcaCerveza(){
		return marcaCerveza
	}
	
	method tieneBanda(){
		return tieneBanda
	}
	
	method dejaEntrarA(unaPersona){
		return genteIngresada.size() + 1 <= capacidadGente and !unaPersona.estaEbria() and unaPersona.quiereEntrarA(self)
	}
	
	method ingresoPersona(unaPersona){
		genteIngresada.add(unaPersona)
		
	}
	
	method venderCerveza(){
		return new Jarra (marca = marcaCerveza, litros = litrosCerveza)
	}
	
	method cuantosEbriosEmpedernidosHay(){
		const ebriosEmpedernidos = genteIngresada.filter({persona => persona.esEbrioEmpedernido()})
		return ebriosEmpedernidos.size()
	}
	
	
}

class CarpaConReserva inherits CarpaCervecera{
	
	var reservas = #{}
	
	override method dejaEntrarA(unaPersona){
		return super(unaPersona) and reservas.contains(unaPersona)
	}
	
	method regaloDeIngreso(unaPersona){
		unaPersona.recibir(new Jarra(marca = marcaCerveza, litros = 0.3))
	}
}








