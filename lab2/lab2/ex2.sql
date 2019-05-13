SELECT m.year 
from movie m 
inner join rating  r
on r.mID=m.mID
where stars="4" or stars="5"
group by year
order by year
