select h1.name,h1.grade,h2.name,h2.grade 
from Likes f
join highschooler h1
on f.ID1=h1.ID
join highschooler h2
on f.ID2=h2.ID
where abs(h1.grade-h2.grade)>=2
order by h1.name