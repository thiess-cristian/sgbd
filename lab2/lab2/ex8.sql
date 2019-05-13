select movie.title,rating.spread
from movie
inner join (
	select rating.mID,max(stars)-min(stars) as spread
    from rating
    group by rating.mID
)rating
on movie.mID=rating.mID
order by spread desc