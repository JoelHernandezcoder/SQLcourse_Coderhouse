-- Creado por Joel Hernández
 
/*------------------------------------------------------INSERCION DE DATOS-----------------------------------------------------------*/

USE leon_labs;

-- empleados
INSERT INTO empleados (legajo,nombre,apellido,sexo,domicilio,cant_hijos,vianda,area,categoria,linea_produccion,antiguedad,sueldo,fecha_ingreso) 
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
(20, 'Abigael', 'Sirey', 'F', '4776 Trailsway Terrace', 1, 'Celiacos', 'Micro-biología', 'Operario', 0, 17, 1000, '2006-01-22'),
(21, 'Audre', 'Rymour', 'F', '8 Heath Way', 3, 'Clásica', 'Mantenimiento', 'Operario', 0, 17, 1000, '2006-03-14'),
(22, 'Tiff', 'Sparrowe', 'F', '495 Di Loreto Pass', 0, 'Minuta', 'Micro-biología', 'Operario', 0, 17, 1000, '2006-04-01'),
(23, 'Stanford', 'Downing', 'M', '0071 Fremont Hill', 0, 'Clásica', 'Mantenimiento', 'Operario', 0, 17, 1000, '2006-04-04'),
(24, 'Roxane', 'Rignold', 'F', '96 Crest Line Avenue', 1, 'Clásica', 'Produccion', 'Operario', 4, 16, 1000, '2006-06-23'),
(25, 'Harman', 'Yair', 'M', '27 Anthes Lane', 1, 'Minuta', 'Produccion', 'Supervisor', 2, 16, 3000, '2006-11-23'),
(26, 'Vivianne', 'Riby', 'F', '420 Burrows Pass', 3, 'Clásica', 'Administración', 'Operario', 0, 16, 1000, '2007-03-29'),
(27, 'Fabe', 'Dahler', 'M', '6761 Sundown Way', 0, 'Minuta', 'Produccion', 'Operario', 2, 16, 1000, '2007-04-21'),
(28, 'Shelton', 'Lloyd', 'M', '3 Oak Parkway', 1, 'Minuta', 'Mantenimiento', 'Operario', 0, 15, 1000, '2008-01-17'),
(29, 'Benson', 'Doughton', 'M', '609 Annamark Road', 0, 'Minuta', 'Produccion', 'Operario', 3, 15, 1000, '2008-01-22'),
(30, 'Kristin', 'Lamb-shine', 'F', '2 Sycamore Court', 0, 'Clásica', 'Produccion', 'Operario', 3, 15, 1000, '2008-03-05'),
(31, 'Conrad', 'Thomsson', 'M', '083 Iowa Court', 1, 'Clásica', 'Administración', 'Operario', 0, 14, 1000, '2008-07-14'),
(32, 'Aili', 'Ginglell', 'F', '2797 Autumn Leaf Circle', 0, 'Clásica', 'Produccion', 'Operario', 2, 14, 1000, '2008-09-07'),
(33, 'Eleanor', 'Pebworth', 'F', '027 Dahle Point', 2, 'Clásica', 'Mantenimiento', 'Supervisor', 0, 14, 3000, '2008-11-21'),
(34, 'Tedd', 'Strutt', 'M', '8 Elmside Alley', 3, 'Clásica', 'Produccion', 'Operario', 3, 14, 1000, '2009-01-07'),
(35, 'Eugenie', 'Daouze', 'F', '5480 Garrison Court', 2, 'Minuta', 'Control de Calidad', 'Supervisor', 0, 14, 3000, '2009-02-07'),
(36, 'Aldin', 'Sikorsky', 'M', '0657 Lakeland Terrace', 0, 'Clásica', 'Produccion', 'Operario', 1, 14, 1000, '2009-03-04'),
(37, 'Emerson', 'Basili', 'M', '52 Rockefeller Road', 2, 'Celiacos', 'Micro-biología', 'Operario', 0, 14, 1000, '2009-04-04'),
(38, 'Guy', 'Jamot', 'M', '4 Vahlen Junction', 1, 'Clásica', 'Mantenimiento', 'Operario', 0, 13, 1000, '2009-07-06'),
(39, 'Cherin', 'Elliff', 'F', '455 Hoard Court', 1, 'Clásica', 'Produccion', 'Operario', 4, 13, 1000, '2009-08-16'),
(40, 'Lionello', 'Biswell', 'M', '11 Pawling Alley', 3, 'Vegetariana', 'Administración', 'Operario', 0, 13, 1000, '2010-01-13'),
(41, 'Kissie', 'Bythway', 'F', '33329 Drewry Parkway', 2, 'Clásica', 'Control de Calidad', 'Operario', 0, 12, 1000, '2010-06-27'),
(42, 'Mollie', 'MacCartney', 'F', '33 Holmberg Pass', 4, 'Clásica', 'Control de Calidad', 'Operario', 0, 12, 1000, '2010-07-23'),
(43, 'Donna', 'MacKissack', 'F', '01242 Melrose Road', 4, 'Minuta', 'Mantenimiento', 'Operario', 0, 12, 1000, '2010-09-08'),
(44, 'Maribelle', 'Schulz', 'F', '7048 Debra Road', 3, 'Minuta', 'Produccion', 'Supervisor', 1, 12, 3000, '2010-09-28'),
(45, 'Irita', 'Yesichev', 'F', '39 Canary Terrace', 2, 'Clásica', 'Control de Calidad', 'Operario', 0, 12, 1000, '2011-02-11'),
(46, 'Joye', 'Westerman', 'F', '8 Drewry Crossing', 1, 'Clásica', 'Control de Calidad', 'Operario', 0, 12, 1000, '2011-03-02'),
(47, 'Janey', 'Kreutzer', 'F', '87853 Prentice Avenue', 2, 'Vegetariana', 'Produccion', 'Operario', 2, 12, 1000, '2011-03-07'),
(48, 'De', 'Yglesia', 'F', '68 Starling Avenue', 0, 'Clásica', 'Micro-biología', 'Operario', 0, 11, 1000, '2011-06-13'),
(49, 'Nikolia', 'Buer', 'F', '76680 Ridgeview Circle', 1, 'Minuta', 'Administración', 'Operario', 0, 11, 1000, '2011-08-11'),
(50, 'Cristian', 'Weatherell', 'M', '537 Center Circle', 1, 'Clásica', 'Control de Calidad', 'Operario', 0, 11, 1000, '2012-03-04'),
(51, 'Leonid', 'Brando', 'M', '20 Shasta Plaza', 2, 'Vegetariana', 'Micro-biología', 'Operario', 0, 10, 1000, '2012-07-22'),
(52, 'Alphonse', 'Korejs', 'M', '79761 Mallory Crossing', 4, 'Clásica', 'Mantenimiento', 'Supervisor', 0, 10, 3000, '2013-05-19'),
(53, 'Darryl', 'Stent', 'F', '59 Hazelcrest Parkway', 2, 'Clásica', 'Control de Calidad', 'Operario', 0, 9, 500, '2013-06-14'),
(54, 'Klara', 'Donett', 'F', '8 Old Gate Pass', 1, 'Clásica', 'Mantenimiento', 'Operario', 0, 9, 500, '2013-07-18'),
(55, 'Eduino', 'Backes', 'M', '0504 3rd Place', 1, 'Clásica', 'Produccion', 'Operario', 3, 9, 500, '2013-09-29'),
(56, 'Vina', 'Francioli', 'F', '3060 High Crossing Alley', 2, 'Celiacos', 'Produccion', 'Operario', 1, 9, 500, '2014-03-18'),
(57, 'Mord', 'Denning', 'M', '958 Vera Junction', 1, 'Clásica', 'Produccion', 'Supervisor', 2, 8, 2000, '2014-10-16'),
(58, 'Aymer', 'Sinott', 'M', '20 Roxbury Crossing', 4, 'Clásica', 'Produccion', 'Operario', 2, 8, 500, '2014-12-24'),
(59, 'Harriot', 'McCurry', 'F', '4268 Monument Alley', 4, 'Vegetariana', 'Produccion', 'Operario', 4, 8, 500, '2015-01-08'),
(60, 'Milo', 'Fenne', 'M', '78 Canary Alley', 2, 'Vegetariana', 'Control de Calidad', 'Supervisor', 0, 8, 2000, '2015-02-08'),
(61, 'Domeniga', 'Ravenhill', 'F', '5407 Northland Street', 2, 'Clásica', 'Administración', 'Operario', 0, 8, 500, '2015-02-17'),
(62, 'Vi', 'Mongan', 'F', '88 Lake View Way', 2, 'Clásica', 'Produccion', 'Operario', 1, 8, 500, '2015-02-24'),
(63, 'Kain', 'McKinnon', 'M', '542 Logan Way', 4, 'Vegetariana', 'Produccion', 'Operario', 2, 8, 500, '2015-04-05'),
(64, 'Regan', 'Jandel', 'M', '9609 Blaine Alley', 1, 'Vegetariana', 'Produccion', 'Operario', 3, 8, 500, '2015-04-23'),
(65, 'Delora', 'Brosel', 'F', '48 Duke Center', 2, 'Celiacos', 'Produccion', 'Operario', 4, 7, 500, '2016-01-11'),
(66, 'Laurella', 'McGlade', 'F', '22771 Merchant Drive', 2, 'Minuta', 'Administración', 'Operario', 0, 6, 500, '2016-05-27'),
(67, 'Douglass', 'Harrap', 'M', '2 Lakewood Hill', 4, 'Minuta', 'Produccion', 'Operario', 4, 6, 500, '2016-06-09'),
(68, 'Julius', 'Cowen', 'M', '1 Merry Road', 0, 'Minuta', 'Administración', 'Operario', 0, 6, 500, '2016-06-28'),
(69, 'Ibby', 'Whether', 'F', '65142 Fair Oaks Pass', 3, 'Clásica', 'Control de Calidad', 'Operario', 0, 6, 500, '2016-06-29'),
(70, 'Jocko', 'Lecky', 'M', '5 Anderson Center', 2, 'Clásica', 'Micro-biología', 'Operario', 0, 6, 500, '2016-07-13'),
(71, 'Arliene', 'Pyer', 'F', '070 Graceland Circle', 2, 'Minuta', 'Produccion', 'Operario', 4, 6, 500, '2016-10-03'),
(72, 'Wilfrid', 'Mickleburgh', 'M', '171 Northport Crossing', 2, 'Vegetariana', 'Micro-biología', 'Operario', 0, 6, 500, '2017-01-06'),
(73, 'Rosanna', 'Bette', 'F', '671 Harbort Way', 1, 'Clásica', 'Produccion', 'Operario', 3, 6, 500, '2017-03-18'),
(74, 'Idalia', 'Casetta', 'F', '644 Maywood Junction', 2, 'Vegetariana', 'Produccion', 'Operario', 1, 6, 500, '2017-04-30'),
(75, 'Deerdre', 'Flemyng', 'F', '61 Arkansas Crossing', 2, 'Celiacos', 'Produccion', 'Operario', 2, 5, 500, '2017-08-19'),
(76, 'Matias', 'Sibbit', 'M', '8372 Commercial Crossing', 3, 'Celiacos', 'Produccion', 'Operario', 1, 5, 500, '2017-09-01'),
(77, 'Karalynn', 'McCarrison', 'F', '911 Namekagon Drive', 0, 'Minuta', 'Produccion', 'Operario', 4, 5, 500, '2017-10-22'),
(78, 'Felipe', 'Venediktov', 'M', '83101 Raven Way', 0, 'Clásica', 'Mantenimiento', 'Operario', 0, 5, 500, '2017-11-23'),
(79, 'Aurthur', 'Van den Hof', 'M', '562 Thompson Junction', 1, 'Clásica', 'Produccion', 'Operario', 4, 5, 500, '2017-12-19'),
(80, 'Augustine', 'Premble', 'M', '63 Porter Trail', 2, 'Minuta', 'Produccion', 'Operario', 4, 5, 500, '2018-02-15'),
(81, 'Bobinette', 'Vials', 'F', '71 Del Sol Street', 0, 'Clásica', 'Control de Calidad', 'Operario', 0, 4, 500, '2018-06-18'),
(82, 'Leonerd', 'Esson', 'M', '546 Gerald Road', 1, 'Clásica', 'Produccion', 'Operario', 4, 4, 500, '2018-09-17'),
(83, 'Alena', 'Knappe', 'F', '93865 Northland Circle', 4, 'Vegetariana', 'Administración', 'Operario', 0, 4, 500, '2018-12-07'),
(84, 'Alessandro', 'Maty', 'M', '3 Beilfuss Park', 0, 'Celiacos', 'Control de Calidad', 'Operario', 0, 4, 500, '2019-01-12'),
(85, 'Morgen', 'Brocklesby', 'F', '99384 Melrose Court', 0, 'Vegetariana', 'Micro-biología', 'Operario', 0, 4, 500, '2019-02-24'),
(86, 'Patrick', 'Teape', 'M', '674 Fairview Plaza', 2, 'Vegetariana', 'Mantenimiento', 'Supervisor', 0, 4, 2000, '2019-05-12'),
(87, 'Viviana', 'Doniso', 'F', '98 Clyde Gallagher Hill', 4, 'Clásica', 'Produccion', 'Supervisor', 2, 3, 2000, '2019-11-11'),
(88, 'Lenora', 'Tonks', 'F', '210 Bay Road', 0, 'Clásica', 'Produccion', 'Operario', 3, 3, 500, '2019-12-25'),
(89, 'Olag', 'Knibb', 'M', '45 Moose Alley', 0, 'Minuta', 'Produccion', 'Supervisor', 4, 3, 2000, '2020-01-17'),
(90, 'Philippe', 'Spon', 'F', '56707 Forest Point', 4, 'Minuta', 'Micro-biología', 'Operario', 0, 2, 500, '2020-05-22'),
(91, 'Land', 'Rollinshaw', 'M', '27 Judy Alley', 2, 'Clásica', 'Produccion', 'Operario', 3, 2, 500, '2020-08-11'),
(92, 'Lezlie', 'Breawood', 'F', '681 Debs Center', 1, 'Minuta', 'Produccion', 'Supervisor', 4, 2, 2000, '2021-01-22'),
(93, 'Gaylene', 'Mackriell', 'F', '08 Hintze Lane', 3, 'Clásica', 'Mantenimiento', 'Supervisor', 0, 2, 2000, '2021-02-21'),
(94, 'Sibel', 'Golt', 'F', '43 Morrow Way', 1, 'Minuta', 'Mantenimiento', 'Operario', 0, 1, 500, '2021-05-26'),
(95, 'Danie', 'Foxall', 'M', '45 Oriole Way', 2, 'Vegetariana', 'Produccion', 'Operario', 2, 1, 500, '2021-07-28'),
(96, 'Demeter', 'Haggerstone', 'F', '85 Sachtjen Center', 0, 'Minuta', 'Micro-biología', 'Operario', 0, 1, 500, '2021-09-10'),
(97, 'Chan', 'Stilgoe', 'M', '1026 Merry Court', 1, 'Clásica', 'Control de Calidad', 'Operario', 0, 1, 500, '2021-10-02'),
(98, 'Markus', 'Dorsey', 'M', '3 Granby Parkway', 4, 'Minuta', 'Micro-biología', 'Operario', 0, 0, 500, '2022-06-06'),
(99, 'Catherin', 'Dunsmuir', 'F', '919 Dexter Parkway', 0, 'Clásica', 'Produccion', 'Operario', 4, 0, 500, '2022-06-21'),
(100, 'Prue', 'Kiln', 'F', '8 Meadow Vale Circle', 1, 'Vegetariana', 'Mantenimiento', 'Operario', 0, 0, 500, '2022-08-14')
;

