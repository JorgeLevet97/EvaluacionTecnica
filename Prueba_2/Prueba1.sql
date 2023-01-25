-- Creacion de la base de datos
create database empresa;
use empresa;

-- Creacion de la tabla usuarios
create table usuarios
(userId int auto_increment,
Login varchar(100),
Nombre varchar(100),
Paterno varchar(100),
Materno varchar(100),
primary key (userId)
);

-- Creacion de la tabla empleados
create table empleados 
(userId int auto_increment,
Sueldo double,
FechaIngreso date,
foreign key (userId) references usuarios(userId)
);

-- Datos de la tabla usuario
insert into usuarios(Login,Nombre,Paterno,Materno) values('user01','BERE','NARANJO','GONZALEZ');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user02','ALEXIS','CAMPOS','NARANJO');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user03','SERGIO ALEJANDRO','CAMPOS','HERNANDEZ');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user04','DIEGO ISMAEL','BERUMEN','CEDILLO');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user05','AURORA','ESCALANTE','PALAFOX');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user06','JOYCELENE FABIOLA','ESTRADA','BARBA');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user07','FRANCISCO','ESTRADA','GOMEZ');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user08','LEONARDO DANIEL','FARIAS','ROSAS');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user09','RAMON ANDRES','FIERROS','ROBLES');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user10','EDGAR ANDRES','FLORES','OLIVARES');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user11','MARIA FERNANDA','FRANCO','ESQUIVEL');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user12','ALEJANDRO','GALVAN','MUÑIZ');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user13','MARTHA ALICIA','GUTIERREZ','ORTIZ');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user14','JOSAFAT GERARDO','HERNANDEZ','SAUCEDO');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user15','ROSALIA','JIMENEZ','GONZALEZ');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user16','LAURA CELENE','JIMENEZ','RIOS');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user17','ANGELICA','LOPEZ','CORTES');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user18','CRISTIAN IVAN','LOPEZ','GOMEZ');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user19','MARLENE GABRIELA','LOPEZ','MEZA');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user20','ALEJANDRA','MEDINA','IBARRA');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user21','CONSUELO YURIDIANA THALIA','MEJIA','ALVAREZ');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user22','JAVIER ADRIAN','MEJIA','ALVAREZ');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user23','JUAN CARLOS EVARISTO','PEÑA','GUTIERREZ');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user24','JAZMIN ALEJANDRA','PEREZ','VELEZ');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user25','GUSTAVO','RAMIREZ','RIVERA');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user26','CARLOS NIVARDO','RODRIGUEZ','ASCENCIO');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user27','KARLA JOHANA','ROMERO','LUEVANOS');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user28','YESSICA YOSELINNE','RUIZ','HERNANDEZ');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user29','CHRISTIAN EDUARDO','SALAS','SANCHEZ');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user30','LUIS ROBERTO','SALDAÑA','ESPINOZA');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user31','ADRIAN','SANCHEZ','ORTIZ');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user32','EDUARDO YAIR','SUAREZ','HERNANDEZ');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user33','JUAN FRANCISCO','TABAREZ','GARCIA');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user34','ZULEICA ELIZABETH','TERAN','TORRES');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user35','ADRIANA YUNUHEN','VARGAS','AYALA');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user36','OSCAR URIEL','VELAZQUEZ','ALVAREZ');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user37','ERICK DE JESUS','CORONA','DIAZ');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user38','MARIA GUADALUPE','RAMOS','HERNANDEZ');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user39','JESSICA NOEMI','JIMENEZ','VENTURA');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user40','FLOR MARGARITA','ROJAS','HERNANDEZ');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user41','LUIS ANTONIO','ALVARADO','VALENCIA');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user42','EDGAR IVAN','AGUILAR','PADILLA');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user43','LUIS ALFONSO','MICHEL','SANCHEZ');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user44','JOSE CARLOS','SILVA','ROCHA');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user45','JUDITH','RODRIGUEZ','REYES');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user46','BRENDA SORAYA','CHAVEZ','GARCIA');
insert into usuarios(Login,Nombre,Paterno,Materno) values('user47','ALMA ROSA','MARQUEZ','AGUILA');

