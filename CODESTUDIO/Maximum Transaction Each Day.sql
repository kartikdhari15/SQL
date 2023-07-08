select transaction_id from
(select transaction_id,date(day),amount,
rank() over (partition by date(day) order by amount desc) as r
from Transactions)tmp
where r=1 order by 1;

 transaction_id 
----------------
              1
              5
              6
              8
(4 rows)