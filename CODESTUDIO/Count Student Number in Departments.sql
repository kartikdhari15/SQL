select 
d.dept_name,coalesce(student_number,0) as student_number
from department d
left join(
    select dept_id,count(*) as student_number
    from student
    group by dept_id
) std_count on d.dept_id=std_count.dept_id
order by 2 desc,1 asc;

  dept_name  | student_number 
-------------+----------------
 Engineering |              2
 Science     |              1
 Law         |              0
(3 rows)