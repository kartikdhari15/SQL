with follower_count as
(
select t1.user_id as user1_id,
t2.user_id as user2_id,
count(*) as common_follower_count
from Relations t1
inner join Relations t2 on 
t1.follower_id=t2.follower_id
and t1.user_id<t2.user_id 
group by user1_id,user2_id 
)

select user1_id,user2_id from follower_count 
where common_follower_count=
(select max(common_follower_count) from follower_count);

 user1_id | user2_id 
----------+----------
        1 |        7
(1 row)