-- hijos
INSERT INTO hijos (legajo,nombre_hijo,edad_hijo)
VALUES
(1, 'Joby',9),
(1, 'Zack',5),
(2, 'Holt',11),
(2, 'Valentina',7),
(2, 'Robbin',6),
(4, 'Hal',19),
(5, 'Tommi',14),
(5, 'Cathleen',17),
(5, 'Thea',7),
(5, 'Albert',13),
(6, 'Happy',5),
(6, 'Adham',18),
(6, 'Melicent',13),
(7, 'Ev',18),
(7, 'Mabel',14),
(8, 'Wittie',21),
(8, 'Obed',5),
(8, 'Jud',14),
(8, 'Patrizius',13)
;

-- linea_produccion
INSERT INTO linea_produccion (id,linea_produccion,legajo)
VALUES
(1, 2, 1),
(2, 2, 2),
(3, 4, 3),
(4, 1, 4),
(5, 2, 5),
(6, 4, 6),
(7, 2, 8),
(8, 3, 10),
(9, 4, 13),
(10, 4, 14),
(11, 3, 17),
(12, 4, 24),
(13, 2, 25),
(14, 2, 27),
(15, 3, 29),
(16, 3, 30),
(17, 2, 32),
(18, 3, 34),
(19, 1, 36),
(20, 4, 39),
(21, 1, 44),
(22, 2, 47),
(23, 3, 55),
(24, 1, 56),
(25, 2, 57),
(26, 2, 58),
(27, 4, 59),
(28, 1, 62),
(29, 2, 63),
(30, 3, 64),
(31, 4, 65),
(32, 4, 67),
(33, 4, 71),
(34, 3, 73),
(35, 1, 74),
(36, 2, 75),
(37, 1, 76),
(38, 4, 77),
(39, 4, 79),
(40, 4, 80),
(41, 4, 82),
(42, 2, 87),
(43, 3, 88),
(44, 4, 89),
(45, 3, 91),
(46, 4, 92),
(47, 2, 95),
(48, 4, 99)
;

