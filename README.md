# Media vs Mediana y COVID-19



Vamos a comparar la media (o premedio) con la mediana para la población de CABA que dio positivo el test durante el mes de abril de 2021.

Los datos crudos pueden ser accedidos en el siguiente link:

https://data.buenosaires.gob.ar/dataset/casos-covid-19/archivo/df05ae09-975f-40fc-9011-c5ccff0024ab

Primero filtramos los datos para quedarnos sólo con la población que dio positivo el test durante el mes de abril.

Luego podemos hacer un histograma para tener un idea de cómo se distribuyen los datos.

![](histo1.png)



Ahora podemos calcular los estádisticos de resumen para la población. En la tabla hay mucha info nosotros nos centraremos sólo en la variable edad.



Hay 136422 pacientes que dieron positivo durante abril en CABA.

La media es de 39 años y la mediana es de 37 añós.

Aunque el valor que separa la mitad más baja de la distribución de la más alta es estricatamente la mediana, puede verse que para describir la distirbución etárea usar la media no es una mala aproximación en absoluto.

Podemos calcular cuántos valores hay por encima de la media y cuántos por debajos.

Hay 62337 datos mayores que 39 y 71252 datos inferiores.

Si dejéramos que la media parte los valores a la mitas estáriamos cometiendo un error menor al 10%.



Dada la distribución podemos asumir normalidad (pueden hacer un Q-Q plot para comprobar esto), entonces la media y la mediana debería estár bastante cerca una de la otra. 

Para nuestro ejemplo:

 ![](histo2.png)

En rojo está indicada la media (promedio) y en azul la mediana.



