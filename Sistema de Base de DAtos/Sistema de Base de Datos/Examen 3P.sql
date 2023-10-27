delimiter //
create trigger logs_cliente after insert on cliente
for each row
begin
 insert into logs_cliente(alerta_cliente) value ('Se ha ingresado un nuevo cliente');
end//
delimiter ;

delimiter //
create trigger logs_delete after delete on cliente
for each row
begin
 insert into logs_cliente(alerta_cliente) value ('Se ha eliminado un cliente');
end//
delimiter ;

delimiter //
create trigger logs_update after update on cliente
for each row
begin
 insert into logs_cliente(alerta_cliente) value ('Se ha actualizado los datos de un cliente');
end//
delimiter ;

delimiter //
create procedure actualizar_clientes(
in id int, in nuevo_nombre varchar(45), in nueva_direccion varchar(60), in nuevo_telefono varchar(10))
begin
update cliente
set nombres = nuevo_nombre, direccion = nueva_direccion, telefono = nuevo_telefono
where idcliente = id;
end //
delimiter ;

CALL actualizar_clientes(1, 'FreddyLeonel', 'Calle1', '1234576');

delimiter //
create procedure insert_clientes(
in id int, in nombre varchar(45), in direcciones varchar(60), in telefonos varchar(10))
begin
insert into cliente (idcliente, nombres, direccion, telefono)
values (id, nombre, direcciones, telefonos);
end //

CALL insert_clientes(7, 'Nicole Trujillo', 'calle 2', '1234567');

use bd_pedidos;

use bd_restaurante;

/*Tener un log de algún tipo de cambio en los ingredientes el cual mostrara en que momento se hizo el cambio y un mensaje de alerta, la nueva tabla se
llamara alarmas_ingrediente*/

delimiter //
create trigger logs_update after update on ingrediente
for each row
begin
 insert into alarmas_ingrediente(alerta_ingrediente) value ('Se ha actualizado los datos de un ingrediente');
end//
delimiter ;

delimiter //
create trigger logs_delete after delete on ingrediente
for each row
begin
 insert into alarmas_ingrediente(alerta_ingrediente) value ('Se ha eliminado un Ingrediente');
end//
delimiter ;

delimiter //
create trigger logs_create after insert on ingrediente
for each row
begin
 insert into alarmas_ingrediente(alerta_ingrediente) value ('Se ha ingresado un nuevo ingrediente');
end//
delimiter ;

delimiter //
create procedure actualizar_ingrediente(
in id int, in nuevo_nombre varchar(60), in nueva_unidad varchar(45), in nuevo_stock float)
begin
update ingrediente
set ing_nombre = nuevo_nombre, ing_unidad = nueva_unidad, ing_stock = nuevo_stock
where ing_id = id;
end //
delimiter ;

CALL actualizar_ingrediente(1, 'Camaron', 'lb', '10');

delimiter //
create procedure insert_ingrediente(
in id int, in nombres varchar(60), in unidades varchar(45), in stocks float)
begin
insert into ingrediente (ing_id, ing_nombre, ing_unidad, ing_stock)
values (id, nombres, unidades, stocks);
end //
delimiter;

CALL insert_ingrediente(34, 'Pimienta roja', 'L', '2');

delimiter //
create procedure delete_ingrediente(
    in id int
)
begin
    delete from ingrediente where ing_id = id;
end //
delimiter ;

CALL delete_ingrediente(34);

/*Mostrar el nombre de los clientes con la fecha en la que realizaron un pedido y la descripción de los productos que han pedido*/
use bd_pedidos;
select c.Nombres,p.Fecha_pedido, e.Descripcion
from cliente c, pedido p, producto e
where c.Idcliente=p.Idcliente and p.idproducto=e.idProducto;

/*Mostrar el valor total que han comprado los clientes en una determinada fecha*/
select c.Nombres, sum(p.Valor_pagar)
from cliente c join pedido p
on c.Idcliente=p.idcliente
group by c.Nombres
having sum(Valor_pagar);

