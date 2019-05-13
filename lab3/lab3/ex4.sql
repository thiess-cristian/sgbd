select name,grade
from Highschooler
where ID not in(
	select Likes.ID1 as ID
    from Likes
)
and ID not in(
	select Likes.ID2 as ID
    from Likes
)
order by grade,name
