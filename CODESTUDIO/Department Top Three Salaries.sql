select dt.Name as "Department",
tmp.Name as "Employee",
tmp.Salary as "Salary"
from Department dt
inner join
(select *,
dense_rank() over (partition by DepartmentId order by Salary desc)
as r from Employee)tmp 
on dt.Id=tmp.DepartmentId
where tmp.r<=3;

 Department | Employee | Salary 
------------+----------+--------
 IT         | Will     |  70000
 IT         | Randy    |  85000
 IT         | Joe      |  85000
 IT         | Max      |  90000
 Sales      | Sam      |  60000
 Sales      | Henry    |  80000
(6 rows)