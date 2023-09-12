USE compania_aerea;

#De cada vuelo se desea saber el avión en el que se ha hecho (del cual se conoce la mátricula, modelo, capacidad, año de producción)
#el piloto, cada uno de los miembros de la tripulación y cantidad de pasajeros.

SELECT p.nombre,p.apellido,v.numero_vuelo, a.matricula, a.modelo, a.fecha_produccion, v.cantidad_pasajeros 
FROM Vuelos v
INNER JOIN Aviones a
ON  v.matricula = a.matricula
INNER JOIN Pilotos p
ON p.idPilotos = v.idPilotos;

#Encuentra todos los vuelos (número de vuelo, hora de salida, origen, destino y cantidad de pasajeros) 
#realizados por un piloto específico (por nombre o ID del piloto).

SELECT numero_vuelo,hora_salida,origen,destino,cantidad_pasajeros
FROM Vuelos
WHERE idPilotos = 5;

# Muestra una lista de pilotos con sus nombres y la cantidad total de horas de vuelo acumuladas por cada uno.

SELECT nombre,apellido, horas_vuelo
FROM pilotos

#Encuentra todos los vuelos (número de vuelo, hora de salida, origen y destino) 
#asignados a una tripulación específica por su nombre o ID de tripulación

SELECT mt.nombre,mt.apellido,v.numero_vuelo, v.hora_salida,v.origen,v.destino  
FROM Vuelos v
LEFT JOIN Trip_asignada t
ON  v.numero_vuelo = t.numero_vuelo
INNER JOIN MiembrosTripulacion mt
ON mt.idTripulante = t.idTripulante
WHERE mt.idTripulante = 13;

#Muestra una lista de pilotos con sus nombres y la fecha en que ingresaron a la tripulación.

SELECT nombre,apellido, fecha_ingreso
FROM Pilotos;

#Encuentra todos los pasajeros (nombre y apellido) que han reservado un vuelo específico (por número de vuelo).

SELECT nombre,apellido 
FROM Pasajeros
WHERE numero_vuelo = 8;

#Encuentra la fecha de ingreso de un piloto específico a la tripulación.
SELECT fecha_ingreso
FROM Pilotos
WHERE nombre = 'Emily';

#Calcula el promedio de pasajeros por destino y muestra los destinos en orden descendente según el promedio.

SELECT ROUND(AVG(cantidad_pasajeros),2) as promedio_pasajeros, destino
FROM Vuelos
GROUP BY destino
ORDER BY destino DESC;

# Encuentra el número de vuelo que tuvo la mayor cantidad de pasajeros.

SELECT numero_vuelo, MAX(cantidad_pasajeros) as max_vuelo 
FROM Vuelos
GROUP BY numero_vuelo
ORDER BY max_vuelo DESC LIMIT 1;

#Encuentra el destino con el mayor número de pasajeros y muestra el destino y el número de pasajeros.

SELECT destino, cantidad_pasajeros
FROM Vuelos
WHERE cantidad_pasajeros = (SELECT MAX(cantidad_pasajeros) FROM Vuelos);

#Encuentra los nombres de los grupos de tripulación asignados a vuelos 
#que han tenido más pasajeros que la media de pasajeros en todos los vuelos.

SELECT mt.nombre,mt.apellido, v.cantidad_pasajeros
FROM MiembrosTripulacion mt
INNER JOIN  Trip_Asignada t
ON mt.idTripulante = t.idTripulante
INNER JOIN Vuelos v
ON t.numero_vuelo = v.numero_vuelo
WHERE v.cantidad_pasajeros > (SELECT ROUND(AVG(cantidad_pasajeros),2) FROM Vuelos);


#Muestra los nombres de los miembros de tripulación asignados a vuelos que tengan más de 200 pasajeros.
SELECT mt.nombre,mt.apellido, v.cantidad_pasajeros
FROM MiembrosTripulacion mt
INNER JOIN  Trip_Asignada t
ON mt.idTripulante = t.idTripulante
INNER JOIN Vuelos v
ON t.numero_vuelo = v.numero_vuelo
WHERE v.cantidad_pasajeros > 200;

#Elimina todos los vuelos que tengan menos de 10 pasajeros.

DELETE FROM Vuelos
WHERE cantidad_pasajeros < 10;

#Cambia la hora de salida de un vuelo específico (proporciona el número de vuelo)

UPDATE Vuelos SET hora_salida = '19:15:16'
WHERE numero_vuelo = 8;

#Cuántos vuelos han tenido más de 100 pasajeros.

SELECT COUNT(numero_vuelo) 
FROM Vuelos
WHERE cantidad_pasajeros > 100;
