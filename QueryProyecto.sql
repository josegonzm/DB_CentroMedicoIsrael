--Creacion de tablas
create table Puestos(
    ID_Puesto numeric primary key not null,
    Nombre_Puesto varchar2(20) not null,
    Descripcion varchar2(50) not null
);

create table Utensilios(
    Num_Utensilio numeric primary key not null,
    Nombre_Utensilio varchar2(40) not null,
    Marca varchar2(20) not null,
    Descripcion varchar2(50) not null,
    ID_Puesto number references Puestos(ID_Puesto),
    Estado varchar2(15) not null
);

create table Doctor(
    Cod_Doctor numeric primary key not null,
    Nombre varchar2(20) not null,
    Primer_Apellido varchar2(25) not null,
    Segundo_Apellido varchar2(25) not null,
    Correo_Electronico varchar2(40) not null,
    Identificacion varchar2(9) not null,
    Telefono numeric(8) not null,
    Fecha_Contratacion date not null,
    Salario number not null,
    ID_Puesto number references Puestos(ID_Puesto),
    Num_Consultorio number references ConsultoriosXDoctor(Num_Consultorio)
);

create table Clientes(
    ID_Cliente numeric primary key not null,
    Nombre varchar2(15) not null,
    Primer_Apelldio varchar2(25) not null,
    Segundo_Apellido varchar2(25) not null,
    Correo varchar2(30) not null,
    Telefono numeric(8) not null
);

create table Citas(
    ID_Cita numeric primary key not null,
    MontoXCobrar number not null,
    Cod_Doctor number references Doctor(Cod_Doctor),
    ID_Cliente number references Clientes(ID_Cliente),
    Fecha date not null,
    Hora varchar2(10) not null
);

create table ConsultoriosXDoctor(
    Num_Consultorio numeric primary key not null,
    Descripcion varchar2(70) not null);

--create table CitasXCliente(
--    ID_Cliente numeric references Clientes(ID_Cliente),
--    ID_Cita numeric references Citas(ID_Cita)
--);

--create table CitasXDoctor(
--    Cod_Doctor numeric references Doctor(Cod_Doctor),
--    ID_Cita numeric references Citas(ID_Cita)
--);

--drop table Clientes;
--drop table citas
--drop table citasxcliente;
--drop table citasxdoctor;
--drop table clientes;
--drop table doctor;
--drop table puestos;
--drop table utensilios;
--drop table ConsultoriosXDoctor;


--Insercion de datos

--Puestos
insert into Puestos(ID_PUESTO, NOMBRE_PUESTO, DESCRIPCION)
values
(1,'Psiquiatria','Tratamiento psiquiatrico a pacientes');

insert into Puestos(ID_PUESTO, NOMBRE_PUESTO, DESCRIPCION)
values
(2,'Psicologia','Tratamiento psicologico a pacientes');

insert into Puestos(ID_PUESTO, NOMBRE_PUESTO, DESCRIPCION)
values
(3,'Fisioterapia','Tratamiento fisioterapeutico a pacientes');

insert into Puestos(ID_PUESTO, NOMBRE_PUESTO, DESCRIPCION)
values
(4,'Odontologia','Tratamiento odontologico a pacientes');

insert into Puestos(ID_PUESTO, NOMBRE_PUESTO, DESCRIPCION)
values
(5,'Geriatria','Tratamiento geriatrico a pacientes');

select * from puestos;

--Consultores
insert into consultoriosxdoctor(num_consultorio,descripcion)
values
(1, 'Consultorio en seccion A');

insert into consultoriosxdoctor(num_consultorio,descripcion)
values
(2, 'Consultorio en seccion A');

insert into consultoriosxdoctor(num_consultorio,descripcion)
values
(3, 'Consultorio en seccion A');

insert into consultoriosxdoctor(num_consultorio,descripcion)
values
(4, 'Consultorio en seccion B');

insert into consultoriosxdoctor(num_consultorio,descripcion)
values
(5, 'Consultorio en seccion B');

--Doctores
insert into Doctor(COD_DOCTOR, NOMBRE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, CORREO_ELECTRONICO, IDENTIFICACION, TELEFONO, FECHA_CONTRATACION, SALARIO, ID_PUESTO, NUM_CONSULTORIO)
values
(1, 'Pablo' , 'Gonzalez', 'Ramos', 'pggonz@gmail.com', 23974168, 84630849, '01-06-08', 300000, 1, 1);

