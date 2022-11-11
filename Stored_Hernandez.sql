-- Creado por Joel Hernández

USE `leon_labs`;

/*------------------PRIMER STORED PROCEDURES--------------------*/
-- IMPORTANTE!: Esta cargado la cantidad de hijos hasta el legajo 15 maximo.

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `hijos_x_legajo`(IN v_legajo INT)
    READS SQL DATA
BEGIN
    SELECT nombre_hijo AS 'Hijo / Hijos'
    FROM HIJOS
    WHERE legajo = v_legajo; 
    
END$$
DELIMITER ;

/*------------------SEGUNDO STORED PROCEDURES--------------------*/

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `gasto_sueldos`(IN v_id_op INT)
    READS SQL DATA
BEGIN
    DECLARE v_cant_supervisores INT;
    DECLARE v_cant_operarios INT;
    DECLARE V_linea_produccion INT;
    DECLARE v_sueldo DECIMAL(11,2);
    
    SET v_cant_supervisores = (
		SELECT cant_supervisores 
        FROM ORDEN_PRODUCCION  
        WHERE id_op = v_id_op
    );
    
       SET v_cant_operarios = (
		SELECT cant_operarios 
        FROM ORDEN_PRODUCCION  
        WHERE id_op = v_id_op
    );
    
    SET v_linea_produccion = (
		SELECT linea_produccion 
        FROM ORDEN_PRODUCCION
        WHERE id_op = v_id_op
    );
    
    SET v_sueldo = (SELECT SUM(sueldo) 
    FROM EMPLEADOS 
    WHERE linea_produccion = v_linea_produccion
    LIMIT v_cant_supervisores) +
    (SELECT SUM(sueldo) 
    FROM EMPLEADOS 
    WHERE linea_produccion = v_linea_produccion
    LIMIT v_cant_operarios);
    
    SELECT v_sueldo AS 'Gasto en Sueldos del Personal';
    
END$$
DELIMITER ;

-- End of file.