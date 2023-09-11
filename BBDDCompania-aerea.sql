CREATE DATABASE COMPANIA_AEREA;

USE COMPANIA_AEREA;

CREATE TABLE Pilotos(
idPilotos INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(45),
apellido VARCHAR(45),
horas_vuelo DECIMAL,
fecha_ingreso DATE 
);

CREATE TABLE Aviones(
matricula VARCHAR(45) PRIMARY KEY,
modelo VARCHAR(45),
fecha_produccion DATE,
capacidad INT 
);

CREATE TABLE Vuelos (
numero_vuelo INT AUTO_INCREMENT PRIMARY KEY,
hora_salida TIME,
origen VARCHAR(45),
destino VARCHAR(45),
cantidad_pasajeros INT,
idPilotos INT,
matricula VARCHAR(45),
FOREIGN KEY (idPilotos) REFERENCES Pilotos(IdPilotos),
FOREIGN KEY (matricula) REFERENCES Aviones(matricula)
);

CREATE TABLE MiembrosTripulacion (
idTripulante INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(45),
apellido VARCHAR(45),
fecha_ingreso DATE
);

CREATE TABLE Trip_Asignada (
grupo_asignado INT AUTO_INCREMENT PRIMARY KEY,
cantidad INT,
idTripulante INT,
numero_vuelo INT,
FOREIGN KEY (idTripulante) REFERENCES MiembrosTripulacion(idTripulante),
FOREIGN KEY (numero_vuelo) REFERENCES Vuelos(numero_vuelo)
);


CREATE TABLE Pasajeros (
DNI VARCHAR(8) PRIMARY KEY,
nombre VARCHAR(45),
apellido VARCHAR(45),
numero_vuelo INT, 
FOREIGN KEY (numero_vuelo) REFERENCES Vuelos(numero_vuelo)
);


INSERT INTO Pilotos (nombre, apellido, horas_vuelo, fecha_ingreso) VALUES
    ('John', 'Smith', 5000, '2022-01-15'),
    ('Jane', 'Johnson', 4800, '2021-05-20'),
    ('Michael', 'Davis', 5200, '2020-09-10'),
    ('Emily', 'Wilson', 3200, '2021-11-25'),
    ('William', 'Martinez', 3500, '2019-07-05'),
    ('Olivia', 'Brown', 2800, '2022-03-30'),
    ('James', 'Miller', 4200, '2020-12-12'),
    ('Emma', 'Jones', 3900, '2018-08-18'),
    ('Benjamin', 'Garcia', 4400, '2020-02-04'),
    ('Sophia', 'Taylor', 3000, '2017-06-02'),
    ('Liam', 'Anderson', 3700, '2019-01-10'),
    ('Ava', 'Hernandez', 4200, '2020-03-25'),
    ('Lucas', 'Jackson', 4900, '2021-09-08'),
    ('Mia', 'Williams', 3400, '2018-11-17'),
    ('Ethan', 'Moore', 4600, '2019-04-09');

    
INSERT INTO Aviones (matricula, modelo, fecha_produccion, capacidad) VALUES
    ('A1234', 'Boeing 737', '2020-01-10', 150),
    ('B5678', 'Airbus A320', '2019-05-15', 160),
    ('C9012', 'Boeing 747', '2018-11-20', 400),
    ('D7890', 'Airbus A350', '2017-03-05', 220),
    ('E2468', 'Embraer E190', '2021-09-30', 100),
    ('F1357', 'Airbus A380', '2019-12-25', 550),
    ('G9876', 'Boeing 777', '2020-07-12', 300),
    ('H5432', 'Airbus A330', '2018-08-03', 250),
    ('I2109', 'Boeing 787', '2020-02-14', 240),
    ('J7890', 'Airbus A321', '2017-06-29', 190),
    ('K3579', 'Embraer E175', '2021-04-17', 80),
    ('L8642', 'Boeing 737', '2019-09-05', 150),
    ('M2468', 'Airbus A320', '2020-12-30', 160),
    ('N1357', 'Boeing 747', '2017-02-18', 400),
    ('O9876', 'Airbus A350', '2018-05-23', 220);

