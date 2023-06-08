select q.id,q.year,coalesce(n.NPV,0) as NPV
from Queries q left join 
NPV n on q.id=n.id and q.year=n.year;

 id | year | npv 
----+------+-----
  1 | 2019 | 113
  2 | 2008 | 121
  3 | 2009 |  21
  7 | 2018 |   0
  7 | 2019 |   0
  7 | 2020 |  30
 13 | 2019 |  40
(7 rows)