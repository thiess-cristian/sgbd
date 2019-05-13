select (
	select avg(avgBefore) avgTotal from(
		select avg(stars) as avgBefore
		from movie 
		inner join rating
		on movie.mID=rating.mID
		where year<1980
		group by movie.mID
	) rating
	)-
	(
	select avg(avgAfter) avgTotal from(
		select avg(stars) as avgAfter
		from movie 
		inner join rating
		on movie.mID=rating.mID
		where year>1980
		group by movie.mID
	) rating
) difference