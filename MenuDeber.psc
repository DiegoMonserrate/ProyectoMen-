// Funciones de usuario para el Algoritmo Menu
// Presenta el menu en la pantalla
Funcion opc = presentarMenu(titulo,opciones,lim) 
	Escribir titulo
	Escribir ""
	Para pos=1 Hasta lim  Hacer
		Escribir opciones[pos]
	Fin Para
	Escribir "Elija opcion[1...",lim,"]: "
	Leer opc
FinFuncion
// Calcula el proceso matematico de dos numeros dada su operacion
                     
Funcion calculadora(operacion,num1,num2)
	Si operacion = "+" Entonces
		Escribir num1,"+",num2,"=",num1+num2
	SiNo
		Si operacion = "-" Entonces
			Escribir num1,"-",num2,"=",num1-num2
		SiNo
			Si operacion = "*" Entonces
				Escribir num1,"*",num2,"=",num1*num2
			SiNo
				Si operacion = "/" Entonces
					Escribir num1,"/",num2,"=",num1/num2
				SiNo
					Si operacion = "%" Entonces
						Escribir num1,"%",num2,"=",num1%num2
					SiNo
						Si operacion = "^" Entonces
							Escribir num1,"^",num2,"=",num1^num2
						SiNo
							Escribir "Operacion Incorrecta, intentelo de nuevo"
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	Fin Si
FinFuncion
// Verifica si un numero es primo o no y devueve 1 si es primo y 0 si no es
Funcion bandera=primo(num)
	Definir r,c,bandera Como Entero
	bandera=1;c=2
	// recorro mientras sea primo y c no lleaga al numero
	Mientras bandera=1 y c < num Hacer
		r=num MOD c
		Si r=0 Entonces
			bandera=0
		SiNo
			c=c+1
		Fin Si
	Fin Mientras

FinFuncion
// Recorrer y presentar cadena caracter por caracter
Funcion presentarCadena(texto)
	Definir pos,lon Como Entero
    //Escribir Subcadena(texto,2,3)
	lon = Longitud(texto)
	Para pos=1 Hasta lon  Hacer
		Escribir Subcadena(texto,pos,pos)
	Fin Para
FinFuncion
// recorre y cadena y cuenta las vocales de dicha cadena
Funcion vocales(texto)
	Definir pos,lon Como Entero
    //Escribir Subcadena(texto,2,3)
	lon = Longitud(texto)
	Para pos=1 Hasta lon  Hacer
		Si Subcadena(texto,pos,pos) = 'a' | Subcadena(texto,pos,pos)='e' | Subcadena(texto,pos,pos)='i' Entonces
			cv = cv +1
		Fin Si
		reves=Subcadena(texto,pos,pos)+reves
	Fin Para
    Escribir "Frase al revez: ",reves,"  No vocales: ",cv
FinFuncion
// Ingresar datos a un arreglo
Funcion ingresarArreglo(vector por referencia,lim)
	Definir num,pos Como Entero
	Para pos<-1 Hasta lim Hacer
		Escribir "Ingrese numero"
		leer num
		vector[pos]=num
	Fin Para
FinFuncion
// Presenta los datos de un arreglo dada una posicion inicial y final
Funcion presentarArreglo(vector,inicio,lim)
	Definir pos Como Entero
	Si lim > 0 Entonces
		Para pos<-inicio Hasta lim Hacer
			Escribir pos,"[",vector[pos],"]"
		Fin Para
	SiNo
		 Escribir "Ingrese primero datos al arreglo"
	Fin Si
FinFuncion
// buscac un valor en un arreglo y retorna la posicion si lo encuentra sino retorna -1
Funcion posicion=buscarArreglo(buscado,vector,lim)
	Definir pos,encontrado Como Entero
	pos=1;encontrado=0
	Mientras encontrado=0 y pos <= lim Hacer
		Si vector[pos]=buscado Entonces
			encontrado=1
		SiNo
			pos = pos + 1
		Fin Si
	Fin Mientras
	Si encontrado=1 Entonces
		posicion=pos
	SiNo
		posicion = -1
	Fin Si
FinFuncion
//Vectores
Funcion elemmay=detectarmayor(arreglo,lim)
	Definir c,ma,elemmay Como Entero
	c=0;ma=arreglo[1];elemmay=0;
	Para c=1 Hasta lim Con Paso 1 Hacer
		Si arreglo[c]>ma Entonces
			ma=arreglo[c]
		FinSi
	FinPara
	elemmay=ma
FinFuncion
//
Funcion invertirArreglo(lim)
	Definir c Como Entero
	c=0;
	Dimension Arreglo[lim],Arreglo2[lim]
	Para c=1 Hasta lim Con Paso 1 Hacer
		Escribir "Ingrese un numero: " Sin Saltar
		Leer Arreglo[c]
		Arreglo2[(lim+1)-c]=Arreglo[c]
	FinPara
	Para c=1 Hasta lim Con Paso 1 Hacer
		Escribir "> ",Arreglo2[c]
	FinPara
FinFuncion
//
Funcion sumar2arreglos(lim)
	Definir i,ma Como Entero
	i=0;ma=0;
	Dimension A[lim];Dimension B[lim];Dimension C[lim];
	Para i=1 Hasta lim Hacer
		Escribir "Ingrese un valor para A [",i,"]";Leer A[i];
		Escribir "Ingrese un valor para B [",i,"]";Leer B[i];
		C[i]=A[i]+B[i];
	FinPara
	Para i=1 Hasta lim Hacer
		Escribir "- Resultado de la suma (",i,"): ",A[i]," + ",B[i]," = ",C[i];Escribir "";
	FinPara
FinFuncion
//
Funcion invertircadena(texto)
		Definir c,pos,lon Como Entero
		c=0;
		lon = Longitud(texto)
		Para pos=1 Hasta lon Con Paso 1  Hacer
			Escribir Subcadena(texto,lon-c,lon-c)
			c=c+1
		Fin Para
