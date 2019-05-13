select h1.name, h1.grade, h2.name, h2.grade, h3.name, h3.grade
from Highschooler h1, Highschooler h2, Highschooler h3, Likes l1, Likes l2
where h1.ID = l1.ID1 
	and h2.ID = l1.ID2 
    and (h2.ID = l2.ID1 and h3.ID = l2.ID2 and h3.ID <> h1.ID)
