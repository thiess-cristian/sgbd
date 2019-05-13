select distinct h1.name, h1.grade, h2.name, h2.grade, h3.name, h3.grade
from Highschooler h1, Highschooler h2, Highschooler h3, Likes l, Friend f1, Friend f2
where (h1.ID = l.ID1 and h2.ID = l.ID2) 
	  and h2.ID not in (
			select ID2
			from Friend
			where ID1 = h1.ID
	) and (h1.ID = f1.ID1 and h3.ID = f1.ID2) 
      and (h2.ID = f2.ID1 and h3.ID = f2.ID2);

