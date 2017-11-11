select A.NomAlu as 'Nombre', A.Edad
from Alumno as A
group by A.NomAlu, A.Edad
order by A.Edad desc

select count(M.NumFrecuencia) as 'Cantidad de Materias', M.NumSemestre as 'Semestre'
from  Materia as M
group by M.NumSemestre

select top 3 Ma.NomMaestro
from Maestro as Ma
group by Ma.NomMaestro
