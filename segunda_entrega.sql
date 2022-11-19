-- Creado por Joel Hernández

CREATE DATABASE IF NOT EXISTS leon_labs;

USE leon_labs;

/*---------------TABLAS-----------------*/

-- Tabla: hijos
CREATE TABLE IF NOT EXISTS hijos (
    id_hijos INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    legajo INT NOT NULL,
    nombre_hijo VARCHAR(40) NOT NULL,
    edad_hijo INT NOT NULL
);

-- Tabla: empleados
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

-- Tabla: linea_produccion
CREATE TABLE IF NOT EXISTS linea_produccion (
    id INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    linea_produccion INT NOT NULL,
    legajo INT NOT NULL
);

-- Tabla: servicios
CREATE TABLE IF NOT EXISTS servicios (
    id_servicio INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    tipo_servicio VARCHAR(40) NULL DEFAULT 'Servicio?',
    costo_servicio DECIMAL(11 , 2 ) NOT NULL,
    fecha_vencimiento DATE NOT NULL
);

-- Tabla: servicios_op
CREATE TABLE IF NOT EXISTS servicios_op (
    id INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    id_servicios_op INT NOT NULL,
    id_servicio INT NOT NULL
);

-- Tabla: deposito_insumos
CREATE TABLE IF NOT EXISTS deposito_insumos (
    id_insumo INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    tipo_insumo VARCHAR(40) NOT NULL,
    stock DECIMAL(11 , 2 ) NOT NULL,
    precio_unitario DECIMAL(11 , 2 ) NOT NULL,
    fecha_ingreso DATE NOT NULL,
    fecha_vencimiento DATE NOT NULL
);

-- Tabla: orden_insumo 	
CREATE TABLE IF NOT EXISTS orden_insumo (
    id_orden_insumo INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    id_insumo INT NOT NULL,
    cant_necesaria DECIMAL(11 , 2 ) NOT NULL
);

-- Tabla: orden_produccion
CREATE TABLE IF NOT EXISTS orden_produccion (
    id_op INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    lote VARCHAR(12) NOT NULL,
    id_orden_insumo INT NOT NULL,
    id_servicios_op INT NOT NULL,
    id_venta INT NOT NULL,
    id_envio INT NOT NULL,
    cant_supervisores INT NOT NULL,
    cant_operarios INT NOT NULL,
    cant_unidades INT NOT NULL,
    linea_produccion INT NOT NULL,
    fecha_emision DATE NOT NULL,
    fecha_pactada DATE NOT NULL
);

-- Tabla: info_lote
CREATE TABLE IF NOT EXISTS info_lote (
    lote VARCHAR(12) NOT NULL PRIMARY KEY,
    estado_lote VARCHAR(10) NOT NULL,
    SA INT NOT NULL
);

-- Tabla: ventas
CREATE TABLE IF NOT EXISTS ventas (
    id_venta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    precio_venta DECIMAL(13 , 2 ) NOT NULL,
    cliente VARCHAR(40) NOT NULL
);

-- Tabla: envios
CREATE TABLE IF NOT EXISTS envios (
    id_envio INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    pais_destino VARCHAR(40) NOT NULL,
    empresa_envio VARCHAR(40) NOT NULL,
    costo_envio DECIMAL(11 , 2 ) NOT NULL,
    fecha_entrega DATE NOT NULL
);

-- Tabla: fechas
CREATE TABLE IF NOT EXISTS fechas (
    fecha_pactada DATE NOT NULL,
    fecha_entrega DATE NOT NULL,
    resultado VARCHAR(10) NOT NULL,
    CONSTRAINT PK_FECHAS PRIMARY KEY (fecha_pactada)
);

-- Tabla: log
CREATE TABLE IF NOT EXISTS log (
    legajo INT, 
    nombre VARCHAR(40), 
    apellido VARCHAR(40),
    evento VARCHAR(40),
    user VARCHAR(100),
    fecha_hora TIMESTAMP
);

/*---------------------------CLAVES FORÁNEAS----------------------------*/

-- Referencia: fk_hijos_empleados (tabla: hijos)
ALTER TABLE hijos 
ADD CONSTRAINT fk_hijos_empleados 
FOREIGN KEY fk_hijos_empleados (legajo)
REFERENCES empleados (legajo) 
ON DELETE CASCADE ON UPDATE CASCADE;