insert into Doctor(COD_DOCTOR, NOMBRE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, CORREO_ELECTRONICO, IDENTIFICACION, TELEFONO, FECHA_CONTRATACION, SALARIO, ID_PUESTO, NUM_CONSULTORIO)
values
(2, 'Josue' , 'Ramirez', 'Ramos', 'jramirez@gmail.com', 30974632, 89037468, '11-06-09', 5000000, 1, 1);

insert into Doctor(COD_DOCTOR, NOMBRE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, CORREO_ELECTRONICO, IDENTIFICACION, TELEFONO, FECHA_CONTRATACION, SALARIO, ID_PUESTO, NUM_CONSULTORIO)
values
(3, 'Maria' , 'Montoya', 'Sequeira', 'msequeira@gmail.com', 10976385, 74693201, '15-11-13', 200000, 2, 1);

insert into Doctor(COD_DOCTOR, NOMBRE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, CORREO_ELECTRONICO, IDENTIFICACION, TELEFONO, FECHA_CONTRATACION, SALARIO, ID_PUESTO, NUM_CONSULTORIO)
values
(4, 'Jose' , 'Rojas', 'Arias', 'jrojas@gmail.com', 60397468, 89315674, '20-01-10', 200000, 5, 2);

insert into Doctor(COD_DOCTOR, NOMBRE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, CORREO_ELECTRONICO, IDENTIFICACION, TELEFONO, FECHA_CONTRATACION, SALARIO, ID_PUESTO, NUM_CONSULTORIO)
values
(5, 'Antonio' , 'Rojas', 'Arias', 'arojas@gmail.com', 40631974, 76930168, '20-01-10', 200000, 5, 2);

insert into Doctor(COD_DOCTOR, NOMBRE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, CORREO_ELECTRONICO, IDENTIFICACION, TELEFONO, FECHA_CONTRATACION, SALARIO, ID_PUESTO, NUM_CONSULTORIO)
values
(6, 'Marta' , 'Chacon', 'Azofeifa', 'mchacon@gmail.com', 20974682, 83601795, '30-06-14', 100000, 4, 3);

insert into Doctor(COD_DOCTOR, NOMBRE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, CORREO_ELECTRONICO, IDENTIFICACION, TELEFONO, FECHA_CONTRATACION, SALARIO, ID_PUESTO, NUM_CONSULTORIO)
values
(7, 'Josue' , 'Jimenez', 'Mora', 'jmora@gmail.com', 29743985, 82067416, '02-05-12', 200000, 3, 3);

insert into Doctor(COD_DOCTOR, NOMBRE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, CORREO_ELECTRONICO, IDENTIFICACION, TELEFONO, FECHA_CONTRATACION, SALARIO, ID_PUESTO, NUM_CONSULTORIO)
values
(8, 'Cesar' , 'Sanchez', 'Hernandez', 'chernandez@gmail.com', 60397468, 76298314, '20-05-10', 300000, 3, 4);

insert into Doctor(COD_DOCTOR, NOMBRE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, CORREO_ELECTRONICO, IDENTIFICACION, TELEFONO, FECHA_CONTRATACION, SALARIO, ID_PUESTO, NUM_CONSULTORIO)
values
(9, 'Sofia' , 'Vargas', 'Sanchez', 'svargas@gmail.com', 60974632, 89476314, '26-08-13', 500000, 1, 5);

insert into Doctor(COD_DOCTOR, NOMBRE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, CORREO_ELECTRONICO, IDENTIFICACION, TELEFONO, FECHA_CONTRATACION, SALARIO, ID_PUESTO, NUM_CONSULTORIO)
values
(10, 'Victor' , 'Lopez', 'Alvarado', 'vlopez@gmail.com', 20934168, 82639164, '28-08-10', 500000, 2, 5);

insert into Doctor(COD_DOCTOR, NOMBRE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, CORREO_ELECTRONICO, IDENTIFICACION, TELEFONO, FECHA_CONTRATACION, SALARIO, ID_PUESTO, NUM_CONSULTORIO)
values
(11, 'Eduardo' , 'Chaves', 'Campos', 'echaves@gmail.com', 30946214, 70953614, '12-02-09', 200000, 4, 4);

