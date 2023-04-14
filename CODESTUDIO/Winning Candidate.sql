select
t1.Name as "Name" 
from Candidate t1
inner join(
    select CandidateId,count(*) from Vote
    group by 1
    order by 2 desc 
    limit 1
) t2 on t1.id=t2.CandidateId;

 Name 
------
 B
(1 row)