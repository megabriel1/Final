create database inventario;
use inventario;

create table nombre_producto(
ID_nombre int auto_increment primary key, 
nombre_producto varchar(40) not null,
ID_categoria int not null,
foreign key (ID_categoria) references categoria (ID_categoria)
);

insert into nombre_producto (nombre_producto, ID_categoria) values 
("zucaritas", 1),
("corn flakes", 1),
("choco krispis", 1),
("queso", 2),
("crema", 2),
("leche", 2),
("arroz", 3),
("frijol", 3),
("maizs", 3);


create table categoria(
ID_categoria int primary key not null,
nombre_categoria varchar(40) not null
);

insert into categoria (ID_categoria, nombre_categoria) values 
(1, "cereales"),
(2, "lacteos"),
(3, "granos"),
(4, "higiene"),
(5, "cafe"),
(6, "licores"),
(7, "carnes"),
(8, "jugos"),
(9, "especias");
