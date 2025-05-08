Proceso ej3
	Definir carton,cant,rectotal,rec,recteleb,recquini,rectotob,totob,teleb,quini,rectotteleb,rectottotob,rectotquini,cont como Entero;
	Definir porteleb,porquini,portotob como Real;
	Definir venta,seguir como Logico;
	cont = 0;
	rectotal = 0;
	rectotteleb = 0;
	rectottotob = 0;
	rectotquini = 0;
	porteleb = 0;
	porquini = 0;
	portotob = 0;
	seguir = Verdadero;
	Mientras seguir Y cont <> 4 Hacer
		rec = 0;
		recteleb = 0;
		recquini = 0;
		rectotob = 0;
		teleb = 0;
		totob = 0;
		quini = 0;
		venta = Verdadero;
		Mientras venta Hacer
			Escribir "Ingrese tipo de cartón (1 - Tele Bingo, 2 - Quini 6, 3 - Toto Bingo): ";
			Leer carton;
			Segun carton Hacer
				1: Escribir "Ingrese cantidad de cartones: ";
					Leer cant;
					teleb = teleb + cant;
					recteleb = recteleb + cant*400;
					Escribir "Ha adquirido una cantidad de ",cant," cartones por un total de $",(cant * 400);
				2: Escribir "Ingrese cantidad de cartones: ";
					Leer cant;
					quini = quini + cant;
					recquini = recquini + cant * 800;
					Escribir "Ha adquirido una cantidad de ",cant," cartones por un total de $",(cant * 800);
				3:Escribir "Ingrese cantidad de cartones: ";
					Leer cant;
					totob = totob + cant;
					rectotob = rectotob + cant * 750;
					Escribir "Ha adquirido una cantidad de ",cant," cartones por un total de $",(cant * 750);
				De Otro Modo: Escribir "Venta finalizada";
					venta = !venta;
			FinSegun
		FinMientras
		rec = rectotob + recteleb + recquini;
		rectotal = rectotal + rec;
		rectotteleb = rectotteleb + recteleb;
		rectottotob = rectottotob + rectotob;
		rectotquini = rectotquini + recquini;
		Escribir "Se han adquirido ",teleb," cartones de Tele Bingo por un total de $",recteleb;
		Escribir "Se han adquirido ",totob," cartones de Tele Bingo por un total de $",rectotob;
		Escribir "Se han adquirido ",quini," cartones de Tele Bingo por un total de $",recquini;
		cont = cont + 1;
		Escribir "Pasar al siguiente vendedor? (1/0)";
		Leer cant;
		Si cant <> 1 Entonces
			seguir = Falso;
		FinSi
		FinMientras
		porteleb = rectotteleb/rectotal * 100;
		porquini = rectotquini/rectotal * 100;
		portotob = rectottotob/rectotal * 100;
		Escribir "Se ha recaudado un total de $",rectotal;
		Escribir "Un ",porteleb,"% de la recaudación corresponde al Tele Bingo";
		Escribir "Un ",porquini,"% de la recaudacion corresponde al Quini 6";
		Escribir "Un ",portotob,"% de la recaudación corresponde al Toto Bingo";
		Si rectotteleb > rectotquini Y rectotteleb > rectottotob Entonces
			Escribir "El ganador del premio por mayor recaudación va hacia el Tele Bingo";
		FinSi
		Si rectottotob > rectotquini Y rectottotob > rectotteleb Entonces
			Escribir "El ganador del premio por mayor recaudación va hacia el Toto Bingo";
		FinSi
		Si rectotquini > rectotteleb Y rectotquini > rectottotob Entonces
			Escribir "El ganador del premio por mayor recaudación va hacia el Quini 6";
		FinSi
FinProceso
