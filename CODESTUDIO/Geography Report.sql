select *,row_number() over (partition by continent order by name)
as row_id from student

  name  | continent | row_id 
--------+-----------+--------
 Jack   | America   |      1
 Jane   | America   |      2
 Xi     | Asia      |      1
 Pascal | Europe    |      1
(4 rows)

select 
    max(case when continent='America' then name end) as America,
    max(case when continent='Asia' then name end) as Asia,
    max(case when continent='Europe' then name end) as Europe
from
(
select *,row_number() over (partition by continent order by name)
as row_id from student
) as t
group by row_id

 america | asia | europe 
---------+------+--------
 Jane    |      | 
 Jack    | Xi   | Pascal
(2 rows)