-- servicios
INSERT INTO servicios (id_servicio,tipo_servicio,costo_servicio,fecha_vencimiento)
VALUES
(1, 'Gas',500.00, '2020-01-10'),
(2, 'Luz',1000.00, '2020-01-10'),
(3, 'Agua',200.00, '2020-01-10'),
(4, 'N2 tubo de gas',80.00, '2020-01-10'),
(5, 'HCL tubo de gas',150.00, '2020-01-10'),
(6, 'Incineracion de residuos',200.00, '2020-01-10'),
(7, 'Gas',600.00, '2020-02-10'),
(8, 'Luz',1200.00, '2020-02-10'),
(9, 'Agua',200.00, '2020-02-10'),
(10, 'N2 tubo de gas',80.00, '2020-02-10'),
(11, 'H2 tubo de gas',150.00, '2020-02-10'),
(12, 'Incineracion de residuos',200.00, '2020-02-10'),
(13, DEFAULT,500.00, '2020-03-10'),
(14, 'Luz',100.00, '2020-03-10'),
(15, 'Agua',200.00, '2020-03-10'),
(16, 'N2 tubo de gas',80.00, '2020-03-10'),
(17, 'Incineracion de residuos',200.00, '2020-03-10'),
(18, 'Gas',700.00, '2020-04-10'),
(19, 'Luz',1100.00, '2020-04-10'),
(20, 'Agua',200.00, '2020-04-10'),
(21, 'N2 tubo de gas',80.00, '2020-04-10'),
(22, 'Incineracion de residuos',200.00, '2020-04-10')
;

