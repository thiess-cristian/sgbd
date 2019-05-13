select h1.name 
from friend f
join highschooler h1
on f.ID1=h1.ID
join highschooler h2
on f.ID2=h2.ID
where h2.name='Gabriel'
order by h1.name
