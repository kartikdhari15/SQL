select *,
lag(Temperature,1) over(order by recordDate) as prevday_temp
from Weather;

id | recorddate | temperature | prevday_temp 
----+------------+-------------+--------------
  1 | 2015-01-01 |          10 |          999
  2 | 2015-01-02 |          25 |           10
  3 | 2015-01-03 |          20 |           25
  4 | 2015-01-04 |          30 |           20
(4 rows)

select id as "Id" from
(
    select *,
    coalesce(lag(Temperature,1) over(order by recordDate),999) 
    as prevday_temp
    from Weather
) tmp
where Temperature>prevday_temp;

 Id 
----
  2
  4
(2 rows)