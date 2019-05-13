select count(FL1.Id1) + count(FL2.Id2) - 1 as friends
from Highschooler H
    left join Friend FL1 
    on FL1.Id1= H.Id
    left join Friend FL2 
    on FL2.Id2 = H.Id
group by H.Id
having H.Id =  (select ID from Highschooler where name = 'Cassandra');