insert into Doctor(COD_DOCTOR, NOMBRE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, CORREO_ELECTRONICO, IDENTIFICACION, TELEFONO, FECHA_CONTRATACION, SALARIO, ID_PUESTO, NUM_CONSULTORIO)
values
(12, 'Eugenia' , 'Quesada', 'Gomez', 'equesada@gmail.com', 19347168, 80674312, '05-04-10', 400000, 5, 1);

select * from doctor;

--Utensilios
insert into Utensilios(NUM_UTENSILIO, NOMBRE_UTENSILIO, MARCA, DESCRIPCION, ID_PUESTO, ESTADO)
values
(1, 'Jeringuillas', 'CEGAMED', 'Jeringuillas para inyectar pacientes', 4, 'En stock');

insert into Utensilios(NUM_UTENSILIO, NOMBRE_UTENSILIO, MARCA, DESCRIPCION, ID_PUESTO, ESTADO)
values
(2, 'Algodones', 'Promedici', 'Algodones para tratamiento odontolgico', 4, 'En stock');

insert into Utensilios(NUM_UTENSILIO, NOMBRE_UTENSILIO, MARCA, DESCRIPCION, ID_PUESTO, ESTADO)
values
(3, 'Camillas', 'TecTake', 'Camillas para tratamiento fisioterapeutico', 3, 'En stock');

insert into Utensilios(NUM_UTENSILIO, NOMBRE_UTENSILIO, MARCA, DESCRIPCION, ID_PUESTO, ESTADO)
values
(4, 'Ultrasonido', 'Sonicstim', 'Ultrasonido para tratamiento fisioterapeutico', 3, 'En stock');

insert into Utensilios(NUM_UTENSILIO, NOMBRE_UTENSILIO, MARCA, DESCRIPCION, ID_PUESTO, ESTADO)
values
(5, 'Pinzas dentales', 'Weingart', 'Pinzas para tratamiento odontologico', 4, 'Agotado');

insert into Utensilios(NUM_UTENSILIO, NOMBRE_UTENSILIO, MARCA, DESCRIPCION, ID_PUESTO, ESTADO)
values
(6, 'Turbinas dentales', 'Weingart', 'Turbinas dentales para tratamiento odontologico', 4, 'Agotado');

insert into Utensilios(NUM_UTENSILIO, NOMBRE_UTENSILIO, MARCA, DESCRIPCION, ID_PUESTO, ESTADO)
values
(7, 'Limas dentales', 'Kerr', 'Limas dentales para tratamiento odontologico', 4, 'En stock');

insert into Utensilios(NUM_UTENSILIO, NOMBRE_UTENSILIO, MARCA, DESCRIPCION, ID_PUESTO, ESTADO)
values
(8, 'Masajeador', 'Jacknobber', 'Masajeador para tratamiento fisioterapeutico', 3, 'En stock');

insert into Utensilios(NUM_UTENSILIO, NOMBRE_UTENSILIO, MARCA, DESCRIPCION, ID_PUESTO, ESTADO)
values
(9, 'Pistola de Masaje', 'Gridinlux', 'Pistola masaje para tratamiento fisioterapeutico', 3, 'Agotado');

insert into Utensilios(NUM_UTENSILIO, NOMBRE_UTENSILIO, MARCA, DESCRIPCION, ID_PUESTO, ESTADO)
values
(10, 'Masajeador Knobble', 'DISERTECSA', 'Masajeador knobble para fisioterapia', 3, 'En stock');

select * from utensilios;

--Clientes
insert into Clientes(ID_CLIENTE, NOMBRE, PRIMER_APELLDIO, SEGUNDO_APELLIDO, CORREO, TELEFONO)
values
(1, 'Jose', 'Ramirez', 'Sequeira', 'jramirez@gmail.com', 74613284);

insert into Clientes(ID_CLIENTE, NOMBRE, PRIMER_APELLDIO, SEGUNDO_APELLIDO, CORREO, TELEFONO)
values
(2, 'Marcos', 'Azofeifa', 'Segura', 'mazofeifa@gmail.com', 82943681);

