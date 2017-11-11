use Escolar_Horarios
select * from Alumno 
select * from Carrera

create procedure sp_UpdatePass (@Id int, @dato varchar(50))
as begin
	update Usuario set pass= @dato where IdUsuario = @id
end

exec sp_UpdatePass 1661464, 'ctoro73'

create trigger tr_UpdatePass
on Usuario
after update
as
begin
	select * from inserted
	select * from deleted
end


create trigger tr_mensajes
on Alumno
for insert
as 
print 'se agrego un nuevo alumno'

insert into Usuario values (1678575, 'Luzz', '12345')

insert into Alumno values (1678575, 'Luz', 19, '01-02-1997', 'A', 1678575)

create procedure sp_Maestros_Asignaturas 
 @idMat int 
as
begin 
select ma.NomMaestro, ma.Apellidos, m.MatNom
from Maestro ma inner join Materia_Maestro mm
on ma.IdMaestro = mm.IdMaestro
inner join Materia m 
on mm.IdMateria = m.IdMateria
where  mm.IdMateria = @idMat
end
go
exec sp_Maestros_Asignaturas 33331

select * from Materia_Maestro
create procedure sp_dificultad 
@nombreC varchar(50)
as 
begin 
select f.NomCarrera, f.SemCarrera, n.nomNivel
from Carrera f inner join Nivel n 
on f.IdNivel = n.IdNivel
where f.NomCarrera = @nombreC 
end 
go
exec sp_dificultad Matemáticas

create procedure sp_alumnos_por_salon
@idgrupo int
as
begin
select s.Capacidad, ca.IdSalon
from Salon s inner join Grupo ca 
on s.IdSalon = ca.IdSalon 
where s.IdSalon = @idgrupo
end
go
exec sp_alumnos_por_salon 66662


create procedure sp_Alumno_Registrados 
@idUs int
as
begin
select a.StausReg , a.NomAlu, a.IdAlumno, u.nombreL
from Alumno a inner join Usuario u
on a.IdUsuario = u.IdUsuario
where a.IdAlumno= @idUs
end
go
exec sp_Alumno_Registrados 1667093

create procedure sp_grado_de_maestros
@nombreMae varchar(50)
 as
 begin 
select m.NomMaestro, m.Apellidos, t.nomTitulo
from Maestro m inner join Maestro_Titulo mat
on m.IdMaestro = mat.IdMaestro
inner join Titulo t
on mat.IdTitulo= t.IdTitulo
where m.NomMaestro = @nombreMae
end
go 
select * from Maestro
exec sp_grado_de_maestros Hector

