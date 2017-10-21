use Escolar_1

select * from Alumno
select * from Calificaciones
select * from Carrera
select * from Grupo_Alumno
select * from Materia
select * from Nivel
select * from Usuario

select DatNom, IdAlumno from Alumno group by DatNom, IdAlumno order by IdAlumno

select MatNom, Count(Calificacion), SUM(Calificacion), AVG(Calificacion) from Materia, Calificaciones group by MatNom
select c.NomCarrera, COUNT(m.IdCarrera) from Carrera as c, Materia as m group by NomCarrera

select MatNom, Count(Calificacion), SUM(Calificacion), AVG(Calificacion) from Materia, Calificaciones group by MatNom, Calificacion having (Calificacion)>90
select c.NomCarrera, COUNT(m.IdCarrera) from Carrera as c, Materia as m group by NomCarrera having (c.NomCarrera)= 'Seguridad en Tecnologias de Informacion'

select MatNom, Count(Calificacion), SUM(Calificacion), AVG(Calificacion) from Materia, Calificaciones where Calificacion > 90 group by MatNom, Calificacion
select c.NomCarrera, COUNT(m.IdCarrera) from Carrera as c, Materia as m where c.NomCarrera= 'Seguridad en Tecnologias de Informacion' group by NomCarrera

Select top 3 * from Calificaciones