insert into Clientes(ID_CLIENTE, NOMBRE, PRIMER_APELLDIO, SEGUNDO_APELLIDO, CORREO, TELEFONO)
values
(3, 'Mateo', 'Quesada', 'Gomez', 'mquesada@gmail.com', 79310974);

insert into Clientes(ID_CLIENTE, NOMBRE, PRIMER_APELLDIO, SEGUNDO_APELLIDO, CORREO, TELEFONO)
values
(4, 'Kevin', 'Zuñiga', 'Arias', 'kzuñiga@gmail.com', 86941635);

insert into Clientes(ID_CLIENTE, NOMBRE, PRIMER_APELLDIO, SEGUNDO_APELLIDO, CORREO, TELEFONO)
values
(5, 'Sergio', 'Fernandez', 'Salazar', 'sfernandez@gmail.com', 74916348);

insert into Clientes(ID_CLIENTE, NOMBRE, PRIMER_APELLDIO, SEGUNDO_APELLIDO, CORREO, TELEFONO)
values
(6, 'Samuel', 'Brenes', 'Salazar', 'sbrenes@gmail.com', 86197352);

insert into Clientes(ID_CLIENTE, NOMBRE, PRIMER_APELLDIO, SEGUNDO_APELLIDO, CORREO, TELEFONO)
values
(7, 'Esteban', 'Gutierrez', 'Garcia', 'egutierrez@gmail.com', 72069435);

insert into Clientes(ID_CLIENTE, NOMBRE, PRIMER_APELLDIO, SEGUNDO_APELLIDO, CORREO, TELEFONO)
values
(8, 'Jimmy', 'Alfaro', 'Villalobos', 'jalfaro@gmail.com', 82031608);

insert into Clientes(ID_CLIENTE, NOMBRE, PRIMER_APELLDIO, SEGUNDO_APELLIDO, CORREO, TELEFONO)
values
(9, 'Jonathan', 'Garcia', 'Alfaro', 'jgarcia@gmail.com', 46298316);

insert into Clientes(ID_CLIENTE, NOMBRE, PRIMER_APELLDIO, SEGUNDO_APELLIDO, CORREO, TELEFONO)
values
(10, 'Alberto', 'Vega', 'Aguilar', 'avega@gmail.com', 82064197);

select * from clientes;
SELECT * FROM DOCTOR;

--Citas
insert into Citas(ID_CITA, MONTOXCOBRAR, COD_DOCTOR, ID_CLIENTE, FECHA, HORA)
values
(1, 50000, 1, 1, '01-02-23', '12:00 PM');

insert into Citas(ID_CITA, MONTOXCOBRAR, COD_DOCTOR, ID_CLIENTE, FECHA, HORA)
values
(2, 60000, 2, 2, '15-02-23', '1:00 PM');

insert into Citas(ID_CITA, MONTOXCOBRAR, COD_DOCTOR, ID_CLIENTE, FECHA, HORA)
values
(3, 40000, 3, 3, '15-02-23', '2:00 PM');

insert into Citas(ID_CITA, MONTOXCOBRAR, COD_DOCTOR, ID_CLIENTE, FECHA, HORA)
values
(4, 30000, 4, 4, '20-02-23', '12:00 PM');

insert into Citas(ID_CITA, MONTOXCOBRAR, COD_DOCTOR, ID_CLIENTE, FECHA, HORA)
values
(5, 60000, 4, 4, '25-02-23', '5:00 PM');

insert into Citas(ID_CITA, MONTOXCOBRAR, COD_DOCTOR, ID_CLIENTE, FECHA, HORA)
values
(6, 70000, 5, 5, '28-02-23', '6:00 PM');

insert into Citas(ID_CITA, MONTOXCOBRAR, COD_DOCTOR, ID_CLIENTE, FECHA, HORA)
values
(7, 40000, 6, 6, '5-03-23', '4:00 PM');

insert into Citas(ID_CITA, MONTOXCOBRAR, COD_DOCTOR, ID_CLIENTE, FECHA, HORA)
values
(8, 50000, 7, 7, '6-03-23', '11:00 AM');

insert into Citas(ID_CITA, MONTOXCOBRAR, COD_DOCTOR, ID_CLIENTE, FECHA, HORA)
values
(9, 20000, 8, 8, '10-03-23', '2:00 PM');

