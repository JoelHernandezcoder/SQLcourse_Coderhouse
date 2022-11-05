 -- Creado por Joel Hernández
 
USE leon_labs;

/*-------------------VISTAS--------------------*/

CREATE OR REPLACE VIEW MUJERES_EMPLEADOS AS
    SELECT 
        CONCAT(nombre, ' ', apellido) nombre
    FROM
        EMPLEADOS
    WHERE
        sexo = 'F';

-- 2
CREATE OR REPLACE VIEW HOMBRES_EMPLEADOS AS
    SELECT 
        CONCAT(nombre, ' ', apellido) nombre
    FROM
        EMPLEADOS
    WHERE
        sexo = 'M';

-- 3
CREATE OR REPLACE VIEW EQUAL AS
    SELECT 
        (SELECT 
                COUNT(*)
            FROM
                EMPLEADOS
            WHERE
                sexo = 'M') hombres,
        (SELECT 
                COUNT(*)
            FROM
                EMPLEADOS
            WHERE
                sexo = 'F') mujeres;

-- 4
CREATE OR REPLACE VIEW CLIENTES AS
    SELECT 
        cliente
    FROM
        VENTAS;

-- 5
CREATE OR REPLACE VIEW CLIENTES_PAISES AS
    SELECT 
        cliente AS cliente, pais_destino AS pais
    FROM
        leon_labs.ENVIOS AS e,
        leon_labs.VENTAS AS v
    WHERE
        e.id_envio = v.id_venta;

-- End of file.