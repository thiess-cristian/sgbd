delete from Rating
where mId in (
  select mId
  from Movie
  where year < 1970 or year > 2000
) and stars < 4