insert into Citas(ID_CITA, MONTOXCOBRAR, COD_DOCTOR, ID_CLIENTE, FECHA, HORA)
values
(10, 50000, 9, 9, '10-03-23', '3:00 PM');

SELECT * FROM CITAS;

SELECT * FROM CLIENTES;

SELECT * FROM CONSULTORIOSXDOCTOR;

SELECT * FROM DOCTOR;

SELECT * FROM PUESTOS;

SELECT * FROM UTENSILIOS;

--Vistas
create view v_clientes as
select * from clientes;
select * from v_clientes;

create view v_doctores as
select * from doctor;
select * from v_doctores;

create view v_consultorios as
select * from consultoriosxdoctor;
select * from v_consultorios;

create view v_puestos as
select * from puestos;
select * from v_puestos;

create view v_citas as
select * from citas;
select * from v_citas;

create view v_utensilios as
select * from utensilios;
select * from v_utensilios;

create or replace view v_psiquiatras as
select d.Nombre, d.Primer_Apellido, d.Segundo_Apellido, p.nombre_puesto 
from doctor d 
join Puestos p on d.id_puesto = p.id_puesto
where p.nombre_puesto = 'Psiquiatria';
select * from v_psiquiatras;

create or replace view v_psicologos as
select d.Nombre, d.Primer_Apellido, d.Segundo_Apellido, p.nombre_puesto 
from doctor d 
join Puestos p on d.id_puesto = p.id_puesto
where p.nombre_puesto = 'Psicologia';
select * from v_psicologos;

create or replace view v_fisioterapeutas as
select d.Nombre, d.Primer_Apellido, d.Segundo_Apellido, p.nombre_puesto 
from doctor d 
join Puestos p on d.id_puesto = p.id_puesto
where p.nombre_puesto = 'Fisioterapia';


create or replace view v_odontologos as
select d.Nombre, d.Primer_Apellido, d.Segundo_Apellido, p.nombre_puesto 
from doctor d 
join Puestos p on d.id_puesto = p.id_puesto
where p.nombre_puesto = 'Odontologia';
select * from v_odontologos;


create or replace view v_geriatras as
select d.Nombre, d.Primer_Apellido, d.Segundo_Apellido, p.nombre_puesto 
from doctor d 
join Puestos p on d.id_puesto = p.id_puesto
where p.nombre_puesto = 'Geriatria';
select * from v_geriatras;


select * from puestos;

--Procedimientos Almacenados
create or replace procedure sp_agregarClientes (
id_Cliente in clientes.id_cliente%type,
nombre in clientes.nombre%type,
primer_apellido in clientes.primer_apelldio%type,
segundo_apellido in clientes.segundo_apellido%type,
correo in clientes.correo%type,
telefono in clientes.telefono%type
) as
BEGIN
    insert into clientes(ID_CLIENTE, NOMBRE, PRIMER_APELLDIO, SEGUNDO_APELLIDO, CORREO, TELEFONO)
    values(id_Cliente, nombre, primer_apellido, segundo_apellido, correo, telefono);
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Se produjo un error: ' || SQLERRM);
END;
select * from clientes;
execute sp_agregarClientes(11,'Juan', 'Guevara', 'Quesada', 'jguevara@gmail.com', 79316847);

create or replace procedure sp_actualizarClientes(
p_id_Cliente in clientes.id_cliente%type,
p_nombre in clientes.nombre%type,
p_primer_apellido in clientes.primer_apelldio%type,
p_segundo_apellido in clientes.segundo_apellido%type,
p_correo in clientes.correo%type,
p_telefono in clientes.telefono%type
)as
BEGIN
    update clientes
    set Nombre = p_nombre,
        Primer_Apelldio = p_primer_apellido,
        Segundo_Apellido = p_segundo_apellido,
        correo = p_correo,
        telefono = p_telefono
    where ID_CLIENTE = p_id_Cliente;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Se produjo un error: ' || SQLERRM);
END;


EXECUTE sp_actualizarClientes(1, 'Jose', 'Ramirez', 'Sequeira', 'jramirez1@gmail.com', '74613284');


