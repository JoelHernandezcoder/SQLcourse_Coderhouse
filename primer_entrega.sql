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
    legajo int NOT NULL,
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
    fecha_ingreso date NOT NULL,
    CONSTRAINT PK_EMPLEADOS PRIMARY KEY (legajo)
);

-- Tabla: SERVICIOS
CREATE TABLE SERVICIOS (
    id_servicio int NOT NULL,
    tipo_servicio varchar(40) NULL,
    costo_servicio decimal(11,2) NOT NULL,
    fecha_vencimiento date NOT NULL,
    CONSTRAINT PK_SERVICIOS PRIMARY KEY (id_servicio)
);

-- Tabla: DEPOSITO_INSUMOS
CREATE TABLE DEPOSITO_INSUMOS (
    id_insumo int NOT NULL,
    tipo_insumo varchar(40) NOT NULL,
    stock decimal(11,2) NOT NULL,
    precio_unitario decimal(11,2) NOT NULL,
    fecha_ingreso date NOT NULL,
    fecha_vencimiento date NOT NULL,
    CONSTRAINT PK_DEPOSITO_INSUMOS PRIMARY KEY (id_insumo)
);


-- Tabla: ORDEN_INSUMO
CREATE TABLE ORDEN_INSUMOS (
    id_orden_insumos int NOT NULL,
    id_insumo int NOT NULL,
    cant_necesaria decimal(11,2) NOT NULL,
    CONSTRAINT PK_ORDEN_INSUMO PRIMARY KEY (id_orden_insumos)
);

-- Tabla: ORDEN_PRODUCCION
CREATE TABLE ORDEN_PRODUCCION (
    id_op int NOT NULL,
    lote varchar(12) NOT NULL,
    id_orden_insumos int NOT NULL,
    id_servicio int NOT NULL,
    id_venta int NOT NULL,
    id_envio int NOT NULL,
    cant_supervisores int NOT NULL,
    cant_operarios int NOT NULL,
    cant_unidades int NOT NULL,
    fecha_emision date NOT NULL,
    fecha_pactada date NOT NULL,
    CONSTRAINT PK_ORDEN_PRODUCCION PRIMARY KEY (id_op)
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
    id_venta int NOT NULL,
    precio_venta decimal(13,2) NOT NULL,
    cliente varchar(40) NOT NULL,
    CONSTRAINT PK_VENTAS PRIMARY KEY (id_venta)
);

-- Tabla: ENVIO
CREATE TABLE ENVIO (
    id_envio int NOT NULL,
    pais_destino varchar(40) NOT NULL,
    empresa_envio varchar(40) NOT NULL,
    costo_envio decimal(11,2) NOT NULL,
    fecha_entrega date NOT NULL,
    CONSTRAINT PK_ENVIO PRIMARY KEY (id_envio)
);

-- Tabla: FECHAS
CREATE TABLE FECHAS (
    fecha_pactada date NOT NULL,
    fecha_entrega date NOT NULL,
    resultado varchar(10) NOT NULL,
    CONSTRAINT PK_FECHAS PRIMARY KEY (fecha_pactada)
);


/*---------------------------CLAVES FORÁNEAS----------------------------*/


-- Referencia: FK_ORDEN_INSUMOS_DEPOSITO_INSUMOS (table: ORDEN_INSUMOS)
ALTER TABLE ORDEN_INSUMOS ADD CONSTRAINT FK_ORDEN_INSUMOS_DEPOSITO_INSUMO FOREIGN KEY FK_ORDEN_INSUMOS_DEPOSITO_INSUMO (id_insumo)
    REFERENCES DEPOSITO_INSUMOS (id_insumo);

-- Referencia: FK_ORDEN_PRODUCCION_INFO_LOTE (table: ORDEN_PRODUCCION)
ALTER TABLE ORDEN_PRODUCCION ADD CONSTRAINT FK_ORDEN_PRODUCCION_INFO_LOTE FOREIGN KEY FK_ORDEN_PRODUCCION_INFO_LOTE (lote)
    REFERENCES INFO_LOTE (lote);

-- Referencia: FK_ORDEN_PRODUCCION_ORDEN_INSUMOS (table: ORDEN_PRODUCCION)
ALTER TABLE ORDEN_PRODUCCION ADD CONSTRAINT FK_ORDEN_PRODUCCION_ORDEN_INSUMOS FOREIGN KEY FK_ORDEN_PRODUCCION_ORDEN_INSUMOS (id_orden_insumos)
    REFERENCES ORDEN_INSUMOS (id_orden_insumos);

-- Referencia: FK_ORDEN_PRODUCCION_SERVICIOS (table: ORDEN_PRODUCCION)
ALTER TABLE ORDEN_PRODUCCION ADD CONSTRAINT FK_ORDEN_PRODUCCION_SERVICIOS FOREIGN KEY FK_ORDEN_PRODUCCION_SERVICIOS (id_servicio)
    REFERENCES SERVICIOS (id_servicio);

-- Referencia: FK_ORDEN_PRODUCCION_VENTAS (table: ORDEN_PRODUCCION)
ALTER TABLE ORDEN_PRODUCCION ADD CONSTRAINT FK_ORDEN_PRODUCCION_VENTAS FOREIGN KEY FK_ORDEN_PRODUCCION_VENTAS (id_venta)
    REFERENCES VENTAS (id_venta);

-- Referencia: FK_ORDEN_PRODUCCION_ENVIO (table: ORDEN_PRODUCCION)
ALTER TABLE ORDEN_PRODUCCION ADD CONSTRAINT FK_ORDEN_PRODUCCION_ENVIO FOREIGN KEY FK_ORDEN_PRODUCCION_ENVIO (id_envio)
    REFERENCES ENVIO (id_envio);

-- Reference: FK_ORDEN_PRODUCCION_FECHAS (table: ORDEN_PRODUCCION)
ALTER TABLE ORDEN_PRODUCCION ADD CONSTRAINT FK_ORDEN_PRODUCCION_FECHAS FOREIGN KEY FK_ORDEN_PRODUCCION_FECHAS (fecha_pactada)
    REFERENCES FECHAS (fecha_pactada);

-- End of file.
