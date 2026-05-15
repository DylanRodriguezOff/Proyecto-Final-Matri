#La matriz asignada por el profesor será modificada, pues se encontraron algunos
#errores, pues había una probabilidad mayor a 100% de un suceso, de tal manera
#que la matriz quedé así

NL <- c(.80,.10,.10)
CDMX <- c(.10,.75,.15)
otros <- c(.10,.15,.75)
Markoth <- matrix(c(NL,CDMX,otros)
                  ,nrow=3,
                  ncol=3)
Markoth

#los cambios realizados fueron a las columnas 1 y 3, para que ambas sumen 100
#se redujo la probabilidad de pasar de NL a CDMX un 5% y se aumento la de pasar 
#de otro estado a CDMX en un 5%, de esta manera sacamos los eigenvalores.
#El sistema en forma matricial queda de la siguiente manera

eigen(Markoth)

#Con los eigenvalores y eigenvectores dados, podemos plantear la solución general
#Dado que los eigenvalores que contienen .7 y .6 tenderan a 0 en el largo plazo,
#Nos centraremos en los eigenvectores que provienen del eigenvalor que da 1,
#Así tenemos que en el largo plazo será.

LP <- c(-.5773503,-.5773503,-.5773503)

#Para saber como se distribuye la población en LP, podemos sumar el eigenvector
#Y ver el porcentaje de población distribuido.

3*-.5773503

-.5773503/ -1.732051

#Por ende la población se distribuye 1/3=c, Si en cada estado hay 33 habitantes,
#para ver como se distribuyen(en el periodo 3), Podemos evaluar en la matriz 
#original, en el tiempo 3 y con los datos dados de, La siguiente manera:

Ejercicio5 <- c(33,33,33)

Markoth%*%Markoth%*%Markoth%*%Ejercicio5

#En el caso que sigue hay 100 habitantes en NL y 0 en los demas, podemos seguir
#La misma formula y definir:

Ejercicio6 <- c(100,0,0)

Markoth%*%Markoth%*%Markoth%*%Ejercicio6

#Para el ejercicio que sigue, ahora tenemos 100 habitantes en CDMX y 0 en los
#Demás, siguiendo la misma formula, llegaremos a la solución.

Ejercicio7 <- c(0,100,0)

Markoth%*%Markoth%*%Markoth%*%Ejercicio7

#Para el último ejercicio, tenemos una población de 100 en otros estados y de
#0 en NL y en CDMX, una vez más usaremos la formula antes vista.

Ejercicio8 <- c(0,0,100)

Markoth%*%Markoth%*%Markoth%*%Ejercicio8