-- Referencia: fk_linea_produccion_empleados (tabla: linea_produccion)
ALTER TABLE linea_produccion 
ADD CONSTRAINT fk_linea_produccion_empleados 
FOREIGN KEY fk_linea_produccion_empleados (legajo)
REFERENCES empleados (legajo) 
ON DELETE CASCADE ON UPDATE CASCADE;
    
-- Referencia: fk_servicios_op_servicios (tabla: servicios_op)
ALTER TABLE servicios_op 
ADD CONSTRAINT fk_servicios_op_servicios 
FOREIGN KEY fk_servicios_op_servicios (id_servicio)
REFERENCES servicios (id_servicio) 
ON DELETE CASCADE ON UPDATE CASCADE;

-- Referencia: fk_orden_insumo_deposito_insumos (tabla: orden_insumos)
ALTER TABLE orden_insumo 
ADD CONSTRAINT fk_orden_insumo_deposito_insumos 
FOREIGN KEY fk_orden_insumo_deposito_insumos (id_insumo)
REFERENCES deposito_insumos (id_insumo) 
ON DELETE CASCADE ON UPDATE CASCADE;

-- Referencia: fk_orden_produccion_info_lote (tabla: orden_produccion)
ALTER TABLE orden_produccion 
ADD CONSTRAINT fk_orden_produccion_info_lote 
FOREIGN KEY fk_orden_produccion_info_lote (lote)
REFERENCES info_lote (lote) 
ON DELETE CASCADE ON UPDATE CASCADE;

-- Referencia: fk_orden_produccion_orden_insumo (tabla: ORDEN_PRODUCCION)
ALTER TABLE orden_produccion 
ADD CONSTRAINT fk_orden_produccion_orden_insumo 
FOREIGN KEY fk_orden_produccion_orden_insumo (id_orden_insumo)
REFERENCES orden_insumo (id_orden_insumo) 
ON DELETE CASCADE ON UPDATE CASCADE;
    
-- Referencia: fk_orden_produccion_servicios_op (tabla: orden_produccion)
ALTER TABLE orden_produccion 
ADD CONSTRAINT fk_orden_produccion_servicios_op 
FOREIGN KEY fk_orden_produccion_servicios_op (id_servicios_op)
REFERENCES servicios_op (id) 
ON DELETE CASCADE ON UPDATE CASCADE;

-- Referencia: fk_orden_produccion_ventas (tabla: orden_produccion)
ALTER TABLE orden_produccion 
ADD CONSTRAINT fk_orden_produccion_ventas 
FOREIGN KEY fk_orden_produccion_ventas (id_venta)
REFERENCES ventas (id_venta) 
ON DELETE CASCADE ON UPDATE CASCADE;

-- Referencia: fk_orden_produccion_envios (tabla: orden_produccion)
ALTER TABLE orden_produccion 
ADD CONSTRAINT fk_orden_produccion_envios 
FOREIGN KEY fk_orden_produccion_envios (id_envio)
REFERENCES envios (id_envio) 
ON DELETE CASCADE ON UPDATE CASCADE;
    
    -- Referencia: fk_orden_produccion_linea_produccion (tabla: orden_produccion)
ALTER TABLE orden_produccion 
ADD CONSTRAINT fk_orden_produccion_linea_produccion 
FOREIGN KEY fk_orden_produccion_linea_produccion (linea_produccion)
REFERENCES linea_produccion (id) 
ON DELETE CASCADE ON UPDATE CASCADE;

-- Referencia: fk_orden_produccion_fechas (tabla: orden_produccion)
ALTER TABLE orden_produccion 
ADD CONSTRAINT fk_orden_produccion_fechas 
FOREIGN KEY fk_orden_produccion_fechas (fecha_pactada)
REFERENCES fechas (fecha_pactada) 
ON DELETE CASCADE ON UPDATE CASCADE;
    
/*------------------VISTAS------------------*/

-- Vista de mujeres empleadas
CREATE OR REPLACE VIEW mujeres_empleadas AS
	SELECT CONCAT(nombre, ' ', apellido) nombre
	FROM empleados
	WHERE sexo = 'F';

-- Vista de hombres empleados
CREATE OR REPLACE VIEW hombres_empleados AS
    SELECT CONCAT(nombre, ' ', apellido) nombre
    FROM empleados
    WHERE sexo = 'M';

