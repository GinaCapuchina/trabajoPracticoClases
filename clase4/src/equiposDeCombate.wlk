import personajes.*
object combate{
	const equipo1= [pamela, poscardo]
	const equipo2= [tulipan, toro]
	
	//aca como habia consultado en disco, empeze obteniendo los elementos de la lst equipo1
	//pero como biene me dijieron, si en algun momento se agregan mas participantes a la lista 
	//ya me deja de funcionar. Me dijieron de hacer un forEach pero estoy muy trabada en este punto
	//nose como seguir, agradeceria mucho me puedan ayudar. 
	
	  method equipo1( )= equipo1
	
	  method primerParticipanteEquipo()= {const primerEnemigo= equipo1.head()}	    	  	   
	  method segundoParticipanteEquipo(){const segundoEnemigo = equipo2.last()}
	

       method atacaPimerIntegranteEquipo(){
       	   equipo2.forEach({primerEnemigo => self.primerParticipanteEquipo().luchaManoAMano(primerEnemigo)})
       	
       }
       

		
	}
	
	

