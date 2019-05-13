select reviewer.name
from reviewer 
inner join rating 
on reviewer.rID=rating.rID
where rating.ratingDate is null