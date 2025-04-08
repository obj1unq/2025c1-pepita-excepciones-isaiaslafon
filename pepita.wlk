object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		if(energia < 10 + distancia){
			self.error("No tengo suficiente energia, maestro!")
		}
		energia = energia - 10 - distancia
	}
		
	method energia() {
		return energia
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez

	}
	
	method madurar() {
		self.madurez(madurez + 1)
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
}

object pepon {
	var energia = 30
	
	method energia() {
		return energia
	}
		
	method comer(comida) {
		energia += energia + comida.energiaQueAporta() / 2
	}

	method energiaParaVolar(distancia){
		return 20 + 2*distancia
	}
	
	method puedeVolar(distancia){
		return energia >= self.energiaParaVolar(distancia)
	}

	method validarVolar(distancia){
		if(not self.puedeVolar(distancia)){
			self.error("No tengo suficiente energia, capo!")
		} //Si falla nunca ocurre la linea 71 y lanza una excepción que va subiendo por el sistema.
	}
		
	method volar(distancia) {
		self.validarVolar(distancia)
		energia -= self.energiaParaVolar(distancia)
	}
	
}

object roque {
	var ave = pepita
	var cenas = 0
	
	method ave(_ave) {
		ave = _ave
		cenas = 0
	}
	
	method alimentar(alimento) {
		ave.comer(alimento)
		cenas = cenas + 1
	}
}

