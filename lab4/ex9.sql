select h.name, h.grade
from Highschooler h
inner join Friend f
on h.ID = f.ID1
group by f.ID1,h.name,h.grade
having count(*) = (
  select max(countf)
  from (
    select count(*) as countf
    from Friend
    group by ID1
  ) x
)