-- servicios_op
INSERT INTO servicios_op (id,id_servicios_op,id_servicio)
VALUES
(1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,1,6),
(7,2,7),
(8,2,8),
(9,2,9),
(10,2,10),
(11,2,11),
(12,2,12),
(13,3,13),
(14,3,14),
(15,3,15),
(16,3,16),
(17,3,17),
(18,4,18),
(19,4,19),
(20,4,20),
(21,4,21),
(22,4,22)
;

-- deposito_insumos
INSERT INTO deposito_insumos (id_insumo,tipo_insumo,stock,precio_unitario,fecha_ingreso,fecha_vencimiento)
VALUES
(1, 'OCTINOXATE and TITANIUM DIOXIDE', 66, 856.91, '2020-03-08', '2023-04-06'),
(2, 'povidone-iodine', 56, 824.46, '2020-03-04', '2023-02-13'),
(3, 'Titanium Dioxide', 88, 877.35, '2020-03-10', '2023-03-04'),
(4, 'phenylephrine hcl', 48, 392.46, '2020-03-09', '2023-03-18'),
(5, 'erythromycin', 10, 840.58, '2020-02-13', '2023-04-21'),
(6, 'midodrine hydrochloride', 92, 475.04, '2020-03-06', '2023-03-14'),
(7, 'Antiperspirant and Deodorant', 90, 245.61, '2020-02-03', '2023-03-17'),
(8, 'House Fly', 95, 665.65, '2020-03-12', '2023-04-01'),
(9, 'Eucalyptus e fol. 5', 42, 220.14, '2020-03-15', '2023-02-16'),
(10, 'Alcohol', 45, 529.01, '2020-01-07', '2023-04-06'),
(11, 'Titanium Dioxide', 93, 624.52, '2020-01-14', '2023-03-11'),
(12, 'Etodolac', 59, 457.44, '2020-01-28', '2023-04-19'),
(13, 'quetiapine fumarate', 80, 938.38, '2020-03-29', '2023-04-04'),
(14, 'Pseudoephedrine Hydrochloride', 46, 715.07, '2020-01-21', '2023-04-05'),
(15, 'Dextromethorphan HBr', 52, 218.28, '2020-03-15', '2023-03-22'),
(16, 'thioridazine hydrochloride', 51, 706.64, '2020-01-17', '2023-04-04'),
(17, 'Ampicillin', 14, 590.03, '2020-02-13', '2023-03-28'),
(18, 'OXYGEN', 2, 994.27, '2020-03-14', '2023-02-09'),
(19, 'spironolactone', 57, 903.63, '2020-01-16', '2023-04-24'),
(20, 'Folliculinum, ', 77, 213.48, '2020-01-25', '2023-03-25')
;