create or replace procedure sp_eliminarClientes(
p_id_Cliente in clientes.id_cliente%type
)as
BEGIN
    delete from clientes
    where ID_CLIENTE = p_id_Cliente;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Se produjo un error: ' || SQLERRM);
END;

create or replace procedure sp_agregarDoctores(
p_Cod_Doctor in doctor.cod_doctor%type,
p_Nombre in doctor.nombre%type,
p_Primer_Apellido in doctor.primer_apellido%type,
p_Segundo_Apellido in doctor.segundo_apellido%type,
p_Correo_Electronico in doctor.correo_electronico%type,
p_identificacion in doctor.identificacion%type,
p_telefono in doctor.telefono%type,
p_fecha_contratacion in doctor.fecha_contratacion%type,
p_salario in doctor.salario%type,
p_id_puesto in doctor.id_puesto%type,
p_num_consultorio in doctor.num_consultorio%type
)as
BEGIN
    insert into doctor(COD_DOCTOR, NOMBRE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, CORREO_ELECTRONICO, IDENTIFICACION, TELEFONO, FECHA_CONTRATACION, SALARIO, ID_PUESTO, NUM_CONSULTORIO)
    values(p_Cod_Doctor, p_Nombre, p_Primer_Apellido, p_Segundo_Apellido, p_Correo_Electronico, p_identificacion, p_telefono, p_fecha_contratacion, p_salario, p_id_puesto, p_num_consultorio);
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Se produjo un error: ' || SQLERRM);
END;
select * from doctor;
execute sp_agregarDoctores(13, 'Manuel', 'Gomez', 'Arias', 'mgomez@gmail.com', 29746138, 82931764, '15-12-15', 3000, 2, 3);

create or replace procedure sp_editarDoctores(
p_Cod_Doctor in doctor.cod_doctor%type,
p_Nombre in doctor.nombre%type,
p_Primer_Apellido in doctor.primer_apellido%type,
p_Segundo_Apellido in doctor.segundo_apellido%type,
p_Correo_Electronico in doctor.correo_electronico%type,
p_identificacion in doctor.identificacion%type,
p_telefono in doctor.telefono%type,
p_fecha_contratacion in doctor.fecha_contratacion%type,
p_salario in doctor.salario%type,
p_id_puesto in doctor.id_puesto%type,
p_num_consultorio in doctor.num_consultorio%type
)as
BEGIN
    update doctor
    set Nombre = p_Nombre,
        Primer_Apellido = p_Primer_Apellido,
        Segundo_Apellido = p_Segundo_Apellido,
        correo_electronico = p_Correo_Electronico,
        identificacion = p_identificacion,
        telefono = p_telefono,
        fecha_contratacion = p_fecha_contratacion,
        salario = p_salario,
        id_puesto = p_id_puesto,
        num_consultorio = p_num_consultorio
    where Cod_Doctor = p_Cod_Doctor;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Se produjo un error: ' || SQLERRM);   
END;

create or replace procedure sp_eliminarDoctores(
p_Cod_Doctor in doctor.cod_doctor%type
)as
BEGIN
    delete from doctor
    where cod_doctor = p_Cod_Doctor;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Se produjo un error: ' || SQLERRM);
END;

create or replace procedure sp_agregarCitas(
p_id_cita in citas.id_cita%type,
p_montoxcobrar in citas.montoxcobrar%type,
p_cod_doctor in citas.cod_doctor%type,
p_id_cliente in citas.id_cliente%type,
p_fecha in citas.fecha%type,
p_hora in citas.fecha%type
)as
BEGIN
    insert into citas(ID_CITA, MONTOXCOBRAR, COD_DOCTOR, ID_CLIENTE, FECHA, HORA)
    values(p_id_cita, p_montoxcobrar, p_cod_doctor, p_id_cliente, p_fecha, p_hora);
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Se produjo un error: ' || SQLERRM);
END;

create or replace procedure sp_eliminarCitas(
    p_id_cita in citas.id_cita%type
)as
BEGIN
    delete from citas
    where id_cita = p_id_cita;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Se produjo un error: ' || SQLERRM);
END;

