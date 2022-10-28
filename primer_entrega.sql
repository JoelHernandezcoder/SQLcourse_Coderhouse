-- Creado por Joel Hernández

CREATE SCHEMA `leon_labs` ;

USE `leon_labs`;
/*---------------TABLAS-----------------*/


-- Tabla: HIJOS
CREATE TABLE HIJOS (
    legajo int NOT NULL,
    nombre_hijo varchar (40) NOT NULL,
    apellido_hijo varchar(40) NOT NULL,
    edad_hijo int NOT NULL,
    CONSTRAINT PK_HIJOS PRIMARY KEY (legajo)
);

-- Tabla: EMPLEADOS
CREATE TABLE EMPLEADOS (
    legajo int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(40) NOT NULL,
    apellido varchar(40) NOT NULL,
    sexo varchar(1) NOT NULL,
    domicilio varchar(40) NOT NULL,
    cant_hijos int NULL,
    vianda varchar(1) NOT NULL,
    area varchar(40) NOT NULL,
    categoria varchar(1) NOT NULL,
    antiguedad int NOT NULL,
    sueldo decimal(11,2) NOT NULL,
    fecha_ingreso date NOT NULL
);

-- Tabla: GRUPO_PRODUCCION
CREATE TABLE GRUPO_PRODUCCION (
    id_grupo_produccion int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    legajo int NOT NULL
);


-- Tabla: SERVICIOS
CREATE TABLE SERVICIOS (
    id_servicio int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo_servicio varchar(40) NULL,
    costo_servicio decimal(11,2) NOT NULL,
    fecha_vencimiento date NOT NULL
);

-- Tabla: DEPOSITO_INSUMOS
CREATE TABLE DEPOSITO_INSUMOS (
    id_insumo int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo_insumo varchar(40) NOT NULL,
    stock decimal(11,2) NOT NULL,
    precio_unitario decimal(11,2) NOT NULL,
    fecha_ingreso date NOT NULL,
    fecha_vencimiento date NOT NULL
);


-- Tabla: ORDEN_INSUMO
CREATE TABLE ORDEN_INSUMOS (
    id_orden_insumos int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_insumo int NOT NULL,
    cant_necesaria decimal(11,2) NOT NULL
);

-- Tabla: ORDEN_PRODUCCION
CREATE TABLE ORDEN_PRODUCCION (
    id_op int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    lote varchar(12) NOT NULL,
    id_orden_insumos int NOT NULL,
    id_servicio int NOT NULL,
    id_venta int NOT NULL,
    id_envio int NOT NULL,
    cant_supervisores int NOT NULL,
    cant_operarios int NOT NULL,
    cant_unidades int NOT NULL,
	id_grupo_produccion int NOT NULL,
    fecha_pactada date NOT NULL,
	fecha_emision date NOT NULL
);

-- Tabla: INFO_LOTE
CREATE TABLE INFO_LOTE (
    lote varchar(12) NOT NULL,
    estado_lote varchar(10) NOT NULL,
    SA int NOT NULL,
    CONSTRAINT PK_INFO_LOTE PRIMARY KEY (lote)
);

-- Tabla: VENTAS
CREATE TABLE VENTAS (
    id_venta int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    precio_venta decimal(13,2) NOT NULL,
    cliente varchar(40) NOT NULL
);

-- Tabla: ENVIO
CREATE TABLE ENVIO (
    id_envio int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    pais_destino varchar(40) NOT NULL,
    empresa_envio varchar(40) NOT NULL,
    costo_envio decimal(11,2) NOT NULL,
    fecha_entrega date NOT NULL
);

-- Tabla: FECHAS
CREATE TABLE FECHAS (
    fecha_pactada date NOT NULL,
    fecha_entrega date NOT NULL,
    resultado varchar(10) NOT NULL,
    CONSTRAINT PK_FECHAS PRIMARY KEY (fecha_pactada)
);


/*---------------------------CLAVES FORÁNEAS----------------------------*/

