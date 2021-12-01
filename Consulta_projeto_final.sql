--Contagem dos alunos na base:
select sum (total_al_du) as Total_participantes from alunos_curso 
----------------------------------------------------------------
--Contagem de alunos por curso:
select sum (al_espanhol) as Alunos_espanhol
	  ,sum (al_ingles) 	 as Alunos_ingles
from alunos_curso
----------------------------------------------------------------
--Soma de escolas por munic�pio e alunos por curso:
select mun
	 ,count(nomesc) as escola
	 ,sum(al_espanhol) 	as curso_espanhol
	 ,sum (al_ingles) 	as curso_ingles
from alunos_curso
group by mun
order by 2 desc
----------------------------------------------------------------

