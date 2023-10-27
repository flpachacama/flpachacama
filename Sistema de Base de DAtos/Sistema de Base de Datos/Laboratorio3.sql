use bd_restaurante;

select PLA_NOMBRE, PLA_PRECIO from plato where PLA_PRECIO between 5 and 8;

select * from plato where PLA_NOMBRE like "a%";

select * from categoria where cat_nombre like "%o%";

select * from plato where PLA_PRECIO in (5,6);

select * from categoria where cat_encargado <> "Pedro";

select PLA_NOMBRE, PLA_PRECIO from plato where PLA_PRECIO = 5 or PLA_PRECIO = 6 or PLA_PRECIO = 7 or PLA_PRECIO = 8;

select PLA_NOMBRE, PLA_PRECIO from plato where PLA_PRECIO >=5 and PLA_PRECIO <=8;

select * from ingrediente where ing_stock <> 10 and ing_nombre = "Sal";

