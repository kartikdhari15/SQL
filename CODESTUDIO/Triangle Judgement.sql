select *,
CASE
WHEN x+y>z and x+z>y and y+z>x THEN 'Yes'
else 'No'
end as triangle
from triangle;

 x  | y  | z  | triangle 
----+----+----+----------
 13 | 15 | 30 | No
 10 | 20 | 15 | Yes
(2 rows)