-- orden_insumo
INSERT INTO orden_insumo (id_orden_insumo,id_insumo,cant_necesaria)
VALUES
(1, 3, 7.50),
(2, 20, 5.60),	
(3, 10, 4.70),
(4, 14, 5.55),
(5, 10, 6.51),
(6, 14, 10.66),
(7, 5, 7.22),
(8, 10, 8.70),
(9, 11, 10.70),
(10, 15, 7.80),
(11, 5, 6.50),
(12, 16, 8.12),
(13, 19, 5.50),
(14, 13, 1.52),
(15, 4, 6.63),
(16, 19, 4.12),
(17, 3, 4.42),
(18, 9, 8.47),
(19, 14, 10.92),
(20, 7, 9.20)
;

-- info_lote
INSERT INTO info_lote (lote,estado_lote,SA)
VALUES
('L-MED-101-22', 'Cuarentena', 1395241),
('L-MED-102-22', 'Aprobado', 2304058),
('L-MED-103-22', 'Aprobado', 8531405),
('L-MED-104-22', 'Aprobado', 3753005),
('L-MED-105-22', 'Aprobado', 2085320),
('L-MED-106-22', 'Aprobado', 4292923),
('L-MED-107-22', 'Aprobado', 8877788),
('L-MED-108-22', 'Aprobado', 7289009),
('L-MED-109-22', 'Aprobado', 4289669),
('L-MED-110-22', 'Aprobado', 4830798),
('L-MED-111-22', 'Aprobado', 3802254),
('L-MED-112-22', 'Aprobado', 3935427),
('L-MED-113-22', 'Aprobado', 8546276),
('L-MED-114-22', 'Aprobado', 5876155),
('L-MED-115-22', 'Aprobado', 1571052),
('L-MED-116-22', 'Aprobado', 5585866),
('L-MED-117-22', 'Aprobado', 8713508),
('L-MED-118-22', 'Aprobado', 9665757),
('L-MED-119-22', 'Aprobado', 1033655),
('L-MED-120-22', 'Aprobado', 3814052)
;

