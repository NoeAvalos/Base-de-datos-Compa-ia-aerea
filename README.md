# Base-de-datos-Compa-ia-aerea

Se desea almacenar la información de una compañía aérea en una base de datos relacional. La compañía aérea tiene tres recursos principales: aviones, pilotos y miembros de tripulación. De cada piloto se desea conocer su nombre, horas de vuelo, fecha desde la que es empleado. De los miembros de tripulación mantendremos su nombre, fecha desde la que es empleado.
# Pasos a seguir para realizar el diseño de la base de datos

## 1. Diseño conceptual ([Diseño conceptual .drawio.png](https://github.com/NoeAvalos/Base-de-datos-Compa-ia-aerea/blob/b3ae4c6ddbc483b8dc5783014c875d12f2229f42/Dise%C3%B1o%20conceptual%20.drawio.png))
 Como primer paso realizaremos un Modelo Entidad-Relacion, con el proposito de conocer como vamos a estructurar nuestros datos, las tablas que necesitaremos y las posibles relaciones.
## 2. Diagrama de tablas ([DER-COMPANIAAEREA.png](https://github.com/NoeAvalos/Base-de-datos-Compa-ia-aerea/blob/d99ee709d1fc5d5c25855a03d669e4799f018317/DER-COMPANIAAEREA.png))
En segunda instancia pasamos al modelo lógico definiendo las estructuras de las tablas mediante un Diagrama Entidad-Relacion.
## 3. Creación de la base de datos, las tablas y la carga de datos.([BBDDCompania-aerea.sql](https://github.com/NoeAvalos/Base-de-datos-Compa-ia-aerea/blob/5c78a6fbbb9274c8df182ed4b6a41d29c0ca872c/BBDDCompania-aerea.sql))
Comenzamos a crear las base de datos estructurada previamente y a cargar datos mediante codigo SQL

## 4. Consultas ([BBDDQueries.sql](https://github.com/NoeAvalos/Base-de-datos-Compa-ia-aerea/blob/09a551ca4a7cf9357808ce04139df68c9e50656f/BBDDQueries.sql))


✅ De cada vuelo se desea saber el avión en el que se ha hecho (del cual se conoce la mátricula, modelo, capacidad, año de producción) el piloto, cada uno de los miembros de la tripulación y cantidad de pasajeros.

✅Encuentra todos los vuelos (número de vuelo, hora de salida, origen, destino y cantidad de pasajeros) realizados por un piloto específico (por nombre o ID del piloto)

✅ Muestra una lista de pilotos con sus nombres y la cantidad total de horas de vuelo acumuladas por cada uno.

✅Encuentra todos los vuelos (número de vuelo, hora de salida, origen y destino) asignados a una tripulación específica por su nombre o ID de tripulación

✅ Muestra una lista de pilotos con sus nombres y la fecha en que ingresaron a la tripulación.

✅ Encuentra todos los pasajeros (nombre y apellido) que han reservado un vuelo específico (por número de vuelo).

✅ Encuentra la fecha de ingreso de un piloto específico a la tripulación, proporcionando su nombre.

✅ Calcula el promedio de pasajeros por destino y muestra los destinos en orden descendente según el promedio.

✅ Encuentra el número de vuelo que tuvo la mayor cantidad de pasajeros.

✅ Encuentra el destino con el mayor número de pasajeros y muestra el destino y el número de pasajeros.

✅ Encuentra los nombres de los grupos de tripulación asignados a vuelos que han tenido más pasajeros que la media de pasajeros en todos los vuelos.

✅ Muestra los nombres de los miembros de tripulación asignados a vuelos que tengan más de 200 pasajeros.

✅ Elimina todos los vuelos que tengan menos de 10 pasajeros.

✅ Cambia la hora de salida de un vuelo específico, proporcionando el número de vuelo.

✅ Calcula cuántos vuelos han tenido más de 100 pasajeros.

✅Crea una vista llamada "VistaPromedioPasajeros" que muestre la cantidad promedio de pasajeros por vuelo en la tabla "Vuelos"

✅Crea una vista llamada "VistaTripulacion" que muestre los nombres de los miembros de la tripulación y el número de vuelo al que están asignados. Utiliza las tablas "MiembrosTripulacion" y "Trip_Asignada"

