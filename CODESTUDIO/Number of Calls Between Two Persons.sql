select 
least(from_id,to_id) as person1,
greatest(from_id,to_id) as person2,
count(*) as call_count,
sum(duration) as total_duration
from Calls
group by 1,2;

person1 | person2 | call_count | total_duration 
---------+---------+------------+----------------
       1 |       3 |          1 |             20
       3 |       4 |          4 |            999
       1 |       2 |          2 |             70
(3 rows)