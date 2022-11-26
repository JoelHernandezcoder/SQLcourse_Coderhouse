-- Creado por Joel Hernández

CREATE SCHEMA IF NOT EXISTS leon_labs;  -- Creamos la BBDD

USE leon_labs; -- Utilizamos la BBDD

-- Creamos dos tablas a modo de prueba para el desafío

CREATE TABLE IF NOT EXISTS empleados (
    legajo INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL,
    apellido VARCHAR(40) NOT NULL,
    sexo VARCHAR(1) NOT NULL,
    domicilio VARCHAR(40) NOT NULL,
    cant_hijos INT NULL,
    vianda VARCHAR(40) NOT NULL,
    area VARCHAR(40) NOT NULL,
    categoria VARCHAR(40) NOT NULL,
    linea_produccion INT NULL DEFAULT 0,
    antiguedad INT NOT NULL,
    sueldo DECIMAL(11 , 2 ) NOT NULL,
    fecha_ingreso DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS ventas (
    id_venta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    precio_venta DECIMAL(13 , 2 ) NOT NULL,
    cliente VARCHAR(40) NOT NULL
);

-- Insertamos los registros en las tablas

INSERT INTO empleados (legajo, nombre, apellido, sexo, domicilio, cant_hijos, vianda, area, categoria, linea_produccion, antiguedad, sueldo, fecha_ingreso) 
 VALUES
(1, 'Fredrika', 'Heffernan', 'F', '8 Hansons Hill', 2, 'Clásica', 'Produccion', 'Operario', 2, 20, 1000, '2002-07-15'),
(2, 'Tildie', 'Langsdon', 'F', '7686 Harbort Street', 3, 'Clásica', 'Produccion', 'Operario', 2, 20, 1000, '2002-07-19'),
(3, 'Alexio', 'Gertz', 'M', '46352 Burning Wood Drive', 0, 'Minuta', 'Produccion', 'Operario', 4, 20, 1000, '2002-11-21'),
(4, 'Ferrel', 'Verick', 'M', '7816 Commercial Trail', 1, 'Clásica', 'Produccion', 'Operario', 1, 20, 1000, '2003-02-28'),
(5, 'Devinne', 'Panas', 'F', '943 1st Trail', 4, 'Clásica', 'Produccion', 'Operario', 2, 19, 1000, '2003-08-10'),
(6, 'Dave', 'Brennen', 'M', '6 Dahle Parkway', 3, 'Minuta', 'Produccion', 'Supervisor', 4, 19, 3000, '2003-12-09'),
(7, 'Deonne', 'Pleasants', 'F', '2 Arkansas Crossing', 2, 'Clásica', 'Administración', 'Operario', 0, 19, 1000, '2004-02-24'),
(8, 'Mikaela', 'Benns', 'F', '82337 Becker Junction', 4, 'Clásica', 'Produccion', 'Operario', 2, 19, 1000, '2004-02-29'),
(9, 'Antonie', 'Measures', 'F', '258 Hayes Street', 4, 'Clásica', 'Control de Calidad', 'Operario', 0, 19, 1000, '2004-03-08'),
(10, 'Dalt', 'Wellard', 'M', '58 Ridge Oak Way', 0, 'Minuta', 'Produccion', 'Operario', 3, 18, 1000, '2004-05-30'),
(11, 'Flinn', 'Minghi', 'M', '3 Thackeray Hill', 4, 'Clásica', 'Administración', 'Supervisor', 0, 18, 3000, '2004-06-06'),
(12, 'Mata', 'Reding', 'M', '5792 Sundown Circle', 2, 'Minuta', 'Administración', 'Operario', 0, 18, 1000, '2004-07-03'),
(13, 'Abie', 'Yggo', 'M', '1072 Huxley Junction', 2, 'Celiacos', 'Produccion', 'Supervisor', 4, 18, 3000, '2004-07-13'),
(14, 'Jemmie', 'Setchfield', 'F', '451 Blaine Drive', 1, 'Clásica', 'Produccion', 'Operario', 4, 18, 1000, '2004-08-06'),
(15, 'Gonzales', 'Arsmith', 'M', '567 Express Court', 0, 'Celiacos', 'Micro-biología', 'Supervisor', 0, 18, 3000, '2004-12-16'),
(16, 'Elonore', 'Eddis', 'F', '0 Westerfield Terrace', 4, 'Clásica', 'Control de Calidad', 'Operario', 0, 18, 1000, '2005-03-13'),
(17, 'Laural', 'Mayou', 'F', '686 Helena Park', 2, 'Clásica', 'Produccion', 'Operario', 3, 18, 1000, '2005-05-08'),
(18, 'Saundra', 'Fruin', 'M', '06 Fallview Terrace', 0, 'Clásica', 'Micro-biología', 'Operario', 0, 17, 1000, '2005-09-18'),
(19, 'Derry', 'Gourlie', 'M', '2 Vidon Way', 2, 'Vegetariana', 'Administración', 'Operario', 0, 17, 1000, '2005-11-12'),
(20, 'Abigael', 'Sirey', 'F', '4776 Trailsway Terrace', 1, 'Celiacos', 'Micro-biología', 'Operario', 0, 17, 1000, '2006-01-22')
;

INSERT INTO ventas (id_venta, precio_venta, cliente) 
VALUES 
(1, 2336822, 'Grimes-Monahan'),
(2, 7611270, 'Davis-Koelpin'),
(3, 9774759, 'Robel-VonRueden'),
(4, 8749173, 'Hessel, Berge and Greenholt'),
(5, 8891938, 'Runolfsson, Cruickshank and Krajcik'),
(6, 1044321, 'Barton LLC'),
(7, 8627090, 'Rodriguez, Prohaska and Rolfson'),
(8, 3510081, 'Harris-Hessel'),
(9, 4569263, 'Nicolas Group'),
(10, 7823729, 'Christiansen-Johns'),
(11, 2013875, 'Koepp-White'),
(12, 5680107, 'Pfannerstill, Ziemann and Von'),
(13, 1255605, 'Jacobson, Gleason and Christiansen'),
(14, 9185997, 'Jenkins Inc'),
(15, 2970667, 'Johnston and Sons'),
(16, 2250128, 'Rice and Sons'),
(17, 7963145, 'Fahey-Hermann'),
(18, 9054910, 'Friesen Group'),
(19, 8009166, 'Waters-Kohler'),
(20, 7571017, 'Dietrich, Fay and Lemke')
;

-- Eliminación + ROLLBACK
START TRANSACTION;
    DELETE FROM leon_labs.empleados
  WHERE legajo < 5 ;
  SELECT * FROM leon_labs.empleados; -- Consulto si se borraron los registros
ROLLBACK; -- Utilizo ROLLBACK para deshacer la eliminación
SELECT * FROM leon_labs.empleados; -- Verifico si aparecen los registros que elimine

-- Eliminación + COMMIT 
START TRANSACTION;
    DELETE FROM leon_labs.empleados
  WHERE legajo < 5 ;
  SELECT * FROM 
COMMIT; -- Utilizo COMMIT para confirmar la eliminación de los registros
ROLLBACK; -- En teoría, no deberia funcionar el ROLLBACK
  SELECT * FROM leon_labs.empleados; -- Verifico si se eliminaron los registros 

-- A continuacion insertaremos ocho registros al iniciar la transacción.
-- Agregaremos dos savepoint, uno luego de insertar cuatro registros y otro despues de insertar el octavo registro. 
-- Agregamos en una linea comentada la sentencia de eliminación del savepoint de los primeros cuatro registros.

START TRANSACTION;
    INSERT INTO ventas (id_venta, precio_venta, cliente) VALUES (21, 1783681, 'Novartis');
    INSERT INTO ventas (id_venta, precio_venta, cliente) VALUES (22, 8352681, 'Esadddf');
    INSERT INTO ventas (id_venta, precio_venta, cliente) VALUES (23, 1235681, 'Hasaff Rio');
    INSERT INTO ventas (id_venta, precio_venta, cliente) VALUES (24, 6816767, 'Thackeray');
SAVEPOINT reg4;
    INSERT INTO ventas (id_venta, precio_venta, cliente) VALUES (25, 7671234, 'Thackeray');
    INSERT INTO ventas (id_venta, precio_venta, cliente) VALUES (26, 9977565, 'Thackeray');
    INSERT INTO ventas (id_venta, precio_venta, cliente) VALUES (27, 6134767, 'Thackeray');
    INSERT INTO ventas (id_venta, precio_venta, cliente) VALUES (28, 4856467, 'Thackeray');
SAVEPOINT reg8;

#RELEASE SAVEPOINT reg4;
