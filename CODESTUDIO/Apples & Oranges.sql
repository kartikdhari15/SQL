INTERMEDIATE:

select *,sold_num-lead(sold_num,1) over(partition by sale_date)
as diff from Sales;

 sale_date  |  fruit  | sold_num | diff 
------------+---------+----------+------
 2020-05-01 | apples  |       10 |    2
 2020-05-01 | oranges |        8 |     
 2020-05-02 | apples  |       15 |    0
 2020-05-02 | oranges |       15 |     
 2020-05-03 | apples  |       20 |   20
 2020-05-03 | oranges |        0 |     
 2020-05-04 | apples  |       15 |   -1
 2020-05-04 | oranges |       16 |     
(8 rows)

FINAL:

select sale_date,diff
from (
     select *,sold_num-lead(sold_num,1) over(partition by sale_date)
     as diff from Sales
     )x
where fruit='apples'
order by sale_date;

 sale_date  | diff 
------------+------
 2020-05-01 |    2
 2020-05-02 |    0
 2020-05-03 |   20
 2020-05-04 |   -1
(4 rows)