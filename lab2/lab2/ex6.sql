select name, title
from Movie
inner join Rating R1 using(mId)
inner join Rating R2 using(rId)
inner join Reviewer using(rId)
where R1.mId = R2.mId and R1.ratingDate < R2.ratingDate and R1.stars < R2.stars;
