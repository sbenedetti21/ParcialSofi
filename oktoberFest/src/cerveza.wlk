import carpas.*
import personas.*
import juegos.*



class Jarra {
	var marca
	var graduacionAlcoholica = marca.graduacionAlcoholica()
	var litros
	
	method alcoholQueAporta(){
		return litros * (graduacionAlcoholica / 100)
	}
	
	method litros(){
		return litros
	}
}

class Marca{
	var nombre
	var graduacionAlcoholica
	
	method graduacionAlcoholica(){
		return graduacionAlcoholica
	}
	
}