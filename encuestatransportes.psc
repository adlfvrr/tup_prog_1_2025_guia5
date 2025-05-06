Proceso ej1
	Definir seguir,transporte,cont,encuestados,bic,auto,tpub,moto,cantencuestadostotal,bictotal,tpubtotal,autototal como Entero;
	Definir distancia,dbic,dmoto,porbic,porautomovil,portransportepub,promdbic,promdmoto como Real;
	Definir seguirlo,finenc como Logico;
	cont = 0;
	cantencuestadostotal = 0;
	bictotal = 0;
	tpubtotal = 0;
	autototal = 0;
	seguirlo = Verdadero;
	Mientras seguirlo Y cont <> 4 Hacer
		cont = cont + 1;
		Escribir "Informe encuestador n",cont;
		encuestados = 0;
		dbic = 0;
		dmoto = 0;
		bic = 0;
		moto = 0;
		auto = 0;
		tpub = 0;
		promdbic = 0;
		promdmoto = 0;
		finenc = Verdadero;
		Mientras finenc Hacer;
			encuestados = encuestados + 1;
			Escribir "Ingrese transporte 1-4 (1-Bicicleta, 2-Automovil, 3-Motocicleta, 4-Transporte Publico): ";
			Leer transporte;
			Segun transporte Hacer
				1:bic = bic + 1;
					Escribir "Ingrese distancia recorrida km en el transporte seleccionado: ";
					Leer distancia;
					dbic = dbic + distancia;
				2:auto = auto + 1;
					
				3: moto = moto + 1;
					Escribir "Ingrese distancia recorrida km en el transporte seleccionado: ";
					Leer distancia;
					dmoto = dmoto + distancia;
				4:tpub = tpub + 1;
				De Otro Modo:
					Escribir "Encuesta finalizada";
					finenc = !finenc;
			FinSegun
		FinMientras
		cantencuestadostotal = cantencuestadostotal + encuestados;
		bictotal = bictotal + bic;
		autototal = autototal + auto;
		tpubtotal = tpubtotal + tpub;
		Si bic <> 0 Entonces
			promdbic = dbic/bic;
		FinSi
		Si moto <> 0 Entonces
			promdmoto = dmoto/moto;
			FinSi
		Escribir "La distancia promedio recorrida en bicicleta es de ",promdbic,"km y en motocicleta de ",promdmoto,"km";
		Escribir "La cantidad de encuestados es de ",encuestados," personas";
		Escribir "La cantidad de bicicletas frecuentes es de ",bic,", la cantidad de automoviles frecuentes es de ",auto," y la cantidad de transporte publico frecuente es de ",tpub;
		Escribir "¿Siguiente encuestador?: (1/0)";
		Leer seguir;
		Si seguir <> 1 Entonces
			seguirlo = !seguirlo;
		FinSi
	FinMientras
	porautomovil = autototal/cantencuestadostotal * 100;
	porbic = bictotal / cantencuestadostotal * 100;
	portransportepub = tpubtotal / cantencuestadostotal * 100;
	Escribir "La cantidad de encuestados total es de ",cantencuestadostotal," personas";
	Escribir "El porcentaje de automoviles es de ",porautomovil,"%, el porcentaje de bicicletas es de ",porbic,"% y el porcentaje de transporte publico es de ",portransportepub,"%";
FinProceso
