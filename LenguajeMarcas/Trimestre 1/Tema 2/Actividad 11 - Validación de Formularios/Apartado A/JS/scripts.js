function validar(formulario) {
	var valido;
	var novalido = "";
	var longitudNombre = formulario.nombre.value.length;
	var longitudApellido1 = formulario.apellido1.value.length;
	var longitudApellido2 = formulario.apellido2.value.length;
	var longitudDireccion = formulario.direccion.value.length;
	var longitudPoblacion = formulario.poblacion.value.length;
	var longitudTelefono = formulario.telefono.value.length;
	var longitudEmail = formulario.email.value.length;
	var edad = parseInt(formulario.edad.value);
	
	if (longitudNombre>0 && longitudNombre<30) {
		valido = "Nombre Correcto \n"
	} else{
		novalido="Error en el nombre\n";
	}
	if (longitudApellido1>0 && longitudApellido1<30) {
		valido = valido+"Primer Apellido Correcto \n";
	} else {
		novalido=novalido+"Error en el Primer apellido:\n";
	}
	if (longitudApellido2>0 && longitudApellido2<30) {
		valido = valido+"Segundo Apellido Correcto \n";
	} else {
		novalido=novalido+"Error en el Segundo apellido:\n";
	}
	if (longitudDireccion>0 && longitudDireccion<30) {
		valido = valido+"Dirección Correcta \n";
	} else {
		novalido=novalido+"Error en la direccion:\n";
	}
	if (longitudPoblacion>0 && longitudPoblacion<30) {
		valido = valido+"Población Correcta \n";
	} else {
		novalido=novalido+"Error en la Población:\n";
	}
	if (longitudTelefono>6 && longitudTelefono<12) {
		valido = valido+"Teléfono Correcto \n";
	} else {
		novalido=novalido+"Error en el Teléfono:\n";
	}
	if (edad>=1 && edad <=100) {
		valido = valido+"Edad Correcta \n";
	} else {
		novalido=novalido+"Error en la Edad\n";
	}
	if (longitudEmail>0 && longitudEmail<30) {
		valido = valido+"Email Correcto \n";
	} else {
		novalido=novalido+"Error en la Edad\n";
	}
	
	if (novalido != 0){
		alert(novalido);
	} else {
		alert(valido);
	}
	
	
	/*
	if (
		(longitudNombre>0 && longitudNombre<30) &&
		(longitudApellido1>0 && longitudApellido1<30) &&
		(longitudApellido2>0 && longitudApellido2<30) &&
		(longitudDireccion>0 && longitudDireccion<30) &&
		(longitudPoblacion>0 && longitudPoblacion<30) &&
		(longitudTelefono>6 && longitudTelefono<12) &&
		(edad>=1 && edad <=100) &&
		(longitudEmail>0 && longitudEmail<30)
	) {
		valido="Todos los datos introducidos son correctos";
	} else {
		valido="Existen campos incorrectos";
	}
	alert(valido);
	*/
}


