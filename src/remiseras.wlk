//Clientes
object ludmila{
	method precioPorKilometro(){
		return 18
	}
}

object anaMaria{
	var economicamenteEstable = true
	
	method estaEstable(){
		economicamenteEstable = true
	}
	
	method noEstaEstable(){
		economicamenteEstable = false
	}
	
	method precioPorKilometro(){
		if(economicamenteEstable){
			return 30
		}
		else{
			return 25
		}
	}
}

object teresa{
	var precio = 22
	
	method cambiarPrecio(precioNuevo){
		precio = precioNuevo
	}
	
	method precioPorKilometro(){
		return precio
	} 
}

//Remiseras

object roxana{
	method precioViaje(cliente, kms){
		return cliente.precioPorKilometro() * kms
	}
}

object gabriela{
	method precioViaje(cliente,kms){
		return (cliente.precioPorKilometro() * 1.2) * kms
	}
}

object mariela{
	var total
	
	method precioViaje(cliente, kms){
		total = cliente.precioPorKilometro() * kms
		return total.max(50)
	}
}

object juana{
	method precioViaje(cliente, kms){
		if(kms <= 8){
			return 100
		}
		else{
			return 200
		}
	}
}

//PLUSULTRA

object lucia{
	var reemplazo
	method reemplazaA(remisera){
		reemplazo = remisera
	}
	
	method precioViaje(cliente,kms){
		return reemplazo.precioViaje(cliente,kms)
	}
}

object melina{
	var clienteParaQuienTrabaja
	
	method trabajaPara(cliente){
		clienteParaQuienTrabaja = cliente
	}
	
	method precioPorKilometro(){
		return clienteParaQuienTrabaja.precioPorKilometro() - 3
	}
}

//Oficina

object oficina{
	var primeraOpcion
	var segundaOpcion
	
	method asignarRemiseras(remisera1, remisera2){
		primeraOpcion = remisera1
		segundaOpcion = remisera2
	}
	
	method cambiarPrimerRemiseraPor(remisera){
		primeraOpcion = remisera
	}
	
	method cambiarSegundoRemiseraPor(remisera){
		segundaOpcion = remisera
	}
	
	method intercambiarRemiseras(){
		const aux = primeraOpcion
		primeraOpcion = segundaOpcion
		segundaOpcion = aux 	
	}
	
	method remiseraElegidaParaViaje(cliente, kms){
		if(primeraOpcion.precioViaje(cliente, kms) < segundaOpcion.precioViaje(cliente,kms) + 30){
			return primeraOpcion
		}
		else{
			return segundaOpcion
		}
	}
}