select h1.name,h1.grade,h2.name,h2.grade
from Likes l
join highschooler h1
on l.ID1=h1.ID
join highschooler h2
on l.ID2=h2.ID
where h2.ID not in (
	select Likes.ID1 as ID
    from Likes
    where h2.ID=Likes.ID1
)
order by h1.name