create or replace procedure sp_editarCitas(
p_id_cita in citas.id_cita%type,
p_montoxcobrar in citas.montoxcobrar%type,
p_cod_doctor in citas.cod_doctor%type,
p_id_cliente in citas.id_cliente%type,
p_fecha in citas.fecha%type,
p_hora in citas.fecha%type
)as
BEGIN
    update citas
    set montoxcobrar = p_montoxcobrar,
        cod_doctor = p_cod_doctor,
        id_cliente = p_id_cliente,
        fecha = p_fecha,
        hora = p_hora
    where id_cita = p_id_cita;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Se produjo un error: ' || SQLERRM);
END;


--Funciones--

CREATE OR REPLACE FUNCTION DATOS_DOC (NOMBRE VARCHAR2, APELLIDO VARCHAR2, PUESTO VARCHAR2)
RETURN VARCHAR
IS
DATOSDOCTOR VARCHAR2(100);
BEGIN
DATOSDOCTOR:='EL NOMBRE DEL DOCTOR ES: ' ||NOMBRE|| 'DE APELLIDO: ' || APELLIDO || 'Y CON EL PUESTO DE: ' ||PUESTO;
RETURN DATOSDOCTOR;
END;


CREATE OR REPLACE FUNCTION AUMENTODOCTOR (SALARIO NUMBER, AUMENTO NUMBER)
RETURN DECIMAL
IS
TOTAL DECIMAL;
BEGIN
TOTAL:=SALARIO*AUMENTO+SALARIO;
RETURN TOTAL;
END;


CREATE OR REPLACE FUNCTION CONTA_DOC (ID_DOCTOR NUMBER, TELEFONO NUMBER, NUM_CONSULTORIO NUMBER)
RETURN VARCHAR
IS
CONTACTO_DOC NCHAR(100);
BEGIN
CONTACTO_DOC:='ID DEL DOCTOR: ' ||ID_DOCTOR|| 'NUMERO DEL DOCTOR: ' || TELEFONO || 'NUMERO DEL CONSULTORIO: ' ||NUM_CONSULTORIO;
RETURN CONTACTO_DOC;
END;



CREATE OR REPLACE FUNCTION AUMENTO_DOC (SALARIO NUMBER, AUMENTO NUMBER)
RETURN DECIMAL
IS
TOTAL DECIMAL;
BEGIN
TOTAL:=SALARIO*AUMENTO+SALARIO;
RETURN TOTAL;
END;


CREATE OR REPLACE FUNCTION DATOS_CLIENTE (NOMBRE VARCHAR2, APELLIDO VARCHAR2, ID_CLIENTE NUMBER)
RETURN VARCHAR
IS
DATOS_CLIEN VARCHAR2(100);
BEGIN
DATOS_CLIEN:='EL NOMBRE DEL CLIENTE ES: ' ||NOMBRE|| 'CON EL APELLIDO: ' || APELLIDO || 'Y ID: ' ||ID_CLIENTE;
RETURN DATOS_CLIEN;
END;



CREATE OR REPLACE FUNCTION INFO_CITAS (ID_CITA NUMBER, FECHA DATE, HORA VARCHAR)
RETURN VARCHAR
IS
DATOS_CITA VARCHAR2(100);
BEGIN
DATOS_CITA:='CITA CON EL ID: ' ||ID_CITA|| 'EL DIA: ' || FECHA || 'A LAS: ' ||HORA;
RETURN DATOS_CITA;
END;


CREATE OR REPLACE FUNCTION INFO_PUESTOS (ID_PUSTO NUMBER, NOMBRE_PUESTO VARCHAR, DESCRIPCION VARCHAR)
RETURN VARCHAR
IS
DATOS_PUESTO VARCHAR2(100);
BEGIN
DATOS_PUESTO:='PUESTO CON EL ID: ' ||ID_PUSTO|| 'CON EL NOMBRE: ' || NOMBRE_PUESTO || 'QUE HACE: ' ||DESCRIPCION;
RETURN DATOS_PUESTO;
END;



--CURSORES

SET SERVEROUTPUT ON;
DECLARE
CURSOR V_DATOS_DOCTOR IS SELECT NOMBRE, PRIMER_APELLIDO, CORREO_ELECTRONICO FROM DOCTOR WHERE ID_PUESTO = (&ID);