-- ventas
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

-- envios
INSERT INTO envios (id_envio, pais_destino, empresa_envio, costo_envio, fecha_entrega) 
VALUES 
(1, 'China', 'Oyondu', 2177.22, '2020-06-30'),
(2, 'Brazil', 'Mymm', 2958.14, '2020-03-12'),
(3, 'Czech Republic', 'Quaxo', 2841.13, '2020-06-06'),
(4, 'Venezuela', 'Youbridge', 2053.51, '2020-05-20'),
(5, 'Malaysia', 'Meembee', 1739.66, '2020-04-10'),
(6, 'Indonesia', 'Dablist', 2404.0, '2020-06-02'),
(7, 'Indonesia', 'Meemm', 2791.46, '2020-07-24'),
(8, 'Portugal', 'Npath', 2796.34, '2020-06-01'),
(9, 'Canada', 'Youspan', 2284.45, '2020-04-27'),
(10, 'United States', 'Cogibox', 2945.36, '2020-06-11'),
(11, 'Philippines', 'Livetube', 2463.35, '2020-06-20'),
(12, 'United States', 'Flashspan', 2150.92, '2020-06-09'),
(13, 'Indonesia', 'Divavu', 2628.07, '2020-07-23'),
(14, 'Guam', 'Avamba', 2246.53, '2020-07-08'),
(15, 'Poland', 'Babbleset', 1229.06, '2020-07-03'),
(16, 'France', 'Eadel', 1161.84, '2020-08-03'),
(17, 'Portugal', 'Gabtune', 2871.51, '2020-08-17'),
(18, 'China', 'Twitternation', 1071.67, '2020-09-20'),
(19, 'Venezuela', 'Quinu', 1782.82, '2020-09-19'),
(20, 'Mexico', 'Flipstorm', 2259.39, '2020-08-14')
;

