insert into Rating
select (select rId from Reviewer where name = "James Cameron"), mId, 5, null
from Movie
