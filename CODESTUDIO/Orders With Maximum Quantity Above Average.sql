select order_id from OrdersDetails 
group by order_id
having max(quantity)>
(select avg(quantity) from OrdersDetails);

 order_id 
----------
        3
        1
(2 rows)



