-- Creado por Joel Hernández

USE leon_labs;

-- Creación de usuario de solo lectura de datos
CREATE USER 'read_user'@'localhost' IDENTIFIED WITH mysql_native_password BY pass123;
-- Asignación de permisos de solo lectura
GRANT SELECT ON leon_labs TO 'read_user'@'localhost';


-- Creación de usuario de lectura, inserción y modificacion de datos
CREATE USER 'rwu_user'@'localhost' IDENTIFIED WITH mysql_native_password BY pass123; 
-- Asignación de permisos de lectura, inserción y modificación de datos
GRANT SELECT, INSERT, UPDATE ON leon_labs TO 'rwu_user'@'localhost';

-- End of file.