select customer_id
from Customer
group by customer_id
having count(distinct(product_key))=(select count(*) from Product);

 customer_id 
-------------
           1
           3
(2 rows)