use bd_ventas;
CREATE TABLE `categoria` (
  `idCategoria` int NOT NULL,
  `cat_nombre` varchar(45) NOT NULL,
  `cat_descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `categoria` WRITE;
INSERT INTO `categoria` VALUES (1,'Frutas','frutas'),(2,'Verduras','verduras'),(3,'Granos','granos'),(4,'Viveres','viveres en general');
UNLOCK TABLES;

CREATE TABLE `cliente` (
  `idCliente` int NOT NULL,
  `cli_cedula` varchar(10) NOT NULL,
  `cli_nombre` varchar(45) NOT NULL,
  `cli_apellido` varchar(45) NOT NULL,
  `cli_direccion` varchar(45) DEFAULT NULL,
  `cli_telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `cliente` VALUES (1,'1765442420','Juan','Perez','Conocoto','2345630'),(2,'9876543209','Ana','Roja','Sangolqui','9876543'),(3,'1324543256','Luis','Velez','Conocoto',NULL),(4,'1187654320','Sara','Ruiz','Sangolqui',NULL),(5,'2209876543','Felipe','Baez','Quito','2345678');
UNLOCK TABLES;

CREATE TABLE `factura` (
  `idfactura` int NOT NULL,
  `fac_descuento` decimal(2,2) DEFAULT NULL,
  `fac_fecha_emision` datetime NOT NULL,
  `fac_monto_final` decimal(12,2) NOT NULL,
  `idcliente` int NOT NULL,
  PRIMARY KEY (`idfactura`),
  KEY `factura_ibfk_1` (`idcliente`),
  CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `factura` WRITE;
INSERT INTO `factura` VALUES (10,0.20,'2023-01-03 00:00:00',43.68,1),(11,NULL,'2023-01-03 00:00:00',3.47,1),(12,NULL,'2023-01-04 00:00:00',1.55,1),(13,NULL,'2023-01-05 00:00:00',8.40,1);
UNLOCK TABLES;

CREATE TABLE `producto` (
  `idProducto` int NOT NULL,
  `pro_nombre` varchar(45) NOT NULL,
  `pro_stock` int NOT NULL,
  `pro_precio` decimal(8,2) NOT NULL,
  `idcategoria` int NOT NULL,
  PRIMARY KEY (`idProducto`),
  KEY `producto_ibfk_1` (`idcategoria`),
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `producto` WRITE;
INSERT INTO `producto` VALUES (100,'manzana verde',30,0.50,1),(101,'uvas',25,1.25,1),(102,'frutillas',5,1.00,1),(103,'apio',11,0.50,2),(104,'espinaca',3,0.30,2),(105,'pepinillo',15,0.35,2),(106,'zanahoria',89,0.15,2),(107,'fideos macarrones',12,2.20,4),(108,'arroz',223,0.65,4),(109,'azucar',118,0.70,4);
UNLOCK TABLES;


CREATE TABLE `proveedor` (
  `idProveedor` int NOT NULL,
  `prov_nombre` varchar(45) NOT NULL,
  `prov_telefono` varchar(45) DEFAULT NULL,
  `prov_ciudad` varchar(45) DEFAULT NULL,
  `idproducto` int NOT NULL,
  PRIMARY KEY (`idProveedor`),
  KEY `pproveedor_ibfk_1` (`idproducto`),
  CONSTRAINT `pproveedor_ibfk_1` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `proveedor` WRITE;
INSERT INTO `proveedor` VALUES (1,'Fruticas','2220987','Ambato',100),(2,'Frescura','3421345','Latacunga',100),(3,'Babyfruit','2987652','Puellaro',101),(4,'Despensa sur',NULL,'Quito',108);
UNLOCK TABLES;

CREATE TABLE `detalle_factura` (
  `idfactura` int NOT NULL,
  `idproducto` int NOT NULL,
  `detfact_cantidad` int NOT NULL,
  `detfact_montototal_producto` decimal(8,2) NOT NULL,
  PRIMARY KEY (`idfactura`,`idproducto`),
  KEY `Idproducto` (`idproducto`),
  KEY `idfactura` (`idfactura`),
  CONSTRAINT `detfactura_ibfk_1` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idProducto`),
  CONSTRAINT `detfactura_ibfk_2` FOREIGN KEY (`idfactura`) REFERENCES `factura` (`idfactura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `detalle_factura` WRITE;
INSERT INTO `detalle_factura` VALUES (10,100,35,17.50),(10,101,12,15.00),(10,102,4,4.00),(10,103,5,2.50),(11,104,1,0.30),(11,105,8,2.80),(12,100,3,1.50),(12,105,3,1.05),(13,109,12,8.40);
UNLOCK TABLES;

/*Cuántos productos compro el cliente 1 el 3 de enero del 2023*/

SELECT p.idCliente, sum(c.detfact_cantidad), e.fac_fecha_emision
FROM detalle_factura c, cliente p, factura e
WHERE p.idCliente = 1
AND e.fac_fecha_emision = '2023-01-03';

/*Mostrar el nombre de los clientes con la fecha que realizaron la compra y la descripción de los productos que compraron.*/

select c.cli_nombre, c.cli_apellido, p.fac_fecha_emision, e.cat_descripcion
from cliente c join factura p join categoria e;

 /*Valor total que han comprado los clientes el 03 enero 2023.*/
SELECT c.idCliente, p.fac_fecha_emision, SUM(p.fac_monto_final)
FROM cliente c, factura p
where c.idCliente = p.idCliente and fac_fecha_emision = '2023-01-03'
group by c.idCliente;
 
 /* Listado de clientes que tienen en el número de teléfono null */
 
 select cli_nombre, cli_apellido, cli_telefono
 from cliente
 where cli_telefono is null;
 
 /*Generar una vista con la cantidad de productos que tienen stock menor a 100*/
 select pro_nombre, pro_stock
 from producto
 where pro_stock < 100;
 
 /*Generar una vista con la cantidad de productos que tiene cada categoría.*/
 select c.idCategoria, c.cat_nombre, count(p.pro_stock)
 from categoria c, producto p
 where c.idCategoria = p.idcategoria
 group by c.idCategoria;