-- Cantidad de empleados hombres y mujeres
CREATE OR REPLACE VIEW equal AS
    SELECT (
		SELECT COUNT(*)
        FROM empleados
		WHERE sexo = 'M') hombres,
			(
			SELECT COUNT(*)
            FROM empleados
            WHERE sexo = 'F') mujeres;

-- Vista de todos los clientes
CREATE OR REPLACE VIEW clientes AS
    SELECT cliente
    FROM ventas;

-- Vista de los clientes y los países
CREATE OR REPLACE VIEW clientes_paises AS
    SELECT cliente AS cliente, pais_destino AS pais
    FROM leon_labs.envios AS e, leon_labs.ventas AS v
    WHERE e.id_envio = v.id_venta;

/*-----------------FUNCIONES------------------*/

-- Función que genera la fecha de vencimiento de cada insumo 
DROP function IF EXISTS fecha_vencimiento_insumo;
DELIMITER $$
CREATE FUNCTION fecha_vencimiento_insumo (fecha_ingreso DATE)
RETURNS DATE
READS SQL DATA
BEGIN
	DECLARE fecha_vencimiento DATE;
	SET fecha_vencimiento = DATE_ADD(fecha_ingreso, INTERVAL 6 MONTH);
RETURN fecha_vencimiento;
END$$

DELIMITER ;
;

-- Funcion que checkea si cumplio o no las fechas pactadas
DROP function IF EXISTS check_fechas;
DELIMITER $$
CREATE FUNCTION check_fechas (fecha_pactada DATE, fecha_entrega DATE)
RETURNS VARCHAR(10)
READS SQL DATA
BEGIN
	DECLARE v_check VARCHAR(10);
    IF DATEDIFF(fecha_pactada, fecha_entrega) = 0 
		THEN SET v_check = 'CUMPLIO';
    ELSE
		SET v_check = 'NO CUMPLIO';
    END IF;
RETURN v_check;
END$$

/*------------------STORED PROCEDURES--------------------*/

-- Stored procedure que muestra los hijos al ingresar legajo
-- IMPORTANTE!: Esta cargado la cantidad de hijos hasta el legajo 8 maximo.
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE hijos_x_legajo(IN v_legajo INT)
    READS SQL DATA
BEGIN
    SELECT nombre_hijo AS 'Hijo / Hijos'
    FROM hijos
    WHERE legajo = v_legajo; 
END$$
DELIMITER ;

-- Stored procedure que muestra los gastos de sueldos de los empleados segun la orden de produccion
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE gasto_sueldos(IN v_id_op INT)
    READS SQL DATA
BEGIN
    DECLARE v_cant_supervisores INT;
    DECLARE v_cant_operarios INT;
    DECLARE V_linea_produccion INT;
    DECLARE v_sueldo DECIMAL(11,2);
    
    SET v_cant_supervisores = (
		SELECT cant_supervisores 
        FROM orden_produccion  
        WHERE id_op = v_id_op
    );
    
       SET v_cant_operarios = (
		SELECT cant_operarios 
        FROM orden_produccion  
        WHERE id_op = v_id_op
    );
    
    SET v_linea_produccion = (
		SELECT linea_produccion 
        FROM orden_produccion
        WHERE id_op = v_id_op
    );
    
    SET v_sueldo = (SELECT SUM(sueldo) 
    FROM empleados 
    WHERE linea_produccion = v_linea_produccion
    LIMIT v_cant_supervisores) +
    (SELECT SUM(sueldo) 
    FROM empleados 
    WHERE linea_produccion = v_linea_produccion
    LIMIT v_cant_operarios);
    
    SELECT v_sueldo AS 'Gasto en Sueldos del Personal';
END$$
DELIMITER ;

/*---------------------TRIGGERS-----------------------*/

-- Registro despues de eliminar a un empleado
CREATE TRIGGER tr_agregar_empleado
AFTER INSERT ON empleados
FOR EACH ROW 
INSERT INTO log
VALUES (NEW.legajo, NEW.nombre, NEW.apellido, 'Crear', SESSION_USER(), CURRENT_TIMESTAMP());

-- Registro antes de eliminar a un empleado
CREATE TRIGGER tr_eliminar_empleado
BEFORE DELETE ON empleados
FOR EACH ROW 
INSERT INTO log
VALUES (OLD.legajo, OLD.nombre, OLD.apellido, 'Eliminar', SESSION_USER(), CURRENT_TIMESTAMP());

-- End of file.