INSERT INTO Vuelos (hora_salida, origen, destino, cantidad_pasajeros, idPilotos, matricula) VALUES
('08:00:23', 'New York', 'Miami', 150, 3, 'A1234'),
('12:30:00', 'Los Angeles', 'Las Vegas', 160, 7, 'B5678'),
('15:45:00', 'Chicago', 'Houston', 400, 1, 'C9012'),
('09:15:00', 'Miami', 'New York', 220, 5, 'A1234'),
('13:00:00', 'Las Vegas', 'Los Angeles', 160, 11, 'B5678'),
('16:30:00', 'Houston', 'Chicago', 550, 2, 'C9012'),
('08:30:00', 'Boston', 'Dallas', 300, 6, 'D7890'),
('11:45:00', 'San Francisco', 'Seattle', 250, 14, 'E2468'),
('14:15:00', 'Denver', 'Phoenix', 240, 9, 'F1357'),
('10:00:00', 'Dallas', 'Boston', 190, 12, 'D7890'),
('14:30:00', 'Seattle', 'San Francisco', 80, 4, 'E2468'),
('17:00:00', 'Phoenix', 'Denver', 200, 4, 'F1357'),
('07:30:00', 'Atlanta', 'Miami', 15, 1, 'A1234'),
('00:00:00', 'Chicago', 'Los Angeles', 160, 7, 'B5678'),
('03:15:00', 'Los Angeles', 'New York', 100, 2, 'C9012'),
('20:45:00', 'Miami', 'Atlanta', 90, 5, 'D7890'),
('01:30:00', 'Dallas', 'San Francisco', 75, 11, 'E2468'),
('16:45:00', 'San Francisco', 'Dallas', 100, 3, 'F1357'),
('06:30:00', 'Phoenix', 'Denver', 89, 9, 'A1234'),
('11:30:00', 'Denver', 'Phoenix', 150, 12, 'B5678'),
('09:00:00', 'New York', 'Chicago', 270, 4, 'C9012'),
('12:45:00', 'Los Angeles', 'Miami', 26, 6, 'D7890'),
('14:00:00', 'Dallas', 'Boston', 95, 8, 'E2468'),
('07:15:00', 'San Francisco', 'Seattle', 11, 10, 'F1357'),
('10:30:00', 'Phoenix', 'Denver', 29, 15, 'A1234'),
('15:00:00', 'Chicago', 'Los Angeles', 75, 1, 'B5678'),
('08:15:00', 'Miami', 'New York', 40, 11, 'C9012'),
('11:00:00', 'Boston', 'Dallas', 600, 2, 'D7890'),
('12:45:00', 'Seattle', 'San Francisco', 700, 4, 'E2468'),
('17:15:00', 'Denver', 'Phoenix', 550, 7, 'F1357');


    
INSERT INTO MiembrosTripulacion (nombre, apellido, fecha_ingreso) VALUES
    ('John', 'Smith', '2022-05-15'),
    ('Jane', 'Johnson', '2021-03-20'),
    ('Michael', 'Davis', '2020-07-10'),
    ('Emily', 'Wilson', '2019-01-25'),
    ('William', 'Martinez', '2018-09-05'),
    ('Olivia', 'Brown', '2017-06-30'),
    ('James', 'Miller', '2016-08-12'),
    ('Emma', 'Jones', '2015-04-22'),
    ('Benjamin', 'Garcia', '2014-12-08'),
    ('Sophia', 'Taylor', '2013-10-04'),
    ('Liam', 'Anderson', '2012-09-16'),
    ('Ava', 'Hernandez', '2011-05-30'),
    ('Lucas', 'Jackson', '2010-03-18'),
    ('Mia', 'Williams', '2009-06-25'),
    ('Ethan', 'Moore', '2008-08-11'),
    ('Chloe', 'Davis', '2017-04-03'),
    ('Alexander', 'Johnson', '2016-01-22'),
    ('Isabella', 'Smith', '2015-11-07'),
    ('Daniel', 'Brown', '2014-09-14'),
    ('Olivia', 'Miller', '2013-02-25'),
    ('Mason', 'Williams', '2012-06-10'),
    ('Avery', 'Garcia', '2011-09-01'),
    ('Sophia', 'Moore', '2010-12-05'),
    ('Logan', 'Jones', '2009-08-20'),
    ('Harper', 'Taylor', '2008-07-03'),
    ('Elijah', 'Wilson', '2017-11-11'),
    ('Abigail', 'Jackson', '2016-10-08'),
    ('Aiden', 'Anderson', '2015-07-15'),
    ('Emily', 'Hernandez', '2014-04-12'),
    ('Ella', 'Davis', '2013-03-09');
    
