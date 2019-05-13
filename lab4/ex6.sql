select name, grade
from Highschooler h1
where grade not in (
  select h2.grade
  from Friend, Highschooler h2
  where h1.ID = Friend.ID1 and h2.ID = Friend.ID2
)
