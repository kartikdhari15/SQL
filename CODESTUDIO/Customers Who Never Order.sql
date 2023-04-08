select NameCust as "Customers" from Customers 
where Id not in
(
    select CustomerId from Orders 
)

 Customers 
-----------
 Henry
 Max
(2 rows)

NOTE:ALIASING TO BE DONE IN DOUBLE QUOTES