-- Datos de la tabla empleados
insert into empleados(Sueldo,FechaIngreso) values('8837', DATE '2000-01-11');
insert into empleados(Sueldo,FechaIngreso) values('8837', DATE '2000-01-11');
insert into empleados(Sueldo,FechaIngreso) values('15000', DATE '2000-01-11');
insert into empleados(Sueldo,FechaIngreso) values('15000', DATE '2000-01-11');
insert into empleados(Sueldo,FechaIngreso) values('7812', DATE '2000-01-18');
insert into empleados(Sueldo,FechaIngreso) values('7812', DATE '2000-01-18');
insert into empleados(Sueldo,FechaIngreso) values('10200', DATE '2000-01-18');
insert into empleados(Sueldo,FechaIngreso) values('10200', DATE '2000-01-18');
insert into empleados(Sueldo,FechaIngreso) values('13800', DATE '2001-05-20');
insert into empleados(Sueldo,FechaIngreso) values('13800', DATE '2001-05-20');
insert into empleados(Sueldo,FechaIngreso) values('18800', DATE '2001-05-20');
insert into empleados(Sueldo,FechaIngreso) values('18800', DATE '2001-05-20');
insert into empleados(Sueldo,FechaIngreso) values('8000', DATE '2001-07-13');
insert into empleados(Sueldo,FechaIngreso) values('8000', DATE '2001-07-13');
insert into empleados(Sueldo,FechaIngreso) values('6000', DATE '2001-07-13');
insert into empleados(Sueldo,FechaIngreso) values('19470', DATE '2001-07-13');
insert into empleados(Sueldo,FechaIngreso) values('19470', DATE '2001-07-13');
insert into empleados(Sueldo,FechaIngreso) values('10200', DATE '2001-07-16');
insert into empleados(Sueldo,FechaIngreso) values('10200', DATE '2001-07-16');
insert into empleados(Sueldo,FechaIngreso) values('25000', DATE '2001-07-16');
insert into empleados(Sueldo,FechaIngreso) values('7812', DATE '2001-07-16');
insert into empleados(Sueldo,FechaIngreso) values('7812', DATE '2001-07-16');
insert into empleados(Sueldo,FechaIngreso) values('12210', DATE '2001-11-24');
insert into empleados(Sueldo,FechaIngreso) values('12210', DATE '2001-11-24');
insert into empleados(Sueldo,FechaIngreso) values('7500', DATE '2001-11-24');
insert into empleados(Sueldo,FechaIngreso) values('15020', DATE '2001-11-24');
insert into empleados(Sueldo,FechaIngreso) values('15020', DATE '2001-11-24');
insert into empleados(Sueldo,FechaIngreso) values('25000', DATE '2001-11-24');
insert into empleados(Sueldo,FechaIngreso) values('7812', DATE '2001-11-24');
insert into empleados(Sueldo,FechaIngreso) values('15020', DATE '2001-12-12');
insert into empleados(Sueldo,FechaIngreso) values('15020', DATE '2001-12-12');
insert into empleados(Sueldo,FechaIngreso) values('12210', DATE '2001-12-12');
insert into empleados(Sueldo,FechaIngreso) values('12210', DATE '2001-12-12');
insert into empleados(Sueldo,FechaIngreso) values('19470', DATE '2008-08-17');
insert into empleados(Sueldo,FechaIngreso) values('19470', DATE '2008-08-17');
insert into empleados(Sueldo,FechaIngreso) values('8000', DATE '2008-08-17');
insert into empleados(Sueldo,FechaIngreso) values('8000', DATE '2008-08-17');
insert into empleados(Sueldo,FechaIngreso) values('18800', DATE '2009-06-11');
insert into empleados(Sueldo,FechaIngreso) values('18800', DATE '2009-06-11');
insert into empleados(Sueldo,FechaIngreso) values('14000', DATE '2009-06-11');
insert into empleados(Sueldo,FechaIngreso) values('13800', DATE '2009-06-11');
insert into empleados(Sueldo,FechaIngreso) values('13800', DATE '2009-06-11');
insert into empleados(Sueldo,FechaIngreso) values('15000', DATE '2009-10-06');
insert into empleados(Sueldo,FechaIngreso) values('15000', DATE '2009-10-06');
insert into empleados(Sueldo,FechaIngreso) values('13000', DATE '2009-10-06');
insert into empleados(Sueldo,FechaIngreso) values('8837', DATE '2009-10-06');
insert into empleados(Sueldo,FechaIngreso) values(null, null);

-- Depurar solo los ID diferentes de 6,7,9 y 10 de la tabla usuarios --
delete from usuarios
where userId not in (6,7,9,10);

-- Actualizar el dato Sueldo en un 10 porciento a los empleados que tienen fechas entre el año 2000 y 2001 --
update empleados as emp
set emp.Sueldo = tmp.Sueldo
where userId in (select tmp.userId from
(select emp2.userId, (emp2.Sueldo * 1.1) as Sueldo
from empleados as emp2
where emp2.FechaIngreso 
BETWEEN '2000-01-01'  AND '2001-12-31') as tmp);

-- Realiza una consulta para traer el nombre de usuario y fecha de ingreso de los usuarios que gananen mas de 10000 y su apellido comience con T ordernado del mas reciente al mas antiguo --
select usr.Nombre, emp.FechaIngreso
from usuarios as usr
inner join empleados as emp
on usr.userId = emp.userId
where emp.Sueldo > 10000
and usr.Paterno like 'T%'
order by emp.fechaIngreso desc
;

-- Realiza una consulta donde agrupes a los empleados por sueldo, un grupo con los que ganan menos de 1200 y uno mayor o igual a 1200, cuantos hay en cada grupo? 
select distinct(select count(*) 
		from empleados emp 
		where emp.Sueldo < 1200) as SueldoMenor, -- Columna 1
		(select count(*) 
        from empleados emp 
        where emp.Sueldo > 1200) as SueldoMayor -- Columna 2
from empleados;