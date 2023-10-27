use bd_pedidos;
select Fecha_pedido, Valor_pagar,
case
when Fecha_pedido <= '2022-12-20' then 'Antes de Navida'
when Fecha_pedido > '2022-12-20' and Fecha_pedido <= '2023-01-13' then 'Despues de Navidad'
when Fecha_pedido > '2023-01-13' and Fecha_pedido < '2023-01-13' then 'Dia de reyes'
Else 'Fecha posterior a Día de Reyes'
end as condicionante_navidad
from pedido; 

select c.Nombres, p.Valor_pagar, p.Fecha_pedido
from cliente c, pedido p
where c.Idcliente=p.Idcliente;

select p.Fecha_pedido, p.Valor_pagar, c.Descripcion
from pedido p, producto c
where p.idproducto=c.idProducto;

select * from pedido order by Fecha_pedido desc;

select c.Nombres, e.Descripcion
from cliente c, pedido p, producto e
where c.Idcliente=p.Idcliente and p.idproducto=e.idProducto;

select c.Nombres, e.Descripcion, p.Fecha_pedido
from cliente c, pedido p, producto e
where c.Idcliente=p.Idcliente and p.idproducto=e.idProducto and Fecha_pedido > '2023-01-01';

select c.Nombres, max(p.Valor_pagar)
from cliente c, pedido p
where c.Idcliente=p.Idcliente
group by c.Nombres;

select c.Nombres, p.Fecha_pedido, p.Cantidad, p.Valor_pagar, e.Descripcion
from cliente c, pedido p, producto e
where c.Idcliente=p.Idcliente and p.idproducto=e.idProducto and p.Cantidad > 2 and p.Fecha_pedido < '2023-01-10';

select c.nombres, p.valor_pagar
from cliente c join pedido p
where c.Idcliente=p.Idcliente;

select c.nombres, p.valor_pagar
from cliente c join pedido p
on c.Idcliente=p.Idcliente;

select c.Nombres, e.Descripcion, p.Fecha_pedido
from cliente c join pedido p join producto e
on c.Idcliente=p.Idcliente and p.idproducto=e.idProducto and Fecha_pedido > '2023-01-01';

select c.Idcliente, c.Nombres, p.Cantidad,
case
when c.Idcliente = '1' then 'Primer Cliente'
when c.Idcliente = '2' then 'Segundo Cliente'
when c.Idcliente = '3' then 'Tercer Cliente'
Else 'No esta en los primeros clientes'
end as Lugar_Cliente,
case
when p.Cantidad < '5' then 'Compro Poco'
when p.Cantidad >='5' and p.Cantidad <=10 then 'Compro mas o menos'
Else 'Es un buen cliente'
end as Tipo_Cliente
from cliente c join pedido p;