FinFuncion
//
Funcion almacenarnumprimos(lim)
	Definir c,d,x,check Como Entero
	c=0;d=1;x=0;check=1;
	Dimension A[lim];Dimension R[lim]
	Para c=1 Hasta lim Con Paso 1 Hacer
		Escribir "Ingrese un numero:";Leer A[c];
	FinPara
	Para c=1 Hasta lim Con Paso 1 Hacer
		Mientras d<=A[c] Hacer
			Si A[c] mod d=0 Entonces
				x=x+1
			FinSi
			d=d+1
		FinMientras
		Si check=1 Entonces
			Escribir "Los numeros primos ingresados son:";
		FinSi
		Si x=2 Entonces
			R[c]=A[c];x=0;d=1;
			Escribir c,") ",R[c];
		SiNo
			Escribir c,") No es primo."
		FinSi
		check=0;
	FinPara
FinFuncion
//
Funcion promedioarreglo(lim)
	Definir c,ac,cprom Como Entero
	Definir prom Como Real
	c=0;ac=0;prom=0;cprom=0;
	Dimension A[lim]
	Para c=1 Hasta lim Con Paso 1 Hacer
		Escribir "Ingrese un numero:";Leer A[c];
	FinPara
	Para c=1 Hasta lim Con Paso 1 Hacer
		Si A[c]>=70 Entonces
			ac=ac+A[c]
			cprom=cprom+1
		FinSi
	FinPara
	prom=ac/cprom
	Escribir "El Promedio de las notas mayores e iguales a 70 es: ",prom
FinFuncion
//
Funcion contarpalabras(text)
	Definir c,pos Como Entero
	c=0;pos=0;
	Para pos=pos hasta Longitud(text)-1 Hacer
		Si Subcadena(text,pos,pos)=" " Entonces
			c=c+1;
			Mientras Subcadena(text,pos,pos)=" " Y pos=Longitud(text) Hacer
				pos=pos+1;
			FinMientras
		FinSi
		//Para no contar espacios extras entre palabras
		Si Subcadena(text,pos,pos)=" " y Subcadena(text,pos-1,pos-1)=" " Entonces
			c=c-1;
		FinSi
		//............................................................................
	FinPara
	Si subcadena(text,Longitud(text)-1,Longitud(text)-1)<>" " Entonces
		c=c+1;
	FinSi
	Escribir "- La frase ingresada tiene ",c," palabras";
FinFuncion
//
Funcion buscarencadena(texto,char)
	Definir pos,lon,posicion Como Entero
	posicion=0;
    //Escribir Subcadena(texto,2,3)
	lon = Longitud(texto)
	Dimension A[lon]
	Para pos=1 Hasta lon  Hacer
		A[pos]=Subcadena(texto,pos,pos)
	Fin Para
	Para pos=1 Hasta lon Hacer
		Si A[pos]=char Entonces
			posicion=pos
		FinSi
	FinPara
	Escribir "Caracter: ",char
	Escribir "Posicion: ",posicion
FinFuncion
//
Funcion igualarcadenas(frase1,frase2)
	Definir pos,lon,posicion,check Como Entero
	posicion=0;check=0;
    //Escribir Subcadena(texto,2,3)
	lon1=Longitud(frase1)
	lon2=Longitud(frase2)
	Dimension F1[lon1],F2[lon2]
	Para pos=1 Hasta lon1  Hacer
		F1[pos]=Subcadena(frase1,pos,pos)
	Fin Para
	
	Para pos=1 Hasta lon2  Hacer
		F2[pos]=Subcadena(frase2,pos,pos)
	Fin Para
	Si lon1>lon2 Entonces
		Para pos=1 Hasta lon1 Hacer
			Si F1[pos]=F2[pos] Entonces
				check=1;
			SiNo
				check=0;
			FinSi
		FinPara
	SiNo
		Para pos=1 Hasta lon2 Hacer
			Si F1[pos]=F2[pos] Entonces
				check=1;
			SiNo
				check=0;
			FinSi
		FinPara
	FinSi
	Si check=1 Entonces
		Escribir "Ambas cadenas son iguales"
	SiNo
		Escribir "Las cadenas son diferentes"
	FinSi
FinFuncion
//
Funcion cadenapalindromo(frase)
	Definir a,b,palindromo Como Entero
	ini=1;c=0;
	lon=Longitud(frase)
	Mientras a<lon Hacer
		si subcadena(frase,ini,ini)<> Subcadena(frase,lon,lon) Entonces
			c=c+1
		FinSi
		ini=ini+1
		lon=lon-1
	FinMientras
	Si c=0 Entonces
		Escribir "La frase: ",frase," es palindromo"
	SiNo
		Escribir "La frase: ",frase," no es palindromo"
	FinSi
FinFuncion
//1.1 Sumar 2 numeros
Funcion sum=suma(numero1,numero2)
	Definir sum Como Entero
	sum=0;
	sum=numero1+numero2
FinFuncion
//1.2 Sumar o restar
	//uso de funcion calculadora ya creada
//1.4 Numero mayor entre 3 numeros maximo
Funcion resp=maymen(numero1,numero2,numero3)
	Definir resp Como Entero
	resp=0;
	Si numero1>numero2 y numero1>numero3 Entonces
		resp=numero1
	SiNo
		Si numero2>numero1 y numero2>numero3 Entonces
			resp=numero2
		SiNo
			Si numero3>numero1 y numero3>numero2 Entonces
				resp=numero3
			FinSi
		FinSi
	FinSi
