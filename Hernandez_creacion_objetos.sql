-- Creado por || JOELdev ||

-- #######################################
-- #	  1). Creación de esquema        #
-- #######################################

DROP SCHEMA IF EXISTS `leon_labs`;

CREATE SCHEMA `leon_labs`;

USE `leon_labs`;

-- #######################################
-- # 2). Creación de tablas del negocio  #
-- #######################################

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes`(
	id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_cliente VARCHAR (20) NOT NULL UNIQUE,
    pais_cliente VARCHAR (20) NOT NULL
);

DROP TABLE IF EXISTS `medicamentos`;
CREATE TABLE `medicamentos` (
	id_med INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_med VARCHAR (20) NOT NULL UNIQUE,
    precio_med DECIMAL (9, 2) NOT NULL,
    descripcion_med VARCHAR (150),
    foto_med VARCHAR (50) 
);

DROP TABLE IF EXISTS `ordenes_produccion`;
CREATE TABLE `ordenes_produccion` (
	id_op INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fecha_hora_emision TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS `empleados`;
CREATE TABLE `empleados` (
	legajo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR (20) NOT NULL,
    apellido VARCHAR (20) NOT NULL,
    sexo VARCHAR (1) NOT NULL,
    domicilio VARCHAR (50) NOT NULL,
    vianda VARCHAR (20) NOT NULL,
    categoria VARCHAR (1) NOT NULL,
    antiguedad INT NOT NULL,
    sueldo DECIMAL (9, 2) NOT NULL,
    fecha_ingreso DATE NOT NULL
);

DROP TABLE IF EXISTS `deposito_insumos`;
CREATE TABLE `deposito_insumos` (
	id_insumo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_insumo VARCHAR (50) NOT NULL UNIQUE,
    stock DECIMAL (11, 2) UNSIGNED NOT NULL,
    precio_unitario DECIMAL (11, 2) NOT NULL,
    proveedor VARCHAR (30) NOT NULL,
    fecha_ingreso DATE NOT NULL,
    fecha_vencimiento DATE NOT NULL
);

DROP TABLE IF EXISTS `ventas`;
CREATE TABLE `ventas` (
	id_venta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_op INT NOT NULL,
    id_med INT NOT NULL,
    unidades INT NOT NULL,
    sub_total DECIMAL (13, 2) NOT NULL,
    fecha_pactada DATE NOT NULL, 
	FOREIGN KEY (id_cliente) 
		REFERENCES clientes (id_cliente)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (id_op)
		REFERENCES ordenes_produccion (id_op)
        ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (id_med)
		REFERENCES medicamentos (id_med)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

DROP TABLE IF EXISTS `envios`;
CREATE TABLE `envios` (
	id_envio INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_venta INT NOT NULL,
    aerolinea VARCHAR (20) NOT NULL,
    costo_envio DECIMAL (9, 2) NOT NULL,
    fecha_entrega DATE NOT NULL,
    FOREIGN KEY (id_venta)
		REFERENCES ventas (id_venta)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

DROP TABLE IF EXISTS `servicios`;
CREATE TABLE `servicios` (
	id_servicios INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_op INT NOT NULL,
    tipo_servicio VARCHAR (20) NOT NULL,
    costo_servicio DECIMAL (9, 2) NOT NULL,
    fecha_vencimiento DATE NOT NULL,
    FOREIGN KEY (id_op)
		REFERENCES ordenes_produccion (id_op)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

DROP TABLE IF EXISTS `lineas_produccion`;
CREATE TABLE `lineas_produccion` (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    linea_produccion TINYINT NOT NULL,
    id_op INT NOT NULL,
    legajo INT NOT NULL,
	FOREIGN KEY (id_op)
		REFERENCES ordenes_produccion (id_op)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
	FOREIGN KEY (legajo)
		REFERENCES empleados (legajo)
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

DROP TABLE IF EXISTS `hijos`;
CREATE TABLE `hijos` (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    legajo INT NOT NULL,
    nombre_hijo VARCHAR (20) NOT NULL,
	apellido_hijo VARCHAR (20) NOT NULL,
    edad_hijo INT NOT NULL,
    FOREIGN KEY (legajo)
		REFERENCES empleados (legajo)
);

DROP TABLE IF EXISTS `ordenes_insumo`;
CREATE TABLE `ordenes_insumo` (
    id_op INT UNIQUE NOT NULL,
    id_insumo INT NOT NULL,
    cant_necesaria DECIMAL (11, 2) NOT NULL,
    FOREIGN KEY (id_op)
		REFERENCES ordenes_produccion (id_op)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (id_insumo)
		REFERENCES deposito_insumos (id_insumo)
);

-- #######################################
-- #  3). Creación de tablas de registro #
-- #######################################

DROP TABLE IF EXISTS `log_clientes`;
CREATE TABLE `log_clientes` (
	id_cliente INT NOT NULL,
    nombre_cl VARCHAR (20) NOT NULL,
    pais VARCHAR (20) NOT NULL,
    evento VARCHAR (20) NOT NULL,
    user VARCHAR (100),
    fecha_hora TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS `log_ventas`;
CREATE TABLE `log_ventas` (
	id_venta INT NOT NULL,
	id_cliente INT NOT NULL,
    id_med INT NOT NULL,
    evento VARCHAR (20) NOT NULL,
    user VARCHAR (100) NOT NULL,
    fecha_hora TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS `log_emp`;
CREATE TABLE `log_emp` (
	legajo INT NOT NULL,
	nombre VARCHAR (20) NOT NULL,
    apellido VARCHAR (20) NULL,
    evento VARCHAR (20) NOT NULL,
    user VARCHAR (100),
    fecha_hora TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS `log_med`;
CREATE TABLE `log_med` (
	id_med INT NOT NULL,
	nombre_med VARCHAR (20) NOT NULL,
    precio_med DECIMAL (9, 2) NOT NULL,
    evento VARCHAR (20) NOT NULL,
    user VARCHAR (100),
    fecha_hora TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- #######################################
-- #  4). Creación de tablas asistencia  #
-- #######################################

DROP TABLE IF EXISTS `random_clientes`;
CREATE TABLE `random_clientes` (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_cliente VARCHAR (20) NOT NULL,
    pais_cliente VARCHAR (20) NOT NULL,
	aerolinea VARCHAR (20) NOT NULL
);

DROP TABLE IF EXISTS `random_empleados`;
CREATE TABLE `random_empleados` (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_M VARCHAR (20) NOT NULL,
    nombre_F VARCHAR (20) NOT NULL,
    apellido VARCHAR (20) NOT NULL,
    domicilio VARCHAR (30) NOT NULL
); 

DROP TABLE IF EXISTS `random_med`;
CREATE TABLE `random_med` (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nombre_med VARCHAR (30) NOT NULL,
    descripcion VARCHAR (150) NOT NULL,
    foto_med VARCHAR (50) NOT NULL
);
    
DROP TABLE IF EXISTS `random_insumos`;
CREATE TABLE `random_insumos` (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nombre_insumo VARCHAR (30) NOT NULL,
    proveedor VARCHAR (30) NOT NULL
);

DROP TABLE IF EXISTS `resultados`;
CREATE TABLE `resultados` (
	id_venta INT NOT NULL,
    subtotal DECIMAL (13, 2) NOT NULL,
	sueldos DECIMAL (9, 2) NOT NULL,
    costos_servicios DECIMAL (9, 2) NOT NULL,
    costo_envio DECIMAL (9, 2) NOT NULL,
    ganancia DECIMAL (13,2),
    resultado VARCHAR (10) NOT NULL
); 

-- #######################################
-- #  4). Creación de Stored Procedures  #
-- #######################################

DELIMITER $$
-- code_doc: sp1 
DROP PROCEDURE IF EXISTS `sp_generar_empleado`$$
CREATE PROCEDURE `sp_generar_empleado` (IN fecha_ingreso_in DATE)
    READS SQL DATA
BEGIN
   
	DECLARE nombre_r VARCHAR (20);
    DECLARE apellido_r VARCHAR (20);
    DECLARE sexo_n INT;
    DECLARE sexo_r VARCHAR (1);
    DECLARE domicilio_r VARCHAR (50);
    DECLARE vianda_n INT;
    DECLARE vianda_r VARCHAR (20);
    DECLARE categoria_n INT;
    DECLARE categoria_r VARCHAR (1);
    DECLARE antiguedad_r INT;
    DECLARE sueldo_r DECIMAL (9, 2);
    DECLARE exito VARCHAR (80);

    SET sexo_n = (SELECT FLOOR( RAND()*2 + 1));
   	SET categoria_n = (SELECT FLOOR( RAND()*5 + 1));
	SET apellido_r = (SELECT apellido FROM random_empleados ORDER BY RAND() LIMIT 1); 
    SET domicilio_r = (SELECT domicilio FROM random_empleados ORDER BY RAND() LIMIT 1);
    SET vianda_n = (SELECT FLOOR( RAND()*3 + 1));
   	SET antiguedad_r = (SELECT TIMESTAMPDIFF(YEAR,fecha_ingreso_in,CURDATE()));
    SET exito = '[MENSAJE]: "Se ha creado satisfactoriamente un empleado cuyo legajo es" : ';
	
    -- SET nombre del empleado
   	CASE
	   	WHEN sexo_n = 1 THEN 
		   	SET sexo_r = 'M';
			SET nombre_r = (SELECT nombre_M FROM random_empleados ORDER BY RAND() LIMIT 1);
		ELSE 
			SET sexo_r = 'F';
			SET nombre_r = (SELECT nombre_F FROM random_empleados ORDER BY RAND() LIMIT 1);
	END CASE;
    
    -- SET vianda del empleado
   	CASE 
	   	WHEN vianda_n = 3 THEN SET vianda_r = 'Vegetariana';
	   	WHEN vianda_n = 2 THEN SET vianda_r = 'Express';
	   	ELSE SET vianda_r = 'Clásica';
	END CASE;
    
    -- SET categoria del empleado
   	IF categoria_n = 1 
		THEN SET categoria_r = 'S';  
   		ELSE SET categoria_r = 'O';
   	END IF;
    
    -- SET sueldo del empleado
   	IF categoria_r = 'S' THEN
   			CASE
   				WHEN antiguedad_r >= 15 THEN SET sueldo_r = 3500;
   				WHEN antiguedad_r BETWEEN 10 AND 14 THEN SET sueldo_r = 3000;
   				WHEN antiguedad_r BETWEEN 5 AND 9 THEN SET sueldo_r = 2500;
   				ELSE SET sueldo_r = 2000;
   			END CASE;
   	ELSEIF categoria_r = 'O' THEN
   			CASE
   				WHEN antiguedad_r >= 15 THEN SET sueldo_r = 2000;
   				WHEN antiguedad_r BETWEEN 10 AND 14 THEN SET sueldo_r = 1800;
   				WHEN antiguedad_r BETWEEN 5 AND 9 THEN SET sueldo_r = 1500;
   				ELSE SET sueldo_r = 1000;
   			END CASE;
   	ELSE SET sueldo_r = 1000;
   	END IF;
   
   -- Inserción de datos
   INSERT INTO	empleados
   VALUES
   (NULL,nombre_r,apellido_r,sexo_r,domicilio_r,vianda_r,categoria_r,antiguedad_r,sueldo_r,fecha_ingreso_in);
   
   -- Mensaje de exito
   SELECT CONCAT(exito,(SELECT legajo FROM empleados ORDER BY legajo DESC LIMIT 1)) AS MENSAJE;
   
END$$

DELIMITER $$
-- code_doc: sp2
DROP PROCEDURE IF EXISTS `sp_generar_10_empleados`$$
CREATE PROCEDURE `sp_generar_10_empleados` ()
    READS SQL DATA
BEGIN

	DECLARE exito VARCHAR (100);
    
    -- SET mensaje de exito
    SET exito = '[MENSAJE]: "Se han generado satisfactoriamente diez empleados"';
    
    -- Generamos los diez empleados que conformarán una línea de producción
    CALL sp_generar_empleado('2002-01-01');
    CALL sp_generar_empleado('2004-01-01');
    CALL sp_generar_empleado('2006-01-01');
    CALL sp_generar_empleado('2008-01-01');
    CALL sp_generar_empleado('2010-01-01');
    CALL sp_generar_empleado('2012-01-01');
    CALL sp_generar_empleado('2014-01-01');
    CALL sp_generar_empleado('2016-01-01');
    CALL sp_generar_empleado('2018-01-01');
    CALL sp_generar_empleado('2020-01-01');
    
    SELECT exito AS MENSAJE;

END $$
DELIMITER ;

DELIMITER $$
-- code_doc: sp3
DROP PROCEDURE IF EXISTS `sp_generar_insumo`$$
CREATE  PROCEDURE `sp_generar_insumo` ()
    READS SQL DATA
BEGIN

	DECLARE nombre_insumo_r VARCHAR (50);
    DECLARE stock_r DECIMAL (11, 2);
    DECLARE precio_u_r DECIMAL (11, 2);
	DECLARE proveedor_r VARCHAR (30);
    DECLARE fecha_ingreso DATE;
    DECLARE fecha_vencimiento_r DATE;
    DECLARE exito VARCHAR (80);
    
     -- SET mensaje de exito
    SET exito = '[MENSAJE]: "Se ha generado correctamente un insumo en nuestros depósitos"';
    
    -- SET nombre del insumo
    SET nombre_insumo_r = (SELECT nombre_insumo FROM random_insumos ORDER BY RAND() LIMIT 1);
    
    -- SET stock del insumo
    SET stock_r = (SELECT ROUND(((RAND() * (20 - 10)) + 10),2));
    
    -- SET precio unitario del insumo
    SET precio_u_r = (SELECT ROUND(((RAND() * (1000 - 10)) + 10),2));
    
    -- SET proveedor del insumo
    SET proveedor_r = (SELECT proveedor FROM random_insumos ORDER BY RAND() LIMIT 1);
    
    -- SET fecha de ingreso del insumo como fecha actual
    SET fecha_ingreso = (SELECT CURDATE());
    
    -- SET fecha de vencimiento del insumo (6 meses)
    SET fecha_vencimiento_r = (SELECT leon_labs.f_fecha_vencimiento_insumo(fecha_ingreso));
    
	-- Inserción de datos
    INSERT INTO deposito_insumos 
    VALUES 
    (NULL, nombre_insumo_r, stock_r, precio_u_r, proveedor_r, fecha_ingreso, fecha_vencimiento_r);
    
    -- Mensaje de exito
    SELECT exito AS MENSAJE;
    
END $$

DELIMITER ;

DELIMITER $$
-- code_doc: sp4
DROP PROCEDURE IF EXISTS `sp_generar_medicamento`$$
CREATE PROCEDURE `sp_generar_medicamento` ()
    READS SQL DATA
BEGIN
	
    DECLARE nombre_med_r VARCHAR (30);
    DECLARE precio_med_r DECIMAL (9, 2);
    DECLARE descripcion_r VARCHAR (150);
    DECLARE foto_med_r VARCHAR (50);
    DECLARE exito VARCHAR (60);
    
	-- SET mensaje de exito
    SET exito = '[MENSAJE]: "Se ha generado correctamente un medicamento"';
    
    -- SET nombre del medicamento
    SET nombre_med_r = (SELECT nombre_med FROM random_med ORDER BY RAND() LIMIT 1);
    
    -- SET precio del medicamento
    SET precio_med_r = (SELECT ROUND(((RAND() * (50 - 20)) + 20),2));
    
    -- SET descripción del medicamento
    SET descripcion_r = (SELECT descripcion FROM random_med ORDER BY RAND() LIMIT 1);
    
    -- SET url de la foto del medicamento
    SET foto_med_r = (SELECT foto_med FROM random_med ORDER BY RAND() LIMIT 1);
    
	-- Inserción de datos
    INSERT INTO medicamentos 
    VALUES 
    (NULL, nombre_med_r, precio_med_r, descripcion_r, foto_med_r);
    
    -- Mensaje de exito
    SELECT exito AS MENSAJE;

END $$

DELIMITER ;

DELIMITER $$
-- code_doc: sp5
DROP PROCEDURE IF EXISTS `sp_generar_cliente`$$
CREATE PROCEDURE `sp_generar_cliente` ()
    READS SQL DATA
BEGIN
	DECLARE nombre_cliente_r VARCHAR (20);
    DECLARE pais_cliente_r VARCHAR (20);
	DECLARE exito VARCHAR (70);
    
    -- SET mensaje de exito
    SET exito = '[MENSAJE]: "Se ha generado correctamente uno de nuestros cliente"';
    
    -- SET nombre del cliente
    SET nombre_cliente_r = (SELECT nombre_cliente FROM random_clientes ORDER BY RAND() LIMIT 1);
    
    -- SET país del cliente
    SET pais_cliente_r = (SELECT pais_cliente FROM random_clientes ORDER BY RAND() LIMIT 1);
    
	-- Inserción de datos
    INSERT INTO clientes 
    VALUES 
    (NULL, nombre_cliente_r, pais_cliente_r);
    
    -- Mensaje de exito
    SELECT exito AS MENSAJE;
END $$

DELIMITER ;

DELIMITER $$
-- code_doc: sp6
DROP PROCEDURE IF EXISTS `sp_generar_venta`$$
CREATE PROCEDURE `sp_generar_venta` ()
	READS SQL DATA 
    SQL SECURITY INVOKER
BEGIN

	DECLARE id_cliente_v INT;
    DECLARE id_op_v INT;
    DECLARE id_med_v INT;
    DECLARE unidades_v INT;
    DECLARE sub_total_v DECIMAL (13, 2);
    DECLARE fecha_pactada_v DATE;
    DECLARE stock_insumo DECIMAL (11, 2);
    DECLARE id_insumo_v INT;
    DECLARE cant_necesaria_o DECIMAL (11, 2);
    DECLARE bandera_error BOOLEAN DEFAULT FALSE;
    DECLARE mensaje VARCHAR (70);
    DECLARE exito VARCHAR (60);
    
    START TRANSACTION;
    
    -- SET mensaje de exito
    SET exito = '[MENSAJE]: "Se ha generado satisfactoriamente la venta id" : ';
    
    -- SET unidades requeridas en la venta
    SET unidades_v = (SELECT FLOOR( RAND()*(10000 - 1000)) + 1000);
    
    -- ||Inicio de verificación||
    
    -- SET del id del medicamento vendido
    SET id_med_v = (SELECT id_med FROM medicamentos ORDER BY RAND() LIMIT 1);
	IF id_med_v IS NULL THEN
		SET bandera_error = TRUE;
		SET mensaje = '[ERROR]: "Ingrese el listado de Medicamentos por favor"';
	END IF;
    
    -- SET del precio total de la venta
    SET sub_total_v = unidades_v * (SELECT precio_med FROM medicamentos WHERE id_med = id_med_v);
    IF sub_total_v IS NULL THEN
		SET bandera_error = TRUE;
        SET mensaje = '[ERROR]: "Ingrese el listado de Medicamentos por favor"';
	END IF;
    
    -- SET del cliente que realizó la venta
    SET id_cliente_v = (SELECT id_cliente FROM clientes ORDER BY RAND() LIMIT 1);
    IF id_cliente_v IS NULL THEN
        SET bandera_error = TRUE;
        SET mensaje = '[ERROR]: "Ingrese el listado de Clientes por favor"';
	END IF;
    
    -- ||Final de la verificación||
    -- si hasta aquí no falto ingresar algún dato anterior de la venta, continuamos
    
    IF bandera_error = FALSE THEN
        -- Generamos la orden de producción
        CALL sp_generar_orden_produccion ();
		
        -- SET del id de la orden de producción generada luego de la venta
		SET id_op_v = (SELECT id_op FROM ordenes_produccion ORDER BY id_op DESC LIMIT 1);
        
        -- Lamamos al sp que genera la línea de producción
        CALL sp_generar_linea_produccion(id_op_v);
                        
        -- Llamamos al sp que genera la orden de insumo
        CALL sp_generar_orden_insumo(id_op_v);
        
        -- Llamamos al sp que generá los servicios involucrados en la fabricación del lote
		CALL sp_generar_servicios(id_op_v);
		
        -- Descuento de la cantidad necesaria para la producción al stock del insumo
        SET id_insumo_v = (SELECT id_insumo FROM ordenes_insumo WHERE id_op = id_op_v);
		SET stock_insumo = (SELECT stock FROM deposito_insumos WHERE id_insumo = id_insumo_v);
		SET cant_necesaria_o = (SELECT cant_necesaria FROM ordenes_insumo WHERE id_op = id_op_v);
		
		IF stock_insumo - cant_necesaria_o > 0 THEN
			UPDATE deposito_insumos AS d
			INNER JOIN ordenes_insumo AS o 
			ON d.id_insumo = o.id_insumo AND id_op = id_op_v
			SET stock = stock - o.cant_necesaria;
		ELSE 
			SET bandera_error = TRUE;
			SET mensaje = '[ERROR]: "Stock insuficiente, por favor realize la compra del stock"';
		END IF;
		
        -- SET de la fecha pactada con el cliente para la entrega del lote
		SET fecha_pactada_v = (SELECT DATE_ADD(CURRENT_DATE(), INTERVAL 3 MONTH));
	END IF;
        
	IF bandera_error = TRUE THEN
		ROLLBACK;
		SELECT mensaje AS ERROR;
	ELSE
		-- Inserción de datos
        INSERT INTO ventas 
		VALUES
		(NULL, id_cliente_v, id_op_v, id_med_v, unidades_v, sub_total_v, fecha_pactada_v);
        COMMIT;
		-- Mensaje de exito
		SELECT CONCAT(exito, id_op_v) AS MENSAJE;
	END IF;
    
END $$

DELIMITER ;

DELIMITER $$
-- code_doc: sp7
DROP PROCEDURE IF EXISTS `sp_generar_orden_produccion`$$
CREATE PROCEDURE `sp_generar_orden_produccion` ()
	READS SQL DATA
BEGIN

	-- Generamos la orden de producción 
	INSERT INTO ordenes_produccion 
	VALUES
	(NULL, DEFAULT);

END $$

DELIMITER ;

DELIMITER $$ 
-- code_doc: sp8
DROP PROCEDURE IF EXISTS `sp_generar_linea_produccion`$$
CREATE PROCEDURE `sp_generar_linea_produccion` (IN id_op_in INT)
	READS SQL DATA
BEGIN
	
    DECLARE linea_produccion_r INT;
    DECLARE legajo_s INT;
    DECLARE mensaje VARCHAR (50);
    DECLARE exito VARCHAR (100);
    DECLARE x INT;
    DECLARE count_emp INT;
    START TRANSACTION;
    
    SET mensaje = '[ERROR]: "Error, ingrese al menos 10 empleados"';
    SET exito = '[MENSAJE]: "Se han ingresado correctamente los 10 empleados en la linea N°:"';
	SET x = 0;
    
    -- Seleccionamos una de nuestas tres lineas de producción de manera random
	SET linea_produccion_r = (SELECT FLOOR( RAND()*3 + 1));
    
    -- Hacemos un conteo de los empleados ingresados 
    SET count_emp = (SELECT COUNT(*) FROM empleados);
    
    CASE
    
		-- Verificamos si contamos con los 10 empleados necesarios
        
		WHEN count_emp < 10 THEN 
			ROLLBACK;
			SELECT mensaje AS ERROR;
            
		-- Si tenemos más de los empleados suficientes, seleccionamos diez 
        -- y los ubicamos de manera random en la linea de producción a utilizar
        
        WHEN count_emp > 10 THEN
			loop_emp:LOOP
				IF x > 9 THEN
					LEAVE loop_emp;
				ELSE
					SET legajo_s = (SELECT legajo FROM empleados ORDER BY RAND() LIMIT 1);
					INSERT INTO lineas_produccion
					VALUES
					(NULL, linea_produccion_r, id_op_in, legajo_s);
					SET x = x + 1;
					ITERATE loop_emp;
				END IF;
			END LOOP;
            COMMIT;
			SELECT exito AS MENSAJE;
            
		-- Si tenemos diez empleados los ubicamos en nuestra línea de producción
        
        ELSE
            loop_emp:LOOP
				IF x > 9 THEN
					LEAVE loop_emp;
				ELSE
					SET legajo_s = (SELECT legajo FROM empleados WHERE legajo = x + 1);
					INSERT INTO lineas_produccion
					VALUES
					(NULL, linea_produccion_r, id_op_in, legajo_s);
					SET x = x + 1;
					ITERATE loop_emp;
				END IF;
            END LOOP;
            
            -- Mensaje de exito
            COMMIT;
			SELECT CONCAT(exito,' ',linea_produccion_r) AS MENSAJE;
            
	END CASE;

END $$

DELIMITER ;

DELIMITER $$
-- code_doc: sp9
DROP PROCEDURE IF EXISTS `sp_generar_orden_insumo`$$
CREATE PROCEDURE `sp_generar_orden_insumo` (IN id_op_in INT)
	READS SQL DATA
BEGIN
	
    DECLARE id_insumo_r INT;
    DECLARE cant_necesaria_r DECIMAL (11, 2);
    DECLARE mensaje VARCHAR (50);
    
    -- SET id del insumo presente en la orden de insumo
    SET id_insumo_r = (SELECT id_insumo FROM deposito_insumos ORDER BY RAND() LIMIT 1);
    
    -- Verificación de insumos en el depósito
    IF NOT (id_insumo_r) THEN
		SET mensaje = '[ERROR]: "No se encuentran ingresados los Insumos en el Depósito de Insumos"';
		SELECT mensaje AS ERROR;
	END IF;
    
    -- SET de la cantidad necesaria de dicho insumo
    SET cant_necesaria_r = (SELECT ROUND(((RAND() * (5 - 1)) + 1),2));
    
    -- Inserción de datos
    INSERT INTO ordenes_insumo 
    VALUES
    (id_op_in, id_insumo_r, cant_necesaria_r);

END $$

DELIMITER ;

DELIMITER $$
-- code_doc: sp10
DROP PROCEDURE IF EXISTS `sp_generar_servicios`$$
CREATE PROCEDURE `sp_generar_servicios` (IN id_op_in INT)
	READS SQL DATA
BEGIN

    DECLARE fecha_vencimiento_r DATE;
    DECLARE mensaje VARCHAR (50);
    DECLARE exito VARCHAR (60);
    
     -- SET mensaje de exito
    SET exito = '[MENSAJE]: "Se han generado correctamente los servicios"';
    
    -- SET de la fecha de vencimiento de los cinco servicios generados
    SET fecha_vencimiento_r = (SELECT DATE_ADD(CURRENT_DATE(), INTERVAL 1 MONTH));
    
    -- Verificación del pago de los servicios
	IF (SELECT id_op FROM servicios WHERE id_op = id_op_in) THEN
		SET mensaje = '[ERROR]: "Este servicio ya se encuentra facturado en esta Orden de Producción"';
        SELECT mensaje AS MENSAJE;
	ELSE
		-- Inserción de datos
		INSERT INTO servicios
		VALUES
		(NULL, id_op_in, 'Luz', 500, fecha_vencimiento_r),
        (NULL, id_op_in, 'Gas', 400, fecha_vencimiento_r),
        (NULL, id_op_in, 'Agua', 300, fecha_vencimiento_r),
        (NULL, id_op_in, 'Tubo Nitrógeno', 200, fecha_vencimiento_r),
        (NULL, id_op_in, 'Tubo Hidrógeno', 200, fecha_vencimiento_r);
	END IF;
    
    SELECT exito AS MENSAJE;    

END $$

DELIMITER ;

DELIMITER $$ 
-- code_doc: sp11
DROP PROCEDURE IF EXISTS `sp_generar_envio`$$
CREATE PROCEDURE `sp_generar_envio` (IN id_venta_in INT)
	READS SQL DATA
BEGIN

	DECLARE aerolinea_r VARCHAR (20);
    DECLARE costo_envio_r DECIMAL (9, 2);
    DECLARE fecha_entrega_n INT;
    DECLARE fecha_entrega_r DATE;
    DECLARE fecha_pactada_v DATE;
    DECLARE exito VARCHAR (100);
    DECLARE mensaje VARCHAR (100);
	
    -- Mensaje de exito
    SET exito = '[MENSAJE]: "Se ha generado correctamente el envio de la venta N°:"';
    
    -- Seleccionamos la aerolínea que realizará el envío
    SET aerolinea_r = (SELECT aerolinea FROM random_clientes ORDER BY RAND() LIMIT 1);
    
    -- Generamos un costo de envío en dólares de manera random
    SET costo_envio_r = (SELECT ROUND(((RAND() * (3000 - 1000)) + 1000),2));
    
    -- Seleccionamos la fecha pactada de entrega con el cliente, en la tabla de ventas
    SET fecha_pactada_v = (SELECT fecha_pactada FROM ventas WHERE id_venta = id_venta_in);
    
    -- Generamos un numero random para calcular si se cumplió o no con la fecha de entrega 
    SET fecha_entrega_n = (SELECT FLOOR( RAND()*10 + 1));
	
    IF fecha_entrega_n = 10 THEN
		-- Aquí nos excedimos por un mes
        SET fecha_entrega_r = (SELECT DATE_ADD(fecha_pactada_v, INTERVAL 1 MONTH));
        
        -- Insertamos los datos del envío fallido
        INSERT INTO envios 
		VALUES 
		(NULL, id_venta_in, aerolinea_r, costo_envio_r, fecha_entrega_r);
        
		SET mensaje = '[IMPORTANTE]: "Lo sentimos, lamentablemente la entrega excedió la fecha pactada"';
        SELECT mensaje AS IMPORTANTE;
	ELSE 
		-- Aquí cumplimos con la fecha exacta !! EXITO !!
		SET fecha_entrega_r = fecha_pactada_v;
		
		INSERT INTO envios 
		VALUES 
		(NULL, id_venta_in, aerolinea_r, costo_envio_r, fecha_entrega_r);

		SELECT CONCAT(exito,' ',id_venta_in) AS MENSAJE;
	
    END IF;
END $$
DELIMITER ;

DELIMITER $$
-- code_doc: sp12
DROP PROCEDURE IF EXISTS `sp_generar_hijo`$$
CREATE PROCEDURE `sp_generar_hijo` (IN legajo_in INT)
    READS SQL DATA
BEGIN

	DECLARE nombre_hijo_r VARCHAR (20);
    DECLARE apellido_hijo_r VARCHAR (20);
    DECLARE edad_r INT;
    DECLARE sexo_n INT;
    DECLARE exito VARCHAR (100);
    
    -- SET mensaje de exito
    SET exito = '[MENSAJE]: "Se ha generado correctamente un hijo de uno de nuestros empleados"';
    
    SET edad_r = (SELECT FLOOR( RAND()*21 + 1));
    SET sexo_n = (SELECT FLOOR( RAND()*2 + 1));
    
    -- SET nombre del hijo
    IF sexo_n = 1 THEN
		SET nombre_hijo_r = (SELECT nombre_M FROM random_empleados ORDER BY RAND() LIMIT 1);
	ELSE 
		SET nombre_hijo_r = (SELECT nombre_F FROM random_empleados ORDER BY RAND() LIMIT 1);
	END IF;
    
    -- SET apellido de empleado
    IF (SELECT sexo FROM empleados WHERE legajo = legajo_in) = 'M' THEN
		SET apellido_hijo_r = (SELECT apellido FROM empleados WHERE legajo = legajo_in);
	ELSE 
		SET apellido_hijo_r = (SELECT apellido FROM random_empleados ORDER BY RAND() LIMIT 1);
	END IF;
    
    -- Inserción de datos
    INSERT INTO hijos 
    VALUES 
    (NULL, legajo_in, nombre_hijo_r, apellido_hijo_r, edad_r);
    
    -- Mensaje de exito
    SELECT exito AS MENSAJE;

END $$

DELIMITER ;

DELIMITER $$
-- code_doc: sp13
DROP PROCEDURE IF EXISTS `sp_ganancia_x_venta`$$
CREATE PROCEDURE `sp_ganancia_x_venta` (IN id_venta_in INT)
    READS SQL DATA
BEGIN
	
    -- Insertamos estos resultados en la tabla resultados
	INSERT INTO resultados
    VALUES 
	(
    -- N° de la venta 
    (id_venta_in),
    
    -- Subtotal de la venta
    (SELECT sub_total FROM ventas WHERE id_venta = id_venta_in),
    
    -- Costo de los sueldos involucrados en la producción
	((SELECT SUM(sueldo) FROM empleados AS e INNER JOIN lineas_produccion AS l 
    ON e.legajo = l.legajo WHERE l.id_op = id_venta_in)),
    
    -- Costo de los servicios utilizados en la producción
    (SELECT SUM(costo_servicio) FROM servicios WHERE id_op = id_venta_in),
    
    -- Costo de envío
    (SELECT costo_envio FROM envios WHERE id_venta = id_venta_in),
    
    -- Calculamos las ganancias de la venta, esto es la resta del subtotal menos los sueldos, los servicios de la producción y envío
    ((SELECT sub_total FROM ventas WHERE id_venta = id_venta_in) -
	(SELECT SUM(sueldo) FROM empleados AS e INNER JOIN lineas_produccion AS l ON e.legajo = l.legajo WHERE id_op = id_venta_in) -
	(SELECT SUM(costo_servicio) FROM servicios WHERE id_op = id_venta_in)-(SELECT costo_envio FROM envios WHERE id_venta = id_venta_in)),
    
    -- Utilizamos la funcion check de fechas para verificar si cumplio la entrega
    (SELECT f_check_fechas((SELECT fecha_entrega FROM envios WHERE id_venta = id_venta_in),
    (SELECT fecha_pactada FROM ventas WHERE id_venta = id_venta_in)))
    
    );

END $$

DELIMITER ;

-- #######################################
-- #      5). Creación de Funciones      #
-- #######################################

DELIMITER $$
-- code_doc: f1
DROP FUNCTION IF EXISTS `f_fecha_vencimiento_insumo`$$
CREATE FUNCTION `f_fecha_vencimiento_insumo` (fecha_ingreso DATE)
RETURNS DATE
READS SQL DATA
BEGIN

	DECLARE fecha_vencimiento DATE;
	
    SET fecha_vencimiento = DATE_ADD(fecha_ingreso, INTERVAL 6 MONTH);
	
    RETURN fecha_vencimiento;

END$$

DELIMITER ;

DELIMITER $$
-- code_doc: f2
DROP function IF EXISTS `f_check_fechas`$$
CREATE FUNCTION `f_check_fechas` (fecha_entrega DATE, fecha_pactada DATE)
RETURNS VARCHAR(10)
READS SQL DATA
BEGIN

	DECLARE v_check VARCHAR(10);
    
    IF DATEDIFF(fecha_entrega, fecha_pactada) > 0 
		THEN SET v_check = 'NO CUMPLIO';
    ELSE
		SET v_check = 'CUMPLIO';
    END IF;
    
	RETURN v_check;

END$$

DELIMITER ;

-- #######################################
-- #      6). Creación de Vistas         #
-- #######################################

-- code_doc: v1
CREATE OR REPLACE VIEW `v_madres_empleadas` AS
SELECT CONCAT(nombre, ' ', apellido) AS 'Nombre completo de la madre' 
FROM empleados 
INNER JOIN hijos 
ON empleados.legajo = hijos.legajo
WHERE sexo = 'F';

-- code_doc: v2
CREATE OR REPLACE VIEW `v_padres_empleados` AS
SELECT CONCAT(nombre, ' ', apellido) AS 'Nombre completo del padre'
FROM empleados 
INNER JOIN hijos 
ON empleados.legajo = hijos.legajo
WHERE sexo = 'M';

-- code_doc: v3
CREATE OR REPLACE VIEW `v_cliente_paises` AS
SELECT nombre_cliente AS Cliente, pais_cliente AS País
FROM clientes;

-- code_doc: v4
CREATE OR REPLACE VIEW `v_medicamentos` AS
SELECT nombre_med AS Medicamento, descripcion_med AS Descripción, precio_med AS Precio
FROM medicamentos;

-- code_doc: v5
CREATE OR REPLACE VIEW `v_ventas_x_medicamento` AS
SELECT nombre_med AS Medicamento, 
(SELECT COUNT(*) FROM ventas 
WHERE medicamentos.id_med = ventas.id_med) AS Cantidad
FROM medicamentos
ORDER BY Cantidad DESC;

-- code_doc: v6
CREATE OR REPLACE VIEW `v_ganancias_x_venta` AS
SELECT id_venta AS N°Venta, 
ganancia AS Ganancia
FROM resultados WHERE resultado = 'CUMPLIO'
ORDER BY id_venta ASC;

-- #######################################
-- #      7). Creación de Triggers       #
-- #######################################

-- Triggers para tabla clientes

-- code_doc: t1
CREATE TRIGGER `tr_agregar_cliente`
AFTER INSERT ON `clientes`
FOR EACH ROW 
INSERT INTO `log_clientes`
VALUES (NEW.id_cliente, NEW.nombre_cliente, NEW.pais_cliente, 'Crear', SESSION_USER(), CURRENT_TIMESTAMP());
-- code_doc: t2
CREATE TRIGGER `tr_eliminar_cliente`
BEFORE DELETE ON `clientes`
FOR EACH ROW 
INSERT INTO `log_clientes`
VALUES (OLD.id_cliente, OLD.nombre_cliente, OLD.pais_cliente, 'Eliminar', SESSION_USER(), CURRENT_TIMESTAMP());

-- Triggers para tabla empleados

-- code_doc: t3
CREATE TRIGGER `tr_agregar_empleado`
AFTER INSERT ON `empleados`
FOR EACH ROW 
INSERT INTO `log_emp`
VALUES (NEW.legajo, NEW.nombre, NEW.apellido, 'Crear', SESSION_USER(), CURRENT_TIMESTAMP());
-- code_doc: t4
CREATE TRIGGER `tr_eliminar_empleado`
BEFORE DELETE ON `empleados`
FOR EACH ROW 
INSERT INTO `log_emp`
VALUES (OLD.legajo, OLD.nombre, OLD.apellido, 'Eliminar', SESSION_USER(), CURRENT_TIMESTAMP());

-- Triggers para tabla medicamentos

-- code_doc: t5
CREATE TRIGGER `tr_agregar_medicamento`
AFTER INSERT ON `medicamentos`
FOR EACH ROW 
INSERT INTO `log_med`
VALUES (NEW.id_med, NEW.nombre_med, NEW.precio_med, 'Crear', SESSION_USER(), CURRENT_TIMESTAMP());
-- code_doc: t6
CREATE TRIGGER `tr_eliminar_medicamento`
BEFORE DELETE ON `medicamentos`
FOR EACH ROW 
INSERT INTO `log_med`
VALUES (OLD.id_med, OLD.nombre_med, OLD.precio_med, 'Eliminar', SESSION_USER(), CURRENT_TIMESTAMP());

-- Triggers para tabla ventas

-- code_doc: t7
CREATE TRIGGER `tr_agregar_venta`
AFTER INSERT ON `ventas`
FOR EACH ROW 
INSERT INTO `log_ventas`
VALUES (NEW.id_venta, NEW.id_cliente, NEW.id_med, 'Crear', SESSION_USER(), CURRENT_TIMESTAMP());
-- code_doc: t8
CREATE TRIGGER `tr_eliminar_venta`
BEFORE DELETE ON `ventas`
FOR EACH ROW 
INSERT INTO `log_ventas`
VALUES (OLD.id_venta, OLD.id_cliente, OLD.id_med, 'Eliminar', SESSION_USER(), CURRENT_TIMESTAMP());
-- End of file.