-- fechas
INSERT INTO fechas (fecha_pactada,fecha_entrega,resultado)
VALUES
('2020-06-24', '2020-06-30', 'NO CUMPLIO'),
('2020-03-12', '2020-03-12', 'CUMPLIO'),
('2020-06-06', '2020-06-06', 'CUMPLIO'),
('2020-05-20', '2020-05-20', 'CUMPLIO'),
('2020-04-10', '2020-04-10', 'CUMPLIO'),
('2020-06-02', '2020-06-02', 'CUMPLIO'),
('2020-07-24', '2020-07-24', 'CUMPLIO'),
('2020-06-01', '2020-06-01', 'CUMPLIO'),
('2020-04-27', '2020-04-27', 'CUMPLIO'),
('2020-06-11', '2020-06-11', 'CUMPLIO'),
('2020-06-20', '2020-06-20', 'CUMPLIO'),
('2020-06-09', '2020-06-09', 'CUMPLIO'),
('2020-07-23', '2020-07-23', 'CUMPLIO'),
('2020-07-08', '2020-07-08', 'CUMPLIO'),
('2020-07-03', '2020-07-03', 'CUMPLIO'),
('2020-08-03', '2020-08-03', 'CUMPLIO'),
('2020-08-17', '2020-08-17', 'CUMPLIO'),
('2020-09-20', '2020-09-20', 'CUMPLIO'),
('2020-09-19', '2020-09-19', 'CUMPLIO'),
('2020-08-14', '2020-08-14', 'CUMPLIO')
;

