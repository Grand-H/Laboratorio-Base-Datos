create procedure A_1
as begin
select U.*, U.IdUsuario as Usuario, Ca.IdUsuario as test
from Usuario U
inner join Alumno as Ca on Ca.IdAlumno = U.IdUsuario
end

exec A_1

create procedure A_2
as begin
select A.*, A.IdAlumno as Alumno, Ca.IdAlumno as test
from Alumno A
join Grupo_Alumno as Ca on Ca.IdAlumno = A.IdAlumno
end

exec A_2

create procedure A_3
as begin
select C.*, C.IdCarrera as Carrera, Ca.IdCarrera as test
from Carrera C
full join Materia as Ca on Ca.IdCarrera = C.IdCarrera
end

exec A_3

create procedure A_4
as begin
select N.*, N.IdNivel as Nivel, Ca.IdNivel as test
from Nivel N
left join Carrera as Ca on Ca.IdNivel = N.IdNivel
end

exec A_4

create procedure A_5
as begin
select C.*, C.IdGrupoMateria as Carrera, Ca.IdGrupoMateria as test
from Calificaciones C
right join Grupo_Alumno as Ca on Ca.IdGrupoMateria = C.IdGrupoMateria
end

exec A_5

create function fnresta (@int1 int, @int2 int)
returns int
as
begin
	RETURN @int1 - @int2
end

select dbo.fnresta (10,5)

create trigger tr_update
on Alumno
after update
as
begin
	select * from inserted
	select * from deleted
end

update Alumno set IdSemestreActual = 4 where IdSemestreActual = 3

create trigger tr_usuario
on Usuario
instead of update
as
begin
	select * from inserted
	select * from deleted
end

update Usuario set Pass = 1234567 where IdUsuario = 1661464