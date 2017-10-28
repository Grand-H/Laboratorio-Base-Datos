use Escolar_1

select * from Alumno
select * from Calificaciones
select * from Carrera
select * from Grupo_Alumno
select * from Materia
select * from Nivel
select * from Usuario

create view A1 as
select U.*, U.IdUsuario as Usuario, Ca.IdUsuario as test
from Usuario U
inner join Alumno as Ca on Ca.IdAlumno = U.IdUsuario

select * from A1

create view A2 as
select A.*, A.IdAlumno as Alumno, Ca.IdAlumno as test
from Alumno A
join Grupo_Alumno as Ca on Ca.IdAlumno = A.IdAlumno

select * from A2

create view A3 as
select C.*, C.IdCarrera as Carrera, Ca.IdCarrera as test
from Carrera C
full join Materia as Ca on Ca.IdCarrera = C.IdCarrera

select * from A3

create view A4 as
select N.*, N.IdNivel as Nivel, Ca.IdNivel as test
from Nivel N
left join Carrera as Ca on Ca.IdNivel = N.IdNivel

select * from A4

create view A5 as
select C.*, C.IdGrupoMateria as Carrera, Ca.IdGrupoMateria as test
from Calificaciones C
right join Grupo_Alumno as Ca on Ca.IdGrupoMateria = C.IdGrupoMateria

select * from A5

create view A6 as
select C.*, C.IdGrupoMateria as Carrera, Ca.IdGrupoMateria as test
from Calificaciones C
left join Grupo_Alumno as Ca on Ca.IdGrupoMateria = C.IdGrupoMateria

select * from A6

with A3 as (select c.NomCarrera, COUNT(m.IdCarrera) from Carrera as c, Materia as m group by NomCarrera) select * from A3

create table #DatosAlumno (IdAlumno varchar(7),DatNom varchar(50),DatApe varchar(50))

select * from #DatosAlumno