-- Referencia: FK_GRUPO_PRODUCCION_EMPLEADOS (tabla: GRUPO_PRODUCCION)
ALTER TABLE GRUPO_PRODUCCION ADD CONSTRAINT FK_GRUPO_PRODUCCION_EMPLEADOS FOREIGN KEY FK_GRUPO_PRODUCCION_EMPLEADOS (legajo)
    REFERENCES EMPLEADOS (legajo);
    
-- Referencia: FK_ORDEN_PRODUCCION_GRUPO_PRODUCCION (tabla: ORDEN_PRODUCCION)
ALTER TABLE ORDEN_PRODUCCION ADD CONSTRAINT FK_ORDEN_PRODUCCION_GRUPO_PRODUCCION FOREIGN KEY FK_ORDEN_PRODUCCION_GRUPO_PRODUCCION (id_grupo_produccion)
    REFERENCES GRUPO_PRODUCCION (id_grupo_produccion);

-- Referencia: FK_ORDEN_INSUMOS_DEPOSITO_INSUMOS (tabla: ORDEN_INSUMOS)
ALTER TABLE ORDEN_INSUMOS ADD CONSTRAINT FK_ORDEN_INSUMOS_DEPOSITO_INSUMO FOREIGN KEY FK_ORDEN_INSUMOS_DEPOSITO_INSUMO (id_insumo)
    REFERENCES DEPOSITO_INSUMOS (id_insumo);

-- Referencia: FK_ORDEN_PRODUCCION_INFO_LOTE (tabla: ORDEN_PRODUCCION)
ALTER TABLE ORDEN_PRODUCCION ADD CONSTRAINT FK_ORDEN_PRODUCCION_INFO_LOTE FOREIGN KEY FK_ORDEN_PRODUCCION_INFO_LOTE (lote)
    REFERENCES INFO_LOTE (lote);

-- Referencia: FK_ORDEN_PRODUCCION_ORDEN_INSUMOS (tabla: ORDEN_PRODUCCION)
ALTER TABLE ORDEN_PRODUCCION ADD CONSTRAINT FK_ORDEN_PRODUCCION_ORDEN_INSUMOS FOREIGN KEY FK_ORDEN_PRODUCCION_ORDEN_INSUMOS (id_orden_insumos)
    REFERENCES ORDEN_INSUMOS (id_orden_insumos);

-- Referencia: FK_ORDEN_PRODUCCION_SERVICIOS (tabla: ORDEN_PRODUCCION)
ALTER TABLE ORDEN_PRODUCCION ADD CONSTRAINT FK_ORDEN_PRODUCCION_SERVICIOS FOREIGN KEY FK_ORDEN_PRODUCCION_SERVICIOS (id_servicio)
    REFERENCES SERVICIOS (id_servicio);

-- Referencia: FK_ORDEN_PRODUCCION_VENTAS (tabla: ORDEN_PRODUCCION)
ALTER TABLE ORDEN_PRODUCCION ADD CONSTRAINT FK_ORDEN_PRODUCCION_VENTAS FOREIGN KEY FK_ORDEN_PRODUCCION_VENTAS (id_venta)
    REFERENCES VENTAS (id_venta);

-- Referencia: FK_ORDEN_PRODUCCION_ENVIO (tabla: ORDEN_PRODUCCION)
ALTER TABLE ORDEN_PRODUCCION ADD CONSTRAINT FK_ORDEN_PRODUCCION_ENVIO FOREIGN KEY FK_ORDEN_PRODUCCION_ENVIO (id_envio)
    REFERENCES ENVIO (id_envio);

-- Referencia: FK_ORDEN_PRODUCCION_FECHAS (tabla: ORDEN_PRODUCCION)
ALTER TABLE ORDEN_PRODUCCION ADD CONSTRAINT FK_ORDEN_PRODUCCION_FECHAS FOREIGN KEY FK_ORDEN_PRODUCCION_FECHAS (fecha_pactada)
    REFERENCES FECHAS (fecha_pactada);

-- End of file.
