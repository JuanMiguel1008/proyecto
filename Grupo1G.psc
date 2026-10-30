Algoritmo Grupo1G
	
    Definir calificaciones, promedioAlumno, promedioMateria Como Real
    Definir materias Como Caracter
    Definir i, j, k Como Entero
    Definir sumaAlumno, sumaMateria, totalGrupo Como Real
	
    Dimension calificaciones[4,8,3]
    Dimension promedioAlumno[4]
    Dimension promedioMateria[8]
    Dimension materias[8]
	
    materias[1] <- "ALGORITMO"
    materias[2] <- "APRENDER A APRENDER"
    materias[3] <- "ELECTRICIDAD Y ELECTRONICA"
    materias[4] <- "HERRAMIENTAS BASICAS DE COMPUTACION"
    materias[5] <- "INGLES"
    materias[6] <- "MATEMATICAS BASICAS"
    materias[7] <- "NATURALEZA DEL CONOCIMIENTO"
    materias[8] <- "RAZONAMIENTO MATEMATICO"
	
    totalGrupo <- 0
	
    
    Para i <- 1 Hasta 4 Hacer
        Escribir "ALUMNO ", i
		
        Para j <- 1 Hasta 8 Hacer
            Escribir "Materia: ", materias[j]
			
            Para k <- 1 Hasta 3 Hacer
                Escribir "Calificacion de la unidad ", k
                Leer calificaciones[i,j,k]
				
                totalGrupo <- totalGrupo + calificaciones[i,j,k]
            FinPara
        FinPara
    FinPara
	

    Para i <- 1 Hasta 4 Hacer
        sumaAlumno <- 0
		
        Para j <- 1 Hasta 8 Hacer
            Para k <- 1 Hasta 3 Hacer
                sumaAlumno <- sumaAlumno + calificaciones[i,j,k]
            FinPara
        FinPara
		
        promedioAlumno[i] <- sumaAlumno / 24
    FinPara
	
  
    Para j <- 1 Hasta 8 Hacer
        sumaMateria <- 0
		
        Para i <- 1 Hasta 4 Hacer
            Para k <- 1 Hasta 3 Hacer
                sumaMateria <- sumaMateria + calificaciones[i,j,k]
            FinPara
        FinPara
		
        promedioMateria[j] <- sumaMateria / 12
    FinPara
	
    
    Escribir "PROMEDIO POR ALUMNO"
	
    Para i <- 1 Hasta 4 Hacer
        Escribir "Alumno ", i, ": ", promedioAlumno[i]
    FinPara
	
    
    Escribir "PROMEDIO POR MATERIA"
	
    Para j <- 1 Hasta 8 Hacer
        Escribir materias[j], ": ", promedioMateria[j]
    FinPara
	
    
    Escribir "PROMEDIO GENERAL: ", totalGrupo / 96
	
FinAlgoritmo