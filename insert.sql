INSERT INTO cliente  (idCliente ,nombre , contacto, direccion) VALUES
(1, 'Juan Pérez', '123456789', 'Calle 123 #45-67'),
(2, 'María Gómez', '987654321', 'Carrera 7 #89-12'),
(3, 'Carlos López', '456789123',  'Avenida 68 #34-56'),
(4, 'Ana Rodríguez', '321654987',  'Calle 50 #12-34'),
(5, 'Juana Pérez', '123456780', 'Calle 123 #45-66'),
(6, 'Marío Gómez', '987654322', 'Carrera 7 #89-11'),
(7, 'Carla López', '456789124',  'Avenida 68 #34-57'),
(8, 'Anuel Rodríguez', '321654988',  'Calle 50 #12-35'),
(9, 'Pedra Sánchez', '654987322',  'Carrera 15 #78-92'),
(10, 'Pedro Sánchez', '654987321',  'Carrera 15 #78-90');

insert into categoria(idcategoria, nombre) values
(1, 'comedia'),
(2, 'accion'),
(3, 'drama'),
(4, 'ficcion'),
(5, 'romance');

INSERT INTO pelicula  (idpelicula, titulo, director, anio, disponibildad, precio) VALUES
(1, 'p1', 'coco', '2017', true, 15000),
(2, 'p2', 'coco', '2017', true, 15000),
(3, 'p3', 'coco',  '2017', true, 15000),
(4, 'p4', 'coco',  '2017', true, 15000),
(5, 'p5', 'coco', '2017', true, 15000),
(6, 'p6', 'coco', '2018', true, 15000),
(7, 'p7', 'coco',  '2018', true, 15000),
(8, 'P8', 'coco',  '2018', true, 15000),
(9, 'P9', 'coco',  '2018', true, 15000),
(10, 'P10', 'coco',  '2018', true, 15000),
(11, 'p11', 'coco', '2019', true, 15000),
(12, 'p12', 'coco', '2019', true, 15000),
(13, 'p13', 'coco',  '2019', true, 15000),
(14, 'p14', 'coco',  '2019', true, 15000),
(15, 'p15', 'coco', '2019', false, 15000);


insert into sucursal (idsucursal, ubicacion) values
(1,'calle 1'),
(2, 'calle 2'),
(3, 'calle 3'),
(4, 'calle 4'),
(5, 'calle 5');


insert into sucursalpelicula (idsp, idpelicula, idsucursal) values
(1, 1,  1 ),
(2, 2,  1 ),
(3, 3,  1 ),
(4, 4,  2 ),
(5, 5,  2 ),
(6, 6,  2 ),
(7, 7,  3 ),
(8, 8,  3 ),
(9, 9,  3 ),
(10, 10, 4 ),
(11, 11, 4 ),
(12, 12, 4 ),
(13, 13, 5 ),
(14, 14, 5 ),
(15, 15, 5 );

insert into alquiler (idalquiler, idcliente, idsp, fechai, fechaf, costo) VALUES
(1, 1, 1, '2025-01-01', '2025-01-31', 20000),
(2, 2, 2, '22025-02-01', '2025-02-28',20000),
(3, 3, 3, '2025-03-01', '2025-03-07',20000),
(4, 4, 4, '2025-04-01', '2025-04-15', 20000),
(5, 5, 5, '2025-01-01', '2025-01-31', 20000),
(6, 6, 6, '22025-02-01', '2025-02-28',20000),
(7, 7, 7, '2025-03-01', '2025-03-07',20000),
(8, 8, 8, '2025-04-01', '2025-04-15', 20000),
(9, 9, 9, '2025-04-01', '2025-04-15', 20000),
(10,10, 10, '2025-05-01', '2025-05-31',20000);

insert into pago (idpago, idalquiler, fecha,monto) values
(1, 1, '2025-01-31', 20000),
(2, 2, '2025-02-28',20000),
(3, 3, '2025-03-07',20000),
(4, 4, '2025-04-15', 20000),
(5, 5, '2025-01-31', 20000),
(6, 6, '2025-02-28',20000),
(7, 7, '2025-03-07',20000),
(8, 8, '2025-04-15', 20000),
(9, 9, '2025-04-15', 20000),
(10,10,'2025-05-31',20000);


