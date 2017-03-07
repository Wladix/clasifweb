create database clasificados;

use clasificados;

--Tabla activa hasta el momento--
CREATE TABLE `clasificados`.`vehiculo` ( `id_vehiculo` INT(20) NOT NULL AUTO_INCREMENT , `precio` VARCHAR(20) NOT NULL , `kilometraje` 
VARCHAR(20) NOT NULL , `combustibe` VARCHAR(20) NOT NULL , `transmision` VARCHAR(20) NOT NULL , `color` VARCHAR(20) NOT NULL , `condicion` 
ENUM('Nuevo','Usado','','') NOT NULL , `año_fabricacion` VARCHAR(20) NOT NULL , `descripcion` VARCHAR(250) NOT NULL , `condicion_venta` 
ENUM('Negociable','Precio Fijo','Gratuito','') NOT NULL , `ubicacion_estado` VARCHAR(20) NOT NULL , `ubicacion_ciudad` VARCHAR(20) NOT NULL , 
`telefono1` VARCHAR(20) NOT NULL , `telefono2` VARCHAR(20) NOT NULL , PRIMARY KEY (`id_vehiculo`)) ENGINE = InnoDB;

INSERT INTO `vehiculo` (`id_vehiculo`, `precio`, `kilometraje`, `combustibe`, `transmision`, `color`, `condicion`, `año_fabricacion`, `descripcion`, 
`condicion_venta`, `ubicacion_estado`, `ubicacion_ciudad`, `telefono1`, `telefono2`) VALUES (NULL, '3500000', '120000', 'Gasoil', 'Automatica', 'Verde', 
'Nuevo', '2005', 'Motor Malo', 'Negociable', 'Distrito Capital', 'Caracas', '0426333333', '0414777777')

CREATE TABLE `clasificados`.`usuario` ( `id_usuario` INT(50) NOT NULL AUTO_INCREMENT , `nombre_usuario` VARCHAR(50) NOT NULL , 
`nombres` VARCHAR(50) NOT NULL , `apellidos` VARCHAR(50) NOT NULL , `cedula` VARCHAR(50) NOT NULL , `correo` VARCHAR(50) NOT NULL , 
`contraseña` VARCHAR(50) NOT NULL , `rol` ENUM('Cliente','Administrador','','') NOT NULL , PRIMARY KEY (`id_usuario`)) ENGINE = InnoDB;

INSERT INTO `usuario` (`id_usuario`, `nombre_usuario`, `nombres`, `apellidos`, `cedula`, `correo`, `contraseña`, `rol`) VALUES 
(NULL, 'c_wladix', 'Pedro Wladimir', 'Oliveros Caceres', '18187022', 'wladix@hotmail.com', '123456', 'Cliente'), (NULL, 'a_josex', 
'Jose Vicente', 'Oliveros', '12456789', 'josex@gmail.com', '123456', 'Administrador'

ALTER TABLE `usuario` CHANGE `rol` `rol` ENUM('Cliente','Administrador') CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL;

-----------------------------------------------------
CREATE TABLE `clasificados`.`vehiculo_venta` ( `id_vehiculo_venta` INT NOT NULL AUTO_INCREMENT , `precio` VARCHAR(50) NOT NULL , 
`kilometraje` VARCHAR(50) NOT NULL , `combustible` VARCHAR(50) NOT NULL , `transmision` VARCHAR(50) NOT NULL , `color` VARCHAR(50) NOT NULL , 
`condicion` VARCHAR(50) NOT NULL , `año_fabricacion` VARCHAR(50) NOT NULL , `descripcion` VARCHAR(250) NOT NULL , 
`condicion_venta` ENUM('Negociable','Precio Fijo','Gratuito','') NOT NULL , `ubicacion_estado` VARCHAR(50) NOT NULL , 
`ubicacion_ciudad` VARCHAR(50) NOT NULL , `telefono1` VARCHAR(50) NOT NULL , `telefono2` VARCHAR(50) NOT NULL , 
PRIMARY KEY (`id_vehiculo_venta`)) ENGINE = InnoDB;

CREATE TABLE `clasificados`.`marca` ( `id_marca` INT NOT NULL AUTO_INCREMENT , `nombre_marca` VARCHAR(50) NOT NULL , 
PRIMARY KEY (`id_marca`)) ENGINE = InnoDB;

CREATE TABLE `clasificados`.`modelo` ( `id_modelo` INT NOT NULL AUTO_INCREMENT , `nombre_modelo` VARCHAR(50) NOT NULL , 
PRIMARY KEY (`id_modelo`)) ENGINE = InnoDB;

CREATE TABLE `clasificados`.`categoria` ( `id_categoria` INT NOT NULL AUTO_INCREMENT , `descripcion_categoria` VARCHAR(250) NOT NULL , 
PRIMARY KEY (`id_Categoria`)) ENGINE = InnoDB;

ALTER TABLE `vehiculo_venta` ADD `id_categoria` INT(50) NOT NULL AFTER `id_vehiculo_venta`, ADD `id_marca` INT(50) NOT NULL AFTER `id_categoria`, 
ADD `id_modelo` INT(50) NOT NULL AFTER `id_marca`, ADD INDEX `id_categoria` (`id_categoria`), ADD INDEX `id_marca` (`id_marca`), ADD INDEX `id_modelo` 
(`id_modelo`);

ALTER TABLE `categoria` ADD CONSTRAINT `categoria_vehiculoventa` FOREIGN KEY (`id_categoria`) REFERENCES `clasificados`.`vehiculo_venta`(`id_categoria`) 
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE `marca` ADD CONSTRAINT `marca_vehiculoventa` FOREIGN KEY (`id_marca`) REFERENCES `clasificados`.`vehiculo_venta`(`id_marca`) 
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE `modelo` ADD CONSTRAINT `modelo_vehiculoventa` FOREIGN KEY (`id_modelo`) REFERENCES `clasificados`.`vehiculo_venta`(`id_modelo`) 
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE `modelo` CHANGE `id_modelo` `id_modelo` INT(50) NOT NULL AUTO_INCREMENT;
ALTER TABLE `vehiculo_venta` CHANGE `id_vehiculo_venta` `id_vehiculo_venta` INT(50) NOT NULL AUTO_INCREMENT;
ALTER TABLE `marca` CHANGE `id_marca` `id_marca` INT(50) NOT NULL AUTO_INCREMENT;
ALTER TABLE `categoria` CHANGE `id_categoria` `id_categoria` INT(50) NOT NULL AUTO_INCREMENT;
