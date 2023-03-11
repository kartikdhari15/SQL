select 'Low Salary' as category,count(*) 
as accounts_count
from Accounts where income<20000
union all
select 'Average Salary' as category,count(*) 
as accounts_count
from Accounts where 
income>=20000 and income<=50000
union all
select 'High Salary' as category,count(*) 
as accounts_count
from Accounts where income>50000;

    category    | accounts_count 
----------------+----------------
 Low Salary     |              1
 Average Salary |              0
 High Salary    |              3
(3 rows)
