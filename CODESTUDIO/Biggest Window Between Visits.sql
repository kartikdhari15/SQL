select user_id,max(duration) as biggest_window
from 
(select user_id,visit_date,
coalesce(lead(visit_date,1) over (partition by user_id order by visit_date)
,'2021-1-1') - visit_date as duration from UserVisits)tmp
group by user_id;

 user_id | biggest_window 
---------+----------------
       1 |             39
       2 |             65
       3 |             51
(3 rows)

