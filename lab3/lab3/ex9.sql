select name,grade
from highschooler h
inner join likes l
on h.id=l.id2
group by id2,name,grade
having count(*)>=2