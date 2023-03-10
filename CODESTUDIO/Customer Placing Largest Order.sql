select customer_number
from
    (select customer_number,
    count(*) as total_orders_by_customer from Orders 
    group by customer_number
    order by total_orders_by_customer desc)
as x limit 1;

 customer_number 
-----------------
               3
(1 row)



