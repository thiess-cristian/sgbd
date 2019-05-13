set SQL_SAFE_UPDATES = 0;
update Movie
set year = year + 25
where mId in (
  select mId
  from  (select * from Movie) as Movie2 
  inner join Rating using(mId)
  group by mId
  having avg(stars) >= 4
)




        

