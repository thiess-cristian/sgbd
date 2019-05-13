select avg(countF) as avgFriend
from (
  select count(*) as countF
  from Friend
  group by ID1
) friendCount