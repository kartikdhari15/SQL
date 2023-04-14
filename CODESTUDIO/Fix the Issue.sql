select lower(trim(product_name)) as product_name,
substring(cast(sale_date as varchar(10)),1,7) as sale_date,
count(*) as total
from sales
group by 1,2
order by 1,2;

 product_name | sale_date | total 
--------------+-----------+-------
 lckeychain   | 2000-02   |     2
 lcphone      | 2000-01   |     2
 lcphone      | 2000-02   |     1
 matryoshka   | 2000-03   |     1
(4 rows)