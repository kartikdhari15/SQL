select gender,day,
sum(score_points) over (partition by gender order by day) as total
from Scores
order by gender;

 gender |    day     | total 
--------+------------+-------
 F      | 2019-12-30 |    17
 F      | 2019-12-31 |    40
 F      | 2020-01-01 |    57
 F      | 2020-01-07 |    80
 M      | 2019-12-18 |     2
 M      | 2019-12-25 |    13
 M      | 2019-12-30 |    26
 M      | 2019-12-31 |    29
 M      | 2020-01-07 |    36
(9 rows)

