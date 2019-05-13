select movie.title,rating.stars
from movie
inner join (
	select rating.mID,max(stars) as stars
    from rating
    group by rating.mID
) rating
on movie.mID=rating.mID
order by movie.title