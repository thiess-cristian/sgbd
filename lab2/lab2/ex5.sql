select reviewer.name,movie.title,rating.stars,rating.ratingDate
from movie
inner join rating
on rating.mID=movie.mID
inner join reviewer
on rating.rID=reviewer.rID
order by reviewer.name,movie.title,rating.stars