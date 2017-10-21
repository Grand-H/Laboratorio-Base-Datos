use Escolar_1

select * from Alumno
select * from Calificaciones
select * from Carrera
select * from Grupo_Alumno
select * from Materia
select * from Nivel
select * from Usuario

insert into Alumno values ('1661464','1661464',3,'Hector','Hernadez', '1997/10/28' ,'H')
insert into Alumno values ('1461464','1461464',3,'Miranda','Gomez', '1998/11/02' ,'M')
insert into Alumno values ('1641464','1641464',3,'Hector','Ramirez', '1997/10/28' ,'H')

insert into Calificaciones values ('100','100','100')
insert into Calificaciones values ('100','100','70')
insert into Calificaciones values ('100','100','50')

insert into Carrera values (NEWID(),'48BB5189-2DBF-4C32-ACB4-CE65764FEC01','Seguridad en Tecnologias de Informacion','8')
insert into Carrera values (NEWID(),'48BB5189-2DBF-4C32-ACB4-CE65764FEC01','Actuaria','8')
insert into Carrera values (NEWID(),'48BB5189-2DBF-4C32-ACB4-CE65764FEC01','Animacion Digital','8')

insert into Grupo_Alumno values ('1661464','100')
insert into Grupo_Alumno values ('1641464','102')
insert into Grupo_Alumno values ('1461464','101')

insert into Materia values (NEWID(),'C3A4DA6D-1AF5-4149-BA0F-C81405EB708A','Algebra','3','1')
insert into Materia values (NEWID(),'C3A4DA6D-1AF5-4149-BA0F-C81405EB708A','Calculo Diferencial','3','1')
insert into Materia values (NEWID(),'C3A4DA6D-1AF5-4149-BA0F-C81405EB708A','Ingles','3','1')

insert into Nivel values (NEWID(),'Licenciatura')
insert into Nivel values (NEWID(),'Maestria')
insert into Nivel values (NEWID(),'Doctorado')

insert into Usuario values ('1661464','100000','1000000')
insert into Usuario values ('1461464','100000','1000000')
insert into Usuario values ('1641464','100000','1000000')