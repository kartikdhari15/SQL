select distinct(p.session_id) from Playback p,Ads a
where p.customer_id=a.customer_id and
a.timestamp not between p.start_time and p.end_time
order by session_id asc;

 session_id 
------------
          2
          3
          5
(3 rows)
