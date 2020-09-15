//BatallasDeEstrellas
object pamela{
	var energia=6000
	const botiquin=["botiquín algodón", "agua oxigenada" , "cintas de papel", "cintas de papel" ]
	
	
	//getter 
	method energia()= energia
	method botiquin() = botiquin
	//setter
	method energia(unaEnergia){
		energia = unaEnergia -  200 * botiquin.size()
	}
	
	
	method luchaManoAMano(unEnemigo){
		energia +=  400
	}
	
	method gritoDeVictoria(){
		return "Aca paso la Pamela "
	}
	
	method quitarUltimoElemento(){
		return botiquin.last()
		
	}
	
	method quitaEnergia(){
		return energia/2 
	}
	
	
	
}

object poscardo{
	
	var energia= 5600
	const botiquin =["guitarra", "curitas","cotonetes"]
	
	//getter 
	method energia()=energia
	method botiquin() = botiquin
	//setter
	method energia(unaEnergia){
		energia = unaEnergia - 200 * botiquin.size()
	}
	
	
   method luchaManoAMano(){
   	energia +=  500
   }	
	
   method gritoDeVictoria(){
		return "¡Siente el poder de la música!"
	}
	
   method quitarUltimoElemento(){
		return botiquin.last()
		
	}
	
  method quitaEnergia(){
		return energia/2 
	}

	
	
}

object tulipan{
	var energia = 8400
	const galpon = ["rastrillo", "macetas","macetas","manguera"]
	
	//getter 
	method energia()=energia
	method galpon() = galpon 
	//setter
	method energia(unaEnergia){
		energia = unaEnergia - 200 * galpon.size()
	}

	
	method luchaManoAMano(unEnemigo){
		return unEnemigo.quitaEnergia() 
	}
	
	method gritoDeVictoria(){
		return  "Hora de cuidar a las plantas"
	}
	
	method quitarUltimoElemento(){
		return galpon.last()
		
	}
    method quitaEnergia(){
		return energia/2 
	}
	
}

object toro{
	var energia= 7800
	var botiquin =#{}
	
	//getter 
	method energia()=energia
	method botiquin() = botiquin
	//setter
	method energia(unaEnergia){
		energia = unaEnergia - 200 * botiquin.size()
	}
	
	method luchaManoAMano(unEnemigo){
		self.quitaEnergiaA(unEnemigo) 
	    self.seQuedaConUltimoElementoDe(unEnemigo)
		
	}
	
	method quitaEnergiaA(unEnemigo){
		unEnemigo.energia(unEnemigo) 
		
	}
	
	method seQuedaConUltimoElementoDe(unEnemigo){
		const ultimoElemento = unEnemigo.quitarUltimoElemento()//saco ultimo elemento
		//if(botiquin.contains(ultimoElemento)){                //  si tiene elemento lo agrego si no lo tiene no.
	     // botiquin.add(ultimoElemento)
		 //}
		botiquin.add(ultimoElemento) 
		                                                     //agrego elemento que saque 
	}
	
	
	method gritoDeVictoria(){
		return  "No se metan con el toro" 
	}
	
   method quitaEnergia(){
		return energia/2 
	}
}