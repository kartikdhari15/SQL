select max(Salary) as Salary
from Employee
where Salary not in (
                    select max(Salary) as Salary
                    from Employee
                    );

*OR*

select distinct(Salary) 
from Employee 
order by Salary desc 
limit 1 offset 1;

 salary 
--------
    200
(1 row)


