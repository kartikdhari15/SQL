with post_ids as(select distinct(sub_id) as post_id
               from Submissions where parent_id is null)
select 
post_ids.post_id,coalesce(p.number_of_comments,0) as number_of_comments
from
post_ids
left join (select parent_id as post_id,count(distinct(sub_id)) 
           as number_of_comments from Submissions where parent_id is not null 
           group by parent_id)p on post_ids.post_id=p.post_id
           order by post_ids.post_id

 post_id | number_of_comments 
---------+--------------------
       1 |                  3
       2 |                  2
      12 |                  0
(3 rows)