-- orden_produccion
INSERT INTO orden_produccion (id_op,lote,id_orden_insumo,id_servicios_op,id_venta,id_envio,cant_supervisores,cant_operarios,cant_unidades,linea_produccion,fecha_emision,fecha_pactada)
VALUES
(1, 'L-MED-101-22', 1, 1, 1, 1, 6, 23, 4005, 3, '2020-01-01', '2020-06-24'),
(2, 'L-MED-102-22', 2, 1, 2, 2, 7, 27, 2564, 1, '2020-01-05', '2020-03-12'),
(3, 'L-MED-103-22', 3, 1, 3, 3, 10, 22, 4833, 1, '2020-01-10', '2020-06-06'),
(4, 'L-MED-104-22', 4, 1, 4, 4, 8, 21, 4271, 4, '2020-01-16', '2020-05-20'),
(5, 'L-MED-105-22', 5, 2, 5, 5, 10, 27, 4011, 4, '2020-02-01', '2020-04-10'),
(6, 'L-MED-106-22', 6, 2, 6, 6, 6, 23, 4311, 4, '2020-02-09', '2020-06-02'),
(7, 'L-MED-107-22', 7, 2, 7, 7, 9, 30, 3665, 1, '2020-02-13', '2020-07-24'),
(8, 'L-MED-108-22', 8, 2, 8, 8, 9, 30, 4669, 4, '2020-02-19', '2020-06-01'),
(9, 'L-MED-109-22', 9, 2, 9, 9, 10, 26, 2779, 1, '2020-02-27', '2020-04-27'),
(10, 'L-MED-110-22', 10, 3, 10, 10, 8, 22, 3877, 2, '2020-03-01', '2020-06-11'),
(11, 'L-MED-111-22', 11, 3, 11, 11, 10, 22, 2342, 4, '2020-03-04', '2020-06-20'),
(12, 'L-MED-112-22', 12, 3, 12, 12, 5, 22, 4044, 1, '2020-03-07', '2020-06-09'),
(13, 'L-MED-113-22', 13, 3, 13, 13, 9, 23, 2010, 3, '2020-03-15', '2020-07-23'),
(14, 'L-MED-114-22', 14, 3, 14, 14, 5, 20, 2953, 2, '2020-03-25', '2020-07-08'),
(15, 'L-MED-115-22', 15, 3, 15, 15, 7, 22, 3788, 1, '2020-03-27', '2020-07-03'),
(16, 'L-MED-116-22', 16, 4, 16, 16, 7, 22, 4650, 2, '2020-04-08', '2020-08-03'),
(17, 'L-MED-117-22', 17, 4, 17, 17, 5, 29, 3099, 3, '2020-04-12', '2020-08-17'),
(18, 'L-MED-118-22', 18, 4, 18, 18, 7, 23, 4435, 2, '2020-04-19', '2020-09-20'),
(19, 'L-MED-119-22', 19, 4, 19, 19, 8, 20, 4302, 4, '2020-04-23', '2020-09-19'),
(20, 'L-MED-120-22', 20, 4, 20, 20, 5, 26, 2584, 2, '2020-04-28', '2020-08-14')
;

/*----------------------------------------------------EJECUCION FUNCIONES------------------------------------------------------------*/

UPDATE deposito_insumos SET fecha_vencimiento = (
SELECT leon_labs.fecha_vencimiento_insumo(fecha_ingreso)
);

UPDATE fechas SET resultado = (
SELECT leon_labs.check_fechas(fecha_pactada,fecha_entrega)
);

-- End of file.