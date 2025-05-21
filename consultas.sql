-- ingresos generados por cada sucursal en el ultimo mes 

select s.idsucursal, p.fecha,  sum(p.monto)
from alquiler a 
inner join sucursalpelicula s  on s.idsp  = a.idsp
inner join pago p on p.idalquiler = a.idalquiler 
group by s.idsucursal, p.fecha 
having p.fecha > '2025-05-01';

-- consultar  el cliente con el mayor monto de pagos realizados 

select c.idcliente , c.nombre ,  sum(p.monto)
from alquiler a 
inner join cliente c    on c.idcliente  = a.idcliente 
inner join pago p on p.idalquiler = a.idalquiler 
group by c.idcliente, p.monto 
order by p.monto desc  limit 1;


-- obtener el porcentaje de peliculas alquiladas por genero 

select p.titulo , c2.nombre as genero, avg(s.idpelicula) as porcentaje  
from sucursalpelicula s 
inner join alquiler a  on a.idsp  = s.idsp 
inner join pelicula p  on  p.idpelicula = s.idpelicula 
inner join categoriapelicula c on c.idpelicula  = p.idpelicula 
inner join categoria c2  on c2.idcategoria  = c.idcategoria
group by p.titulo, c2.nombre , s.idpelicula;

-- identificar las sucursales con mayor numero  de alquiler

select s2.idsucursal, count(a.idalquiler) as total_alquiler
from sucursalpelicula s 
inner join sucursal s2  on s2.idsucursal = s.idsucursal 
inner join alquiler a  on a.idsp  = s.idsp
group by s2.idsucursal 
order by count(a.idalquiler) desc limit 1;


-- listar todas las peliculas para alquilar  incluyendo titulo categoria precio 
 select p.titulo, p.precio, c2.nombre
 from pelicula p
 inner join categoriapelicula c on c.idpelicula = p.idpelicula
 inner join categoria c2 on c2.idcategoria = c.idcategoria ;


-- listar las peliculas  con precios  superiores a un valor especifico 

select p.idpelicula , p.anio , p.disponibildad 
from pelicula p
where p.precio > 14000;






