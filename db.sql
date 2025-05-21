create table pelicula(
	idPelicula int primary key,
	titulo varchar(100),
	director varchar(100),
	anio varchar(5),
	disponibildad boolean,
	precio decimal(10,2)	
);

create table categoria(
	idCategoria int primary key,
	nombre varchar(100)
);

create table categoriaPelicula(
	idCT int primary key,
	idPelicula int  references pelicula(idPelicula),
	idCategoria int references categoria(idCategoria)
);

create table sucursal(
	idSucursal int primary key,
	ubicacion varchar(100)
);

create table sucursalPelicula(
	idSP int primary key,
	idPelicula int  references pelicula(idPelicula),
	idSucursal int references sucursal(idSucursal)
);

create table cliente(
	idCliente int primary key,
	nombre varchar(100),
	contacto varchar(15),
	direccion varchar(100)
);

create table alquiler(
	idAlquiler int primary key,
	idCliente int references cliente(idCliente),
	idSP int references sucursalPelicula(idSP),
	fechaI date,
	fechaF date,
	costo decimal(10,2)
);

create table pago(
	idPago int primary key,
	idAlquiler int references alquiler(idAlquiler),
	fecha date,
	monto decimal(10,2)
);



