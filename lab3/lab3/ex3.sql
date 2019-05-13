select h1.name, h1.grade, h2.name, h2.grade
from Highschooler h1, Highschooler h2, Likes l1, Likes l2
where (h1.ID = l1.ID1 and h2.ID = l1.ID2) 
		and (h2.ID = l2.ID1 and h1.ID = l2.ID2) 
		and h1.name < h2.name
order by h1.name, h2.name;