FinFuncion
//1.6 Comprar Productos
Funcion total=compra(venta)
	Definir total,desc,iva,subtotal Como Real
	total=0;desc=0;iva=0;subtotal=0;
	Si venta>100 Entonces
		iva=venta*0.12
		desc=(venta+iva)*0.10
		subtotal=venta+iva
		total=(venta+iva)-desc
	SiNo
		iva=venta*0.12
		desc=(venta+iva)*0.05
		subtotal=venta+iva
		total=(venta+iva)-desc
	FinSi
FinFuncion
//1.7 Pagar Sueldos
Funcion liquido=sueldo(horastrabajadas,valorhora,horas50,horas100)
	Definir sueldodeltrabajador,sobretiempo,totalingresos,descuento,liquido Como Real
	sueldodeltrabajador=0;sobretiempo=0;totalingresos=0;descuento=0;liquido=0;
	sueldodeltrabajador=horastrabajadas*valorhora
	sobretiempo=(horas50*1.5+horas100*2)*valorhora
	totalingresos=sueldodeltrabajador+sobretiempo
	descuento=totalingresos*0.0935
	liquido=totalingresos-descuento
FinFuncion
//1.8 Notas de Alumnos
Funcion prom=promedio(nota1,nota2)
	Definir prom Como Real
	prom=0;
	prom=(nota1+nota2)/2
FinFuncion
//1.9 Positivo/Negativo
Funcion bandera=detectarpositivo(num)
	Definir bandera Como Entero
	bandera=0;
	Si num>=0 Entonces
		bandera=1
	SiNo
		bandera=0
	FinSi
FinFuncion
//1.10 Par/Impar
Funcion bandera=detectarpar(num)
	Definir bandera Como Entero
	bandera=0;
	Si num mod 2=0 Entonces
		bandera=1
	SiNo
		bandera=0
	FinSi
FinFuncion
//1.11 Numero1 Multiplo del Numero2
Funcion bandera=detectarmultiplo(num1,num2)
	Definir bandera Como Entero
	bandera=0;
	Si num1 mod num2=0 Entonces
		bandera=1
	SiNo
		bandera=0
	FinSi
FinFuncion
//1.12 Mayor y Menor de una secuencia
Funcion may=nummayor(num,may)
	Si num>may Entonces
		may=num
		
	FinSi
FinFuncion

Funcion men=nummenor(num,men)
	Si num<men Entonces
		men=num
	FinSi
FinFuncion
//1.14 Multiplos de 5
Funcion bandera=detectarmulti5(num)
	Definir bandera Como Entero
	bandera=0;
	Si num mod 5=0 Entonces
		bandera=1
	SiNo
		bandera=0
	FinSi
FinFuncion
//1.15 Par a N
Funcion pairton(limite)
	Para c=2 Hasta limite Con Paso 2 Hacer
		num=num+2
		Escribir num
	FinPara
FinFuncion
//1.17 Promedio de numeros en un rango
Funcion resp=promediorango(rangomen,rangomayor,limite)
	Definir resp Como Real
	Definir c,num Como Entero
	resp=0;c=0;num=0;
	Repetir
	Escribir "Ingrese un numero: " Sin Saltar
	Leer num
	Si num>=rangomen y num<=rangomayor Entonces
		sum=sum+num
		crango=crango+1
	FinSi
	c=c+1
	Hasta Que c=limite
	resp=sum/crango
FinFuncion
//1.19 Base y exponente
Funcion resp=expo(base,exponente)
	Definir resp Como Entero
	resp=1;
	resp=base^exponente
FinFuncion
//1.20 Serie Factoriales
Funcion resp=factorial(num)
	Definir resp Como Real
	Definir c Como Entero
Si num<>0 Entonces	
	c=1;resp=1;
	Repetir
		resp=resp*c
		c=c+1
	Hasta Que c=num+1
SiNo
	resp=0
FinSi
FinFuncion
//2.1 Cuantos Digitos tiene un Numero
Funcion cont=conteo(num)
	Definir cont Como Entero
	cont=0;
	Mientras num>=1 Hacer
		num=trunc(num/10)
		cont=cont+1
	FinMientras
FinFuncion
//2.2 Convertir Base 2 a Base 10
Funcion resp=base2abase10(num)
	Definir c,resp,ex Como Entero
	c=0;resp=0;ex=0;
	cont=conteo(num)
	Para c=0 Hasta cont Con Paso 1 Hacer
		u=num mod 10
		num=trunc(num/10)
		ex=2^c
		Si u=1 Entonces
			resp=resp+ex
		FinSi
	FinPara
FinFuncion
//2.3
Funcion hexadecimal=base10abase16(resp)
	Definir c Como Entero
	Definir hexadecimal Como Caracter
	c=1;hexadecimal="";
	Mientras c>0 Hacer
		c=trunc(resp/16)
		Segun resp mod 16 hacer
			10:
				hexadecimal="A"+hexadecimal
			11:
				hexadecimal="B"+hexadecimal
			12:
				hexadecimal="C"+hexadecimal
			13:
				hexadecimal="D"+hexadecimal
			14:
				hexadecimal="E"+hexadecimal
			15:
				hexadecimal="F"+hexadecimal
			De Otro Modo:
				hexadecimal=ConvertirATexto(resp mod 16)+hexadecimal
		FinSegun
		resp=c
	FinMientras
FinFuncion
//2.4 Serie de Fibonacci Hasta N
Funcion resp=fibonacci(limite)
	Definir resp,c,v1,v2 Como Entero
	resp=0;c=0;v1=1;v2=0;
	Mientras c<=limite Hacer
		Escribir resp
			v2=resp+v1
			resp=v1
			v1=v2
			c=c+1
	FinMientras
