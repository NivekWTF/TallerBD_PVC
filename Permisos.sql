


create database prueba
use prueba
create schema ventas
create schema rh

create table rh.departamento
(
	idDepartamento int not null identity primary key,
	nombre nvarchar(50)
)

create table rh.empleado
(
	idEmpleado int not null identity primary key,
	nombre nvarchar(50),

)

create table ventas.cliente(
idCliente int not null identity primary key,
nombre nvarchar(50)
)

go
create table ventas.venta(
idVenta int not null identity primary key,
fecha date,
cliente int not null foreign key references ventas.cliente(idCliente)
)

CREATE LOGIN [DESKTOP-2U8N1I5\Hugo]
FROM WINDOWS
CREATE LOGIN [DESKTOP-2U8N1I5\Paco]
FROM WINDOWS
CREATE LOGIN [DESKTOP-2U8N1I5\Luis]
FROM WINDOWS

create user [DESKTOP-2U8N1I5\Hugo]
create user [DESKTOP-2U8N1I5\Paco]
create user [DESKTOP-2U8N1I5\Luis]


create role AdminRH
create role SupervisorVentas
create role Vendedor

alter role SupervisorVentas
	add member [DESKTOP-2U8N1I5\Paco]
alter role Vendedor
	add member [DESKTOP-2U8N1I5\Hugo]
alter role Vendedor
	add member [DESKTOP-2U8N1I5\Luis]


GRANT SELECT ON SCHEMA::VENTAS TO SupervisorVentas

grant select, insert,delete, update on schema::ventas to Vendedor