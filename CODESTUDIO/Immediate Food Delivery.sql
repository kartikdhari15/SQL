select 
ROUND(sum(case when order_date=customer_pref_delivery_date then 1
else 0 end)*100/count(*),2) as immediate_percentage
from 
(select *,
row_number() over (partition by customer_id 
order by order_date)
as r from delivery) tmp
where r=1;

 immediate_percentage 
----------------------
                50.00
(1 row)

