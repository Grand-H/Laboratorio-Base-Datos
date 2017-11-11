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

insert into Carrera values ('C3A4DA6D-1AF5-4149-BA0F-C81405EB708A','48BB5189-2DBF-4C32-ACB4-CE65764FEC01','Seguridad en Tecnologias de Informacion','8')
insert into Carrera values ('5156C65B-9943-4662-B42D-9FA4248DCF3A','48BB5189-2DBF-4C32-ACB4-CE65764FEC01','Actuaria','8')
insert into Carrera values ('AD986142-AB2F-45DA-83A2-89E9369DC789','48BB5189-2DBF-4C32-ACB4-CE65764FEC01','Animacion Digital','8')

insert into Grupo_Alumno values ('1661464','100')
insert into Grupo_Alumno values ('1641464','102')
insert into Grupo_Alumno values ('1461464','101')

insert into Materia values ('BB972D00-9630-4202-9EAF-F1F8C899A411','C3A4DA6D-1AF5-4149-BA0F-C81405EB708A','Algebra','3','1')
insert into Materia values ('585E2CF7-F413-42B0-AFBA-5237C870EB8D','C3A4DA6D-1AF5-4149-BA0F-C81405EB708A','Calculo Diferencial','3','1')
insert into Materia values ('D57F5178-D960-49D8-9459-10D9480B358A','C3A4DA6D-1AF5-4149-BA0F-C81405EB708A','Ingles','3','1')

insert into Nivel values ('48BB5189-2DBF-4C32-ACB4-CE65764FEC01','Licenciatura')
insert into Nivel values ('F63DA766-575E-4515-91AA-CE01B166AE0B','Maestria')
insert into Nivel values ('D2A7D2E7-6774-4D06-A323-68B09F402606','Doctorado')

insert into Usuario values ('1661464','100000','1000000')
insert into Usuario values ('1461464','100000','1000000')
insert into Usuario values ('1641464','100000','1000000')

update Materia set Frecuencia = 4 where MatNom = 'Ingles'
update Materia set Frecuencia = 5 where MatNom = 'Algebra'
update Materia set Frecuencia = 7 where MatNom = 'Calculo Diferencial'
update Materia set SemestreMat = 4 where MatNom = 'Ingles'
update Materia set SemestreMat = 2 where MatNom = 'Algebra'

delete from Alumno where IdAlumno = 1661464
delete from Materia where IdMateria = 'BB972D00-9630-4202-9EAF-F1F8C899A411'
delete from Alumno where IdAlumno = 1461464
delete from Calificaciones where Calificacion = 50
delete from Materia where IdMateria = 'D57F5178-D960-49D8-9459-10D9480B358A'
