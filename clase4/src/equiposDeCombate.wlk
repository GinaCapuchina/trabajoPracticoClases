import personajes.*
object combate{
	const equipo1= [pamela, poscardo]
	const equipo2= [tulipan, toro]
	  //getter
     method equipo1()= equipo1
     method equipo2()= equipo2
   
	  
	  //primer integrante pelea con todo el equipo
     method lucharContraEquipo(equipo){
      	return equipo.forEach({primerIntegrante =>primerIntegrante.luchaManoAMano(primerIntegrante)})
      }
     //segundo integrante pelea con todo el equipo
     method lucharContraOtroEquipo(equipo){
     	equipo.forEach({otroIntegrante => otroIntegrante.luchaManoAMano(otroIntegrante)})
     	
     }
     
     //EQUIPO GANADOR
   
     method equipoGanador(){
     	if(self.energiaDeEquipo1()> self.energiaDeEquipo2()){
     		return equipo1.map({integrante => integrante.gritoDeVictoria()})
     		
     	} else{
     		return equipo2.map({integrante => integrante.gritoDeVictoria()})
     		
     	}
     }

		
	method energiaDeEquipo1(){
		return equipo1.map({integrante => integrante.energia()}).sum()
	}
	
	method energiaDeEquipo2(){
		return equipo2.map({integrante => integrante.energia()}).sum()
	}
	
}
	
	

