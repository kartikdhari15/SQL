select w.name as warehouse_name,
sum(w.units*p.Width*p.Length*p.Height) as volume
from Warehouse w 
inner join Products p on w.product_id=p.product_id
group by w.name;

 warehouse_name | volume 
----------------+--------
 LCHouse2       |  20250
 LCHouse1       |  12250
 LCHouse3       |    800
(3 rows)
