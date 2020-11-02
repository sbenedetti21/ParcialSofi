import carpas.*
import cerveza.*
import juegos.*

class Persona{
	var peso 
	var cervezaComprada
	var leGustaMusicaTradicional
	var aguante
	var marcasPreferidas = #{}
	
	
	method estaEbria(){
		return self.alcoholEnSangre() * peso > aguante
	}
	
	method alcoholEnSangre(){
		return cervezaComprada.sum({unaCerveza => unaCerveza.alcoholQueAporta()})
	}
	
	method quiereEntrarA(unaCarpa){
		return marcasPreferidas.contains(unaCarpa.marcaCerveza()) and (unaCarpa.tieneBanda() == leGustaMusicaTradicional)
	}
	
	method puedeEntrarA(unaCarpa){
		return self.quiereEntrarA(unaCarpa) and unaCarpa.dejaEntrarA(self)
	}
	
	method entrarA(unaCarpa){
		if(self.puedeEntrarA(unaCarpa)) {unaCarpa.ingresoPersona(self)
		self.recibir(unaCarpa.venderCerveza())}
		else {throw new Exception(message = "No se puede ingresar a la carpa")}
	}
	
	method esEbrioEmpedernido(){
		return cervezaComprada.all({unaCerveza => unaCerveza.litros() == 1})
	}
	
	method tomoAlguna(){
		return cervezaComprada.size() > 0 
	}
	
	method tieneMenosAlcoholQue(unaCantidad){
		return self.alcoholEnSangre() < unaCantidad
	}
	
	method recibir(unaCerveza){
		cervezaComprada.add(unaCerveza)
	}
	
	method aCualesNoPuedeEntrar(atraccionesDeFeria){
		return atraccionesDeFeria.filter({unaAtraccion => unaAtraccion.dejaEntrarA(self).negate()})
	}
		
  }








