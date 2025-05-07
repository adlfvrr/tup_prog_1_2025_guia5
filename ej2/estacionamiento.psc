Proceso ej2
	Definir seguir1,cont,vehiculos,rec,recmotos,motos,recautos,autos,reccamiones,camiones,recutil,util,horas,op,vehiculostot,autostot,motostot,utilitariostot,camionestot,rectotal como Entero;
	Definir porrecautos,porrecmotos,porreccamiones,porrecutil,pormotos,porautos,porutilitarios,porcamiones como Real;
	Definir estacionamiento,seguir como Logico;
	cont = 0;
	seguir = Verdadero;
	rectotal = 0;
	vehiculostot = 0;
	autostot = 0;
	motostot = 0;
	utilitariostot = 0;
	camionestot = 0;
	Mientras seguir Hacer
		cont = cont + 1;
		vehiculos = 0;
		rec = 0;
		recmotos = 0;
		motos = 0;
		recautos = 0;
		autos = 0;
		recutil = 0;
		util = 0;
		reccamiones = 0;
		camiones = 0;
		estacionamiento = Verdadero;
		Mientras estacionamiento Hacer
			vehiculos = vehiculos + 1;
			Escribir "Ingrese cantidad de horas: ";
			Leer horas;
			Escribir "Ingrese opcion (1- Motos, 2-Autos, 3-Utilitarios, 4-Camiones): ";
			Leer op;
			Segun op Hacer
				1: motos = motos + 1;
					recmotos = recmotos + horas *100;
					Escribir "Valor por hora: $100, Valor total: $",(horas*100);
				2: autos = autos + 1;
					recautos = recautos + horas * 200;
					Escribir "Valor por hora: $200, Valor total: $",(horas*200);
				3: util = util + 1;
					recutil = recutil + horas * 250;
					Escribir "Valor por hora: $250, Valor total: $",(horas*250);
				4: camiones = camiones + 1;
					reccamiones = reccamiones + horas * 700;
					Escribir "Valor por hora: $700, Valor total: $",(horas*700);
				De Otro Modo:
					estacionamiento = !estacionamiento;
					Escribir "Planilla finalizada.";
			FinSegun
		FinMientras
		vehiculostot = vehiculostot + vehiculos;
		autostot = autostot + autos;
		motostot= motostot + motos;
		utilitariostot = utilitariostot + util;
		camionestot = camionestot + camiones;
		rec = rec + recmotos + reccamiones + recautos + recutil;
		porrecautos = recautos/rec * 100;
		porrecmotos = recmotos / rec * 100;
		porreccamiones = reccamiones/rec * 100;
		porrecutil = recutil/rec * 100;
		rectotal = rectotal + rec;
		Escribir "Dentro de la zona n",cont," se recaudó un total de $",rec;
		Escribir "Porcentaje de $ por motos: ",porrecmotos,"%, Porcentaje de $ por autos: ",porrecautos,"%, Porcentaje de $ por camiones: ",porreccamiones,"% y Porcentaje de $ por utilitarios: ",porrecutil,"%";
		Escribir "¿Continuar zona? (1/0): ";
		Leer Seguir;
		Si seguir1 <> 1 Entonces
			seguir = Falso;
		FinSi
	FinMientras
	porautos = autostot/vehiculostot*100;
	pormotos = motostot/vehiculostot*100;
	porutilitarios = utilitariostot/vehiculostot*100;
	porcamiones = camionestot/vehiculostot*100;
	Escribir "La recaudación total de todas las zonas es de: $",rectotal;
	Escribir "Los porcentajes de vehiculos son:";
	Escribir "Autos - ",porautos,"%, Motos - ",pormotos,"%, Camiones - ",porcamiones,"% y Utilitarios - ",porutilitarios,"%";
FinProceso