INSERT INTO Pasajeros (DNI, nombre, apellido, numero_vuelo) VALUES
('12345670', 'Laura', 'González', 3),
('98765431', 'Carlos', 'Martínez', 11),
('56789022', 'Ana', 'Rodríguez', 5),
('34567803', 'María', 'López', 14),
('23456794', 'Pedro', 'Fernández', 8),
('87654325', 'Elena', 'Sánchez', 6),
('65432196', 'Javier', 'Pérez', 13),
('43210987', 'Isabel', 'Torres', 7),
('21098768', 'Andrés', 'Ramírez', 9),
('78901249', 'Carmen', 'Díaz', 1),
('56789010', 'Manuel', 'Gómez', 2),
('34567891', 'Luis', 'Hernández', 12),
('12345672', 'Marta', 'Jiménez', 4),
('98765413', 'Sara', 'Vargas', 10),
('76543204', 'Pablo', 'Morales', 15),
('54321095', 'Rosa', 'Castro', 7),
('32109886', 'Diego', 'Ortega', 1),
('10987659', 'Julia', 'Rojas', 14),
('98765437', 'Fernando', 'Ferrer', 9),
('76543208', 'Silvia', 'Santos', 4),
('54321099', 'Hugo', 'Blanco', 5),
('32109820', 'Eva', 'Navarro', 12),
('10987661', 'Antonio', 'Guerra', 6),
('98765448', 'Clara', 'Pardo', 3),
('76543219', 'Daniel', 'Molina', 8),
('54321092', 'Natalia', 'Vega', 2),
('32109823', 'Rafael', 'Campos', 10),
('10987629', 'Patricia', 'Gallardo', 13),
('98765454', 'Juan', 'Delgado', 11),
('76543235', 'Lucía', 'Rivas', 15),
('54321028', 'Ángel', 'Soto', 1),
('32109839', 'Ana', 'Moreno', 4),
('10987672', 'Alejandro', 'Lara', 6),
('98765467', 'Marina', 'Flores', 12),
('76543278', 'Joaquín', 'Castillo', 7),
('54321034', 'Cristina', 'Vila', 3),
('32109845', 'Adrián', 'Carmona', 9),
('10987683', 'Sofía', 'Méndez', 10),
('98765476', 'David', 'Cabrera', 2),
('76543287', 'Rocío', 'Cruz', 5),
('54321043', 'Roberto', 'Mendoza', 14),
('32109855', 'Celia', 'Reyes', 11),
('10987692', 'Alberto', 'León', 15),
('98765485', 'Alicia', 'Cortés', 8),
('76543296', 'Miguel', 'Aguilar', 7);

INSERT INTO Trip_Asignada(cantidad,idTripulante,numero_vuelo) VALUES
(10,1,5),
(10,1,2),
(10,5,14),
(10,16,7),
(10,8,6),
(10,7,9),
(10,22,10),
(10,19,13),
(10,25,11),
(10,30,2),
(10,13,12),
(10,2,1),
(10,2,3),
(10,27,15),
(10,30,8);


