select user_id,max(time_stamp) as last_stamp
from Logins where
extract(year from time_stamp)=2020
group by user_id;

 user_id |     last_stamp      
---------+---------------------
       2 | 2020-01-16 02:49:50
       6 | 2020-06-30 15:06:07
       8 | 2020-12-30 00:46:50
(3 rows)