FinFuncion
//2.5 Divisores
Funcion check=divisores(num,bandera)
	Definir resp,c Como Entero
	resp=0;c=1;
	Si bandera=1 Entonces
	Mientras c<=num Hacer
		Si num mod c=0 Entonces
			resp=resp+c
		FinSi
		c=c+1
	FinMientras
	Escribir "Es un numero perfecto"
	SiNo
		Si bandera=0 Entonces
		Mientras c<=num Hacer
				Si num mod c=0 Entonces
					Escribir "> ",c
				FinSi
			c=c+1
		FinMientras
		FinSi
	FinSi
FinFuncion
//2.8 Numeros Amigos
Funcion bandera=amigos(num1,num2)
	Definir bandera,c,check1,check2 Como Entero
	bandera=0;c=1;check1=0;check2=0;
	Mientras c<=num1 Hacer
		Si num1 mod c=0 Entonces
			check1=check1+c
		FinSi
		c=c+1
	FinMientras
	c=1;
	Mientras c<=num2 Hacer
		Si num2 mod c=0 Entonces
			check2=check2+c
		FinSi
		c=c+1
	FinMientras
	Si check1=check2 Entonces
		bandera=1
	SiNo
		bandera=0
	FinSi
FinFuncion
//2.10 De una serie de numeros cuantos son Primos

