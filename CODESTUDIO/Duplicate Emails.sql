select Email from Person
group by Email having count(Email)>1;

  email  
---------
 a@b.com
(1 row)