V_NOMBRE_DOC DOCTOR.NOMBRE%TYPE;
V_PRIMER_APELLIDO_DOC DOCTOR.PRIMER_APELLIDO%TYPE;
V_CORREO_DOC DOCTOR.CORREO_ELECTRONICO%TYPE;
BEGIN
OPEN V_DATOS_DOCTOR;
FETCH V_DATOS_DOCTOR INTO V_NOMBRE_DOC, V_PRIMER_APELLIDO_DOC, V_CORREO_DOC;
CLOSE V_DATOS_DOCTOR;

DBMS_OUTPUT.PUT_LINE('Los datos del doctor son: ' || V_NOMBRE_DOC || ' ' || V_PRIMER_APELLIDO_DOC || ' -- ' || V_CORREO_DOC);

END;


SET SERVEROUTPUT ON;
DECLARE
CURSOR V_DATOS_CITA IS SELECT ID_CLIENTE, FECHA, HORA FROM CITAS WHERE ID_CITA = (&ID_CITA);

V_HORA_CITA CITAS.HORA%TYPE;
V_FECHA_CITA CITAS.FECHA%TYPE;
V_ID_CLIENTE_CITA CITAS.ID_CLIENTE%TYPE;
BEGIN
OPEN V_DATOS_CITA;
FETCH V_DATOS_CITA INTO V_ID_CLIENTE_CITA, V_FECHA_CITA, V_HORA_CITA;
CLOSE V_DATOS_CITA;

DBMS_OUTPUT.PUT_LINE('Cliente con el id: ' || V_ID_CLIENTE_CITA || ' su cita es el ' || V_FECHA_CITA || ' a las ' || V_HORA_CITA);

END;



SET SERVEROUTPUT ON;
DECLARE
CURSOR V_UTENSILIOS IS SELECT NOMBRE_UTENSILIO, MARCA, ESTADO FROM UTENSILIOS WHERE NUM_UTENSILIO = (&NUM);

V_NOM_UTENSILIO UTENSILIOS.NOMBRE_UTENSILIO%TYPE;
V_MARCA_UTENSILIO UTENSILIOS.MARCA%TYPE;
V_ESTADO_UTENSILIO UTENSILIOS.ESTADO%TYPE;
BEGIN
OPEN V_UTENSILIOS;
FETCH V_UTENSILIOS INTO V_NOM_UTENSILIO, V_MARCA_UTENSILIO, V_ESTADO_UTENSILIO;
CLOSE V_UTENSILIOS;

DBMS_OUTPUT.PUT_LINE('El utensilio: ' || V_NOM_UTENSILIO || ' de la marca ' || V_MARCA_UTENSILIO || ' está ' || V_ESTADO_UTENSILIO);

END;


DECLARE
    CURSOR V_cursorPuestos is
    select nombre_puesto, descripcion from puestos where id_puesto = 1;
    
    v_nombrePuesto puestos.nombre_puesto%TYPE; 
    v_descripcion puestos.descripcion%TYPE;
BEGIN
    OPEN V_cursorPuestos;
    FETCH V_cursorPuestos into v_nombrePuesto, v_descripcion;
    CLOSE V_cursorPuestos;
    DBMS_OUTPUT.PUT_LINE('Nombre del puesto:' || v_nombrePuesto || '  Descipcion: '|| v_descripcion);
END;


SET SERVEROUTPUT ON;
DECLARE
CURSOR V_CLIENTES IS SELECT NOMBRE, PRIMER_APELLDIO, CORREO FROM CLIENTES WHERE ID_CLIENTE = (&ID_CLIENTE);

V_NOM_CLIENTE CLIENTES.NOMBRE%TYPE;
V_APELLIDO_CLIENTE CLIENTES.PRIMER_APELLDIO%TYPE;
V_CORREO_CLIENTE CLIENTES.CORREO%TYPE;
BEGIN
OPEN V_CLIENTES;
FETCH V_CLIENTES INTO V_NOM_CLIENTE, V_APELLIDO_CLIENTE, V_CORREO_CLIENTE;
CLOSE V_CLIENTES;

DBMS_OUTPUT.PUT_LINE('Los datos del cliente son: ' || V_NOM_CLIENTE || ' ' || V_APELLIDO_CLIENTE || ' -- ' || V_CORREO_CLIENTE);

END;


























