object tom {
	
	var energia =80
	var posicion = 0->0
	
	method getEnergia(){
		return energia
	}
	
	method setEnergia(nuevaEnergia){
		energia = nuevaEnergia
	}
	
	method getPosicion(){
		return posicion
	}
	
	method setPosicion(nuevaPosicion){
		posicion = nuevaPosicion
	}
	
	method velocidad(){
		return 5+(energia /10)
	}
	
	method puedeAtrapar(jerry){
		return self.velocidad() > jerry.velocidad()
	}
	
	method correrA(jerry){
		
		energia -= 0.5 * self.velocidad() * distancia.entre(posicion,jerry.getPosicion())
		posicion = jerry.getPosicion()
	}
  
  	method puedeAtraparRobot(robotRaton){
		return self.velocidad() > 8
	}
	
	method correrARobot(robotRaton){
		
		energia -= 0.5 * self.velocidad() * distancia.entre(posicion,robotRaton.getPosicion())
		posicion = robotRaton.getPosicion()
	}
  
}

object jerry{
	
	var peso =3
	var posicion = 10->5
	
	method getPeso(){
		return peso
	}
	
	method setPeso(nuevoPeso){
		peso= nuevoPeso
	}
	
		method getPosicion(){
		return posicion
	}
	
	method setPosicion(nuevaPosicion){
		posicion = nuevaPosicion
	}
	
	method velocidad(){
		return 	10-peso
	}
	
}

object robotRaton{
  var posicion = 12->2
		method getPosicion(){
		return posicion
	}
	
  method velocidad(){
  return 8
  }
  
	method setPosicion(nuevaPosicion){
		posicion = nuevaPosicion
	}
}

object distancia{
	
	method entre (punto1,punto2){
			return 0
			}
			
}