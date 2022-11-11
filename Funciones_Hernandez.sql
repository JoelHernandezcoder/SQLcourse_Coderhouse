-- Creado por Joel Hernández

USE `leon_labs`;

/*-------------------PRIMER FUNCION-------------------*/

DROP function IF EXISTS `fecha_vencimiento_insumo`;
DELIMITER $$
USE `leon_labs`$$
CREATE FUNCTION `fecha_vencimiento_insumo` (fecha_ingreso DATE)
RETURNS DATE
READS SQL DATA
BEGIN
	DECLARE fecha_vencimiento DATE;
	SET fecha_vencimiento = DATE_ADD(fecha_ingreso, INTERVAL 6 MONTH);
RETURN fecha_vencimiento;
END$$

DELIMITER ;
;
/*--------------EJECUTAR FUNCION---------------*/

UPDATE DEPOSITO_INSUMOS SET fecha_vencimiento = (
SELECT leon_labs.fecha_vencimiento_insumo(fecha_ingreso)
);

/*-----------------SEGUNDA FUNCION------------------*/

DROP function IF EXISTS `check_fechas`;
DELIMITER $$
USE `leon_labs`$$
CREATE FUNCTION `check_fechas` (fecha_pactada DATE, fecha_entrega DATE)
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

/*--------------EJECUTAR FUNCION---------------*/

UPDATE FECHAS SET resultado = (
SELECT leon_labs.check_fechas(fecha_pactada,fecha_entrega));

-- End of file.