Use Escolar_Horarios
go 
select * from Calificaciones
select * from Carrera
select * from Grupo
select * from Grupo_Alumno
select * from Grupo_Materia
select * from Maestro
select * from Maestro_Titulo
select * from Titulo
select * from Materia
select * from Materia_Maestro
select * from Nivel
select * from Salon
select * from Turno
select * from Usuario 
select * from Alumno 

update Usuario
set pass = 'piedequeso1'
where IdUsuario = 1667093
go 

update Maestro
set NomMaestro= 'Maria'
where  IdMaestro = 44441
go
 
update Maestro
set Apellidos = 'Pecina Jimenez'
where IdMaestro = 44442
go 

update Calificaciones
set Calificación = 70
where IdGrupoAlumno = 88883
go

create view Maestros_Asignaturas as
select ma.NomMaestro, ma.Apellidos, m.MatNom
from Maestro ma inner join Materia_Maestro mm
on ma.IdMaestro = mm.IdMaestro
inner join Materia m 
on mm.IdMateria = m.IdMateria

create view dificultad as 
select f.NomCarrera, f.SemCarrera, n.nomNivel
from Carrera f inner join Nivel n 
on f.IdNivel = n.IdNivel

create view alumnos_por_salon as
select s.Capacidad, ca.IdSalon
from Salon s inner join Grupo ca 
on s.IdSalon = ca.IdSalon 

create view Alumno_registrados as
select a.StausReg , a.NomAlu, a.IdAlumno, u.nombreL
from Alumno a inner join Usuario u
on a.IdUsuario = u.IdUsuario

create view  grado_de_maestros as
select m.NomMaestro, m.Apellidos, t.nomTitulo
from Maestro m inner join Maestro_Titulo mat
on m.IdMaestro = mat.IdMaestro
inner join Titulo t
on mat.IdTitulo= t.IdTitulo

create view MaxCreditoporSem as
select MAX (cre.MatCred) as [CrediMaxi]
from Materia cre inner join Carrera ca
on cre.IdCarrera= ca.IdCarrera
inner join Nivel ni
on ca.IdNivel = ni.IdNivel
group by cre.MatCred

select * from Alumno where Alumno.Edad = (select Edad from Alumno where Edad = 23)
select * from Alumno where Alumno.Edad in (select Edad from Alumno where Edad = 20)
select * from Alumno where Alumno.Edad not in (select Edad from Alumno where Edad = 20)

create table #Horario(idHorario int not null, totalMateriasxsem int, semestreactual int )
insert into #Horario values (1, 10, 3)
select * from #Horario