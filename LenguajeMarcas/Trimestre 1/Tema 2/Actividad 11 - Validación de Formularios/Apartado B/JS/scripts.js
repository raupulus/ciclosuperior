function validar(formulario) {
	var valido = "";
	var novalido = "";
	var marca = formulario.marca.value;
	var modelo = formulario.modelo.value.length;
	var color = formulario.color.value;
	var tara = parseInt(formulario.tara.value);
	var precio = parseInt(formulario.precio.value);
	
	if (marca == "seat" || marca == "renault" || marca == "citroen") {
		valido=valido+"Marca válida\n";
	} else {
		novalido=novalido+"Marca no válida\n";
	}
	if (modelo>0 && modelo<30) {
		valido=valido+"Modelo válido\n";
	} else {
		novalido=novalido+"Modelo no válido\n";
	}
	if (color == "blanco" || color == "negro" || color == "rojo" || color == "verde" || color == "azul") {
		valido=valido+"Color válido\n";
	} else {
		novalido=novalido+"Color no válido\n";
	}
	if (tara>=500 && tara<=3000) {
		valido=valido+"Tara válida\n";
	} else {
		novalido=novalido+"Tara no válida\n";
	}
	if (precio>=1000 && precio<=15000) {
		valido=valido+"Precio válido\n";
	} else {
		novalido=novalido+"Precio no válido\n";
	}
	
	if (novalido != ""){
		alert(novalido);
	} else {
		alert(valido);
	}
}
