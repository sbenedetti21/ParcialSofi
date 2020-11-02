import carpas.*
import personas.*
import cerveza.*

class Juego{
	var limiteAlcoholEnSangre
	
	method dejaEntrarA(unaPersona){
		return unaPersona.tomoAlguna() and unaPersona.tieneMenosAlcoholQue(limiteAlcoholEnSangre) 
	}
}