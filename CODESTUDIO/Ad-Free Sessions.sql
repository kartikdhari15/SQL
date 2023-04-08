select session_id
from Playback
where session_id not in
(
    select session_id from Playback p
    inner join Ads a on p.customer_id=a.customer_id and 
    (a.timestamp>=p.start_time and a.timestamp<=p.end_time)
)

 session_id 
------------
          2
          3
          5
(3 rows)

