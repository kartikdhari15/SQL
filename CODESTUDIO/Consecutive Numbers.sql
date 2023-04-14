select distinct l1.Num
as "ConsecutiveNums"
from Logs l1,Logs l2,Logs l3
where l1.Num=l2.Num and l2.Id=l1.Id+1
and l1.Num=l3.Num and l3.Id=l1.Id+2;

 ConsecutiveNums 
-----------------
               1
(1 row)