// Algoritmo principal
Algoritmo Menu
	Definir pos,resp,limite,dato Como Entero
	Definir opcion,opc1,opc2,opc3,frase Como Caracter
	Dimension menuPrincipal[4],menuNumeros[21],menuRazonamiento[11],menuCadenaVectores[16]
    Dimension arreglo[100]	
	limite=0
	// ***** MENU PRINCIPAL ******
	menuPrincipal[1] = "1)Ejercicios Basicos"
	menuPrincipal[2] = "2)Ejercicios Razonamiento"
	menuPrincipal[3] = "3)Ejercicios Cadenas y Vectores"
	menuPrincipal[4] = "4)Salir"
	
	// ***** EJERCICIOS BASICOS ******
	// dado 2 numeros presentar la suma
	menuNumeros[1] = "1)Sumar dos numeros"
	// dado 2 numeros si el primero es  >= al segundo sumarlo sino restarlo
	menuNumeros[2] = "2)Sumar o restar"
	// ingrese 2 numeros con una operacion matematica("+,-,*,/,%,^") 
	// realizar y presentar la respuesta de la operacion matematica
	menuNumeros[3] = "3)Caculadora"
	// presentar el mayor de 2 numeros ingresados
	menuNumeros[4] = "4)Mayor de dos numeros"
	// presentar el menor de 3 numeros ingresados
	menuNumeros[5] = "5)Mayor de tres numeros"
	// La despensa "El Baraton", a todas las ventas que pasen de $100,
	//se les aplicará un  descuento del 10%, a  todo los demás se les aplicará sólo el 5% 
	// luego del recargo del iva del 12%
	menuNumeros[6] = "6)Comprar productos"
	// Ingresar el nombre,horas trabajadas, valor hora, horas50 y horas100 de sobretiempo
	// se pide calcular el rol del pago del trabajor dado los siguientes calculos.
	// sueldo del trabajador(horasTrajabadas por el valorHora)
	// el sobretiempo=(horas50*1.5+horas100*2)*Valor
	// total ingreos = sueldo+sobretiempo
	// descuento= totalingresos*9.35%
	// liquido= totalingresos - descuento
	menuNumeros[7] = "7)Pago de Sueldos"
	// dada dos notas calcular el promedio y presentar el mensaja "Aproboado" si el promedio
	// mayor 70 y reprobado si es menor que 70
	menuNumeros[8] = "8)Notas de Alumnos"
	// dado un numero indicar si es positivo o negativo
	menuNumeros[9] = "9)Positivo/Negativo"
	// dado un numero indicar si es par o impar
	menuNumeros[10] = "10)Par e Impar"
	// dado dos nmeros indicar si el numero1 es multiplo del numero2
	menuNumeros[11] = "11)Multiplo de cualquier Numero"
	// dada una secuencia de numeros presentar el mayor y el menor de esa esa secuencia
	menuNumeros[12] = "12)El Mayor y Menor de una secuencia de numeros"
	// dada una secuencia de numeros presentar cuantos son numeros positivos
	menuNumeros[13] = "13)Positivos de una secuencia de numeros"
	// dada una serie de numeros presentar la suma de lo numeros multiplos de 5
	menuNumeros[14] = "14)Suma de los multiplos de cinco de una serie de numeros"
	// presentar los numeros pares desde 2 hasta N
	menuNumeros[15] = "15)Generar y presentar los Numeros pares del 2 a N"
	// dada una serie de numeros presente el numero siempre y cuando sea negativo
	// y antes de finalizar presente la cantidad, la suma y el promedio de dichos numeros negativos
	menuNumeros[16] = "16)Cantidad, Suma y Promedio de numeros negativos de una serie"
	// dado una serie de numeros presentar el promedio de los numeros que sean >= 100 and <=500 
	menuNumeros[17] = "17)Serie promedio de rango de numeros"
	// Ingrese un numero si este es postivo finalice sino vuelva a ingresarlo
	menuNumeros[18] = "18)Validar que un numero sea positivo"
	// dado dos numeros base y exponente. calcular la base elevada al exponente 
	menuNumeros[19] = "19)Base y exponente"
	// dada una serie de numeros calcular los factorles de dichos numero la serie termina
	// cuando un numero de la serie sea igual a cero.
	menuNumeros[20] = "20)Serie Factoriales"
	menuNumeros[21] = "21)Salir"
	
	// ******EJERCICIOS DE RAZONAMIENTO SIN USAR CADENAS Y VECTORES*******
	// contar los digitos de cualquier numero: ej: 342 = 3 digitos
	menuRazonamiento[1] = "1)Cuantos Digitos tiene un Numero"
	// ejemplo: binario= 1111101000  ==> 1000 (decimal) Respuesta = 3E8 (hexadecimal)
	menuRazonamiento[2] = "2)Covertir de Base 2 a Base 10"
	// ejemplo: binario= 1100100  ==> 100 (decimal) => 
	menuRazonamiento[3] = "3)Convertir de Base 2 a Base 16 pasando por Base 10"
	// ejemplo Si n=8 => La serie de fibonacci es = 0 1 1 2 3 5 8 13
	menuRazonamiento[4] = "4)Serie de fibonacci hasta N"
	// ejemplo si numero=10 ==> resp= 1,2,5
	menuRazonamiento[5] = "5)Divisores de un Numero"
	// cuando los divisores de un numero es igual al numero se dice que ese numero es perfecto
	// si numero es 6 los divisores son 1,2,3 sumados igual a 6 es igual al numero ==> es perfecto
	menuRazonamiento[6] = "6)Numero Perfecto"
	// un numero es primo cuando no tiene divisores excepto el 1 y el propio numero
	// ejemplo 5 no tiene divsores es "primo"  9 tiene como divisor al 3 por tanto no es "primo"
	menuRazonamiento[7] = "7)Numero Primo"
	// dos numeros son amigos si la suma de los divisores del primer numero es = a la suma de los
	// divisores del segundo numero Eje: numero=6 (1+2+3)=6 numero 25(1+5)=6 ==> 6=6 son amigos 
	menuRazonamiento[8] = "8)Verificar si dos numeros son Amigos"
	// dos numeros son primos gemelos si ambos numeros son primos en valor absoluto y la resta de
	// los 2 numeros es == 2 eje: 11 y 13 abs(11-13)==2
	menuRazonamiento[9] = "9)Verificar si dos Numeros son Primos Gemelos"
	// por cada numero de una serie verifique si es primo, si es primo contarlo
	menuRazonamiento[10] = "10)De una serie de numeros cuantos son Primos"
	menuRazonamiento[11] = "11)Salir"
	
	// ****** EJERCICIOS DE CADENAS Y VECTORES *******
	// dado n valores ingresarlos a un arreglo
	menuCadenaVectores[1] = "1)llenar un arreglo de numeros"
	// recorrer un arreglo y presentarlo uno por uno
	menuCadenaVectores[2] = "2)Presentar los elementos de un arreglo"
	// buscar el dato y presentar la posicion en que se encuntra el dato en el arreglo
	menuCadenaVectores[3] = "3)Buscar un dato en un arreglo"
	// Presentar el mayor de los datos de un arreglo
	menuCadenaVectores[4] = "4)Elemento Mayor de un arreglo"
	// Dado un arreglo copie los datos en otro de atras para delante 
	menuCadenaVectores[5] = "5)Copiar los datos de un arreglo en otro invertido"
	// Dado los arreglos1 y arreglos 2 sumarlos valor por valor del arreglo1 y arreglo2
	// y asigmarlo en el arreglo3(los tres arreglos deben tener la misma longitud)
	menuCadenaVectores[6] = "6)Dados los arreglos arreglo1[] y arreglo2[] Sumarlos en al arreglo Suma[]"
	// de una serie de numeros solo guardar en un arreglo los nymeros primos
	menuCadenaVectores[7] = "7)Dado N numeros guardar en un arreglo los numeros primos"
	// dadas las notas guardades en un arreglos obtener el promedio de las notas >= 70
	menuCadenaVectores[8] = "8)Dadas los datos de un arreglo obtener el promedio de las notas >=> 70"
	// presentar caracter por caracter de una cadena
	menuCadenaVectores[9] = "9)Dada una cadena presentarla caracter por caracter"
	// presentar  una cadena al reves
	menuCadenaVectores[10] = "10)Dada una cadena presentarla invertida"
	// contar las vocales de jque tiene una cadena cualquiera
	menuCadenaVectores[11] = "11)Dada una cadena indicar cuantos vocales tiene"
	// contar las palabras de una cadena
	menuCadenaVectores[12] = "12)Dada una cadena indicar cuantos palabras tiene"
	// buscar si un caracteer ingresado se encuentra en una cadena si es asi presentarMenu
	// la posicion en que se encuntra ese caracter en la cedena caso contrario presentar -1
	menuCadenaVectores[13] = "13)presentar la posicion de un caracter buscado dentro de una cadena"
	// comparar 2 cadenas csracter por catacter e indicar si son iguales o no
	menuCadenaVectores[14] = "14)Dadas dos cadenas indicar si son iguales caracter por caracter"
	// una cadena es palaindorma si se lee de la misma forma de izquierda a derecha 
	// ejemplo "ana"
	menuCadenaVectores[15] = "15)Indicar si una cadena es palindroma"
	menuCadenaVectores[16] = "16)Salir"
	// cuando se escoja la opcion 4 termina el programa
	opcion=''
	Mientras opcion <> "4" Hacer
		Borrar Pantalla
		opcion = presentarMenu("********** M E N U   P R I N C I P A L **********",menuPrincipal,4)
		Borrar Pantalla
		Segun opcion Hacer
			"1":
				opc1=""
				Mientras opc1<>"21" Hacer
					opc1= presentarMenu("********** M E N U  E J E R C I C I O S  B A S I C O S **********",menuNumeros,21)
					Borrar Pantalla
					Segun opc1 Hacer
						"1":
							Escribir "Sumar Dos  Numeros"
							Escribir "Ingrese Numero1: " Sin Saltar
							Leer numero1
							Escribir "Ingrese Numero2: " Sin Saltar
							Leer numero2
							sum=suma(numero1,numero2)
							Escribir sum
							Esperar 3 Segundos
						"2":
							Escribir "Sumar o Restar"
							Escribir "Ingrese Numero1: " Sin Saltar
							Leer numero1
							Escribir "Ingrese Numero2: " Sin Saltar
							Leer numero2
							Si numero1>=0 Entonces
								ope="+"
							SiNo
								ope="-"
							FinSi
							calculadora(ope,numero1,numero2)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 2 Segundos
						"3":
							Escribir "Calculadora"
							Escribir "Ingrese Operacion[+,-,*,/,%,^]: " Sin Saltar
							Leer ope
							Escribir "Ingrese Numero1: " Sin Saltar
							Leer num1
							Escribir "Ingrese Numero2: " Sin Saltar
							Leer num2
							calculadora(ope,num1,num2)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 2 Segundos
						"4":
							Escribir "Mayor de 2 numeros"
							Escribir "Ingrese Numero1 :" Sin Saltar
							Leer numero1
							Escribir "Ingrese Numero2 :" Sin Saltar
							Leer numero2
							resp=maymen(numero1,numero2,0)
							Escribir "El numero mayor entre ",numero1," y ",numero2," es: ",resp
							Esperar 3 Segundos
						"5":
							Escribir "Mayor de 3 numeros"
							Escribir "Ingrese Numero1 :" Sin Saltar
							Leer numero1
							Escribir "Ingrese Numero2 :" Sin Saltar
							Leer numero2
							Escribir "Ingrese Numero3 :" Sin Saltar
							Leer numero3
							resp=maymen(numero1,numero2,numero3)
							Escribir "El numero mayor entre ",numero1," , ",numero2," y ",numero3," es:",resp
							Esperar 3 Segundos
						"6":
							Escribir "Comprar Productos"
							Escribir "Ingrese el valor de venta: " Sin Saltar
							Leer venta
							total=compra(venta)
							Escribir "Total a Pagar: $",total
							Esperar 3 Segundos
						"7":
							Escribir "Pago de sueldos"
							Escribir "Ingrese el nombre :" Sin Saltar
							Leer nombre
							Escribir "Ingrese la cantidad de horas trabjadas :" Sin Saltar
							Leer horastrabajadas
							Escribir "Ingrese el valor por hora :" Sin Saltar
							Leer valorhora
							Escribir "Ingrese Horas de sobretiempo al 50% :" Sin Saltar
							Leer horas50
							Escribir "Ingrese Horas de sobretiempo al 100% :" Sin Saltar
							Leer horas100
							liquido=sueldo(horastrabajadas,valorhora,horas50,horas100)
							Escribir "EL ingreso liquido de ",nombre," es de $",liquido
							Esperar 3 Segundos
						"8":
							Escribir "Notas de Alumnos"
							Escribir "Ingrese el nombre del estudiante :" Sin Saltar
							Leer nombre
							Escribir "Ingrese la primera nota :" Sin Saltar
							Leer nota1
							Escribir "Ingrese la segunda nota :" Sin Saltar
							Leer nota2
							prom=promedio(nota1,nota2)
							Si prom>=70 Entonces
								Escribir "Usted ha aprobado"
							SiNo
								Escribir "Usted ha reprobado"
							FinSi
							Escribir "Su promedio de ",nombre," es ",prom
							Esperar 3 Segundos
						"9":
							Escribir "Positivo/Negativo"
							Escribir "Ingrese un numero :" Sin Saltar
							Leer num
							bandera=detectarpositivo(num)
							Si bandera=1 Entonces
								Escribir "El numero ingresado es positivo"
							SiNo
								Si bandera=0 Entonces
									Escribir "El numero ingresado es negativo"
								FinSi
							FinSi
							Esperar 3 Segundos
						"10":
							Escribir "Par/Impar"
							Escribir "Ingrese un numero :" Sin Saltar
							Leer num
							bandera=detectarpar(num)
							Si bandera=1 Entonces
								Escribir "El numero ingresado es par"
							SiNo
								Si bandera=0 Entonces
									Escribir "El numero ingresado es impar"
								FinSi
							FinSi
							Esperar 3 Segundos
						"11":
							Escribir "Multiplo de cualquier Numero"
							Escribir "Ingrese el Numero1 :" Sin Saltar
							Leer num1
							Escribir "Ingrese el Numero2 :" Sin Saltar
							Leer num2
							bandera=detectarmultiplo(num1,num2)
							Si bandera=1 Entonces
								Escribir "El primer numero ingresado si es multiplo del segundo"
							SiNo
								Escribir "El primer numero ingresado no es multiplo del segundo"
							FinSi
							Esperar 3 Segundos
						"12":
							c=1;
							Escribir "El Mayor y Menor de una secuencia de numeros"
							Escribir "Defina la cantidad de numeros a ingresar: " Sin Saltar
							Leer limite
							Escribir "Ingrese un numero: " Sin Saltar
							Leer num
							may=num
							men=num
							Repetir
							Escribir "Ingrese un numero: " Sin Saltar
							Leer num
							may=nummayor(num,may)
							men=nummenor(num,men)
							c=c+1
							Hasta Que c=limite
							Escribir "El numero mayor ingresado es:",may
							Escribir "El numero menor ingresado es:",men
							Esperar 3 Segundos
						"13":
							c=0;
							Escribir "Positivos de una secuencia de numeros"
							Escribir "Defina la cantidad de numeros a ingresar: " Sin Saltar
							Leer limite
							Repetir
								Escribir "Ingrese un numero: " Sin Saltar
								Leer num
								bandera=detectarpositivo(num)
								Si bandera=1 Entonces
									cpos=cpos+1
								FinSi
								c=c+1
							Hasta Que c=limite
							Escribir "Se han ingresado ",cpos," numeros positivos"
							Esperar 3 Segundos
						"14":
							c=0;
							Escribir "Suma de los multiplos de cinco de una serie de numeros"
							Escribir "Defina la cantidad de numeros a ingresar: " Sin Saltar
							Leer limite
							Repetir 
								Escribir "Ingrese un numero: " Sin Saltar
								Leer num
								bandera=detectarmulti5(num)
								Si bandera=1 Entonces
									ac=ac+num
								FinSi
								c=c+1
							Hasta Que c=limite
							Escribir "La suma de los multiplos de 5 ingresados es: ",ac
							Esperar 3 Segundos
						"15":
							Escribir "Generar y presentar los Numeros pares del 2 a N"
							Escribir "Defina la cantidad de numeros a ingresar: " Sin Saltar
							Leer limite
							pairton(limite)
							Esperar 3 Segundos
						"16":
							c=0;
							Escribir "Cantidad, Suma y Promedio de numeros negativos de una serie"
							Escribir "Defina la cantidad de numeros a ingresar: " Sin Saltar
							Leer limite
							Repetir
								Escribir "Ingrese un numero: " Sin Saltar
								Leer num
								bandera=detectarpositivo(num)
								Si bandera=0 Entonces
									cneg=cneg+1
									sumneg=sumneg+num
								FinSi
								c=c+1
							Hasta Que c=limite
							promneg=sumneg/cneg
							Escribir "Numeros Negativos ingresados:"
							Escribir "Cantidad: ",cneg
							Escribir "Suma: ",sumneg
							Escribir "Promedio: ",promneg
							Esperar 3 Segundos
						"17":
							Escribir "Serie promedio de rango de numeros"
							Escribir "Defina la cantidad de numeros a ingresar: " Sin Saltar
							Leer limite
							rangomen=100;rangomayor=500
							resp=promediorango(rangomen,rangomayor,limite)
							Escribir "El promedio de los numeros ingresados >=100 y <=500 es: ",resp
							Esperar 3 Segundos
						"18":
							Escribir "Validar que un numero sea positivo"
							Mientras bandera=0 Hacer
							Escribir "Ingrese un numero :" Sin Saltar
							Leer num
							bandera=detectarpositivo(num)
							FinMientras
							Esperar 3 Segundos
						"19":
							Escribir "Base y exponente"
							Escribir "Ingrese la Base: " Sin Saltar
							Leer base
							Escribir "Ingrese el Exponente: " Sin Saltar
							Leer exponente
							resp=expo(base,exponente)
							Escribir "El Resultado es: ",resp
							Esperar 3 Segundos
						"20":
							num=1;
							Escribir "Serie Factoriales"
							Mientras num<>0 Hacer
								Escribir "Ingrese un numero: " Sin Saltar
								Leer num
								resp=factorial(num)
								Si resp<>0 Entonces
								Escribir "El factorial del numero ingresado es: ",resp
								SiNo
									Escribir "El numero ingresado es 0, por consecuente el programa finalizara..."
								FinSi
							FinMientras
							Esperar 3 Segundos
						"21":
							Escribir "Regresando Al Menu Principal..."
							Esperar 1 Segundos
							
						De Otro Modo:
							Escribir "Opcion Incorrecta"
							Esperar 3 Segundos
					Fin Segun
				Fin Mientras
			"2":
				opc2=""
				Mientras opc2<>"11" Hacer
					opc2= presentarMenu("********** M E N U  E J E R C I C I O S  D E  RAZONAMIENTO **********",menuRazonamiento,11)
					Borrar Pantalla
					Segun opc2 Hacer
						"1":
							Escribir "Cantidad de Digitos de un Numero"
							Escribir "Ingrese un numero :" Sin Saltar
							Leer num
							cont=conteo(num)
							Escribir "El numero ingresado tiene: ",cont," digitos"
							Esperar 2 Segundos
						"2":
							Escribir "Covertir de Base 2 a Base 10"
							Escribir "Ingrese un numero [Base 2]: " Sin Saltar
							Leer num
							resp=base2abase10(num)
							Escribir "Base 2: ",num
							Escribir "Base 10: ",resp
							Esperar 3 Segundos
						"3":
							Escribir "Convertir de Base 2 a Base 16 pasando por Base 10"
							Escribir "Ingrese un numero [Base 2]: " Sin Saltar
							Leer num
							resp=base2abase10(num)
							hexadecimal=base10abase16(resp)
							Escribir "Base 2: ",num
							Escribir "Base 10: ",resp
							Escribir "Base 16: ",hexadecimal
							Esperar 3 Segundos
						"4":
							Escribir "Serie de fibonacci hasta N"
							Escribir "Defina el limite de la serie a mostrar: " Sin Saltar
							Leer limite
							resp=fibonacci(limite)
							Esperar 10 Segundos
						"5":
							Escribir "Divisores de un Numero"
							Escribir "Ingrese un numero: " Sin Saltar
							Leer num
							c=divisores(num,0)
							Esperar 3 Segundos
						"6":
							Escribir "Numero Perfecto"
							Escribir "Ingrese un numero: " Sin Saltar
							Leer num
							check=divisores(num,1)
							Esperar 3 Segundos
						"7":
							Escribir "Ejercicio Numero Primo"
							Escribir "Ingrese Numero: " Sin Saltar
							Leer num
							resp=primo(num)
							Si resp=1 Entonces
								Escribir num," Es Primo"
							SiNo
								Escribir num," No Es Primo"
							Fin Si
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 2 Segundos
						"8":
							Escribir "Verificar si dos numeros son Amigos"
							Escribir "Ingrese un numero1: " Sin Saltar
							Leer num1
							Escribir "Ingrese un numero2: " Sin Saltar
							Leer num2
							bandera=amigos(num1,num2)
							Si bandera=1 Entonces
								Escribir "Son numeros amigos"
							SiNo
								Escribir "No son numeros amigos"
							FinSi
							Esperar 3 Segundos
						"9":
							Escribir "Ejercicio Primos Gemelos"
							Escribir "Ingrese Numero1: " Sin Saltar
							Leer num1
							Escribir "Ingrese Numero2: " Sin Saltar
							Leer num2
							Si primo(num1)=1 y primo(num2)=1 y abs(num1-num2)=2 Entonces
								Escribir num1," y ",num2," Son Primos Gemelos"
							SiNo
								Escribir num1," y ",num2," No Son Primos Gemelos"
							Fin Si
							resp=primo(num)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 2 Segundos
						"10":
							c=0;limite=0;
							Escribir "De una serie de numeros cuantos son Primos"
							Escribir "Defina el limite de la secuencia: " Sin Saltar
							Leer limite
							Para c=1 Hasta limite Con Paso 1 Hacer
								Escribir "Ingrese un numero :" Sin Saltar
								Leer num
								resp=primo(num)
									Si resp=1 Entonces
										cprimo=cprimo+1
									Fin Si
							FinPara
							Escribir "La cantidad de numeros primos ingresados es: ",cprimo
							Esperar 3 Segundos
						"11":
							Escribir "Regresando Al Menu Principal..."
							Esperar 1 Segundos
							
						De Otro Modo:
							Escribir "Opcion Incorrecta"
							Esperar 3 Segundos
					Fin Segun
				Fin Mientras
			"3":
				opc3=""
				Mientras opc3<>"16" Hacer
					opc3= presentarMenu("********** M E N U  E J E R C I C I O S  C A D E N A S  Y  V E C T O R E S **********",menuCadenaVectores,16)
					Borrar Pantalla
					Segun opc3 Hacer
						"1":
							Escribir "Ingresar Valores a un Arreglo"
							Escribir "Ingrese cantidad de Elementos:" Sin Saltar
							Leer limite
							ingresarArreglo(arreglo,limite)
							Esperar 1 Segundos
						"2":
							Escribir "Presentar los Valores de un Arreglo"
							presentarArreglo(arreglo,1,limite)
							Esperar 3 Segundos	
						"3":
							Escribir "Buscar un dato en un Arreglo"
							presentarArreglo(arreglo,1,limite)
							Escribir "Ingrese el dato a buscar en el arreglo"
							Leer dato
							pos = buscarArreglo(dato,arreglo,limite)
							Si pos > 0 Entonces
								Escribir dato," Se encuentra en la posicion: ",pos, " del arreglo"
							SiNo
								Escribir dato," No se encuentra en el arreglo"
							Fin Si
							Esperar 3 Segundos
						"4":
							Escribir "Elemento mayor de un arreglo"
							Escribir "Ingrese cantidad de Elementos:" Sin Saltar
							Leer limite
							ingresarArreglo(arreglo,limite)
							elemmay=detectarmayor(arreglo,limite)
							Escribir "El Elemento Mayor es: ",elemmay
							Esperar 3 Segundos
						"5":
							Escribir "Copiar los datos de un arreglo en otro invertido"
							Escribir "Ingrese cantidad de Elementos:" Sin Saltar
							Leer limite
							invertirArreglo(limite)
							Esperar 3 Segundos
						"6":
							Escribir "Dados los arreglos arreglo1[] y arreglo2[] Sumarlos en al arreglo Suma[]"
							Escribir "Ingrese cantidad de Elementos:" Sin Saltar
							Leer limite
							sumar2arreglos(limite)
							Esperar 5 Segundos
						"7":
							Escribir "Dado N numeros guardar en un arreglo los numeros primos"
							Escribir "Ingrese cantidad de Elementos:" Sin Saltar
							Leer limite
							almacenarnumprimos(limite)
							Esperar 5 Segundos
						"8":
							Escribir "Dadas los datos de un arreglo obtener el promedio de las notas >= 70"
							Escribir "Ingrese cantidad de Elementos:" Sin Saltar
							Leer limite
							promedioarreglo(limite)
							Esperar 5 Segundos
						"9":
							Escribir "Ingrese frase:" Sin Saltar
							Leer frase
							presentarCadena(frase)
							Esperar 2 Segundos
						"10":
							Escribir "Dada una cadena presentarla invertida"
							Escribir "Ingrese frase:" Sin Saltar
							Leer frase
							invertircadena(frase)
							Esperar 5 Segundos
						"11":
							Escribir "Ingrese frase:" Sin Saltar
							Leer frase
							vocales(frase)
							Escribir "Espere por favor, Regresando Al Menu..."
							Esperar 2 Segundos
						"12":
							Escribir "Dada una cadena indicar cuantos palabras tiene"
							Escribir "Ingrese una frase:";Leer text
							contarpalabras(text)
							Esperar 5 Segundos
						"13":
							Escribir "Presentar la posicion de un caracter buscado dentro de una cadena"
							Escribir "Ingrese frase:" Sin Saltar
							Leer frase
							Escribir "Ingrese el caracter a buscar: " Sin Saltar
							Leer char
							buscarencadena(frase,char)
							Esperar 5 Segundos
						"14":
							Escribir "Dadas dos cadenas indicar si son iguales caracter por caracter"
							Escribir "Ingrese frase1:" Sin Saltar
							Leer frase1
							Escribir "Ingrese frase2:" Sin Saltar
							Leer frase2
							igualarcadenas(frase1,frase2)
							Esperar 5 Segundos
						"15":
							Escribir "Indicar si una cadena es palindroma"
							Escribir "Ingrese una frase:" Sin Saltar
							Leer frase
							cadenapalindromo(frase)
							Esperar 5 Segundos
						"16":
							Escribir "Regresando Al Menu Principal..."
							Esperar 1 Segundos
							
						De Otro Modo:
							Escribir "Opcion Incorrecta"
							Esperar 3 Segundos
					Fin Segun
				Fin Mientras
			"4":
				Escribir "Gracias por usar el sistema"	
			De Otro Modo:
				Escribir "Opcion incorrecta"
		Fin Segun
    Fin Mientras
FinAlgoritmo