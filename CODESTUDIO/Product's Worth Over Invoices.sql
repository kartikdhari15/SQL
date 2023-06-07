select p.name,sum(i.rest) as rest,sum(i.paid) as paid,
sum(i.canceled) as canceled,sum(i.refunded) as refunded
from Product p join Invoice i
on p.product_id=i.product_id
group by 1
order by 1;

 name  | rest | paid | canceled | refunded 
-------+------+------+----------+----------
 bacon |    3 |    3 |        3 |        3
 ham   |    2 |    4 |        5 |        3
(2 rows)

