select name, grade
from Highschooler H1
where ID not in (
  select ID1
  from Friend, Highschooler H2
  where H1.ID = Friend.ID1 
		and H2.ID = Friend.ID2 
		and H1.grade <> H2.grade
)
order by grade, name;