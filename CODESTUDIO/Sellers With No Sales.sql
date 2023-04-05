select 
Seller.seller_name
from Seller 
left join (select distinct(seller_id) from Orders
           where extract(year from sale_date)=2020) as Orders_2020
           on Seller.seller_id=Orders_2020.seller_id
           where Orders_2020.seller_id is null
           order by Seller.seller_name; 

 seller_name 
-------------
 Frank
(1 row)

