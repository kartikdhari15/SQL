delete from Person
where Id not in (
                select min(Id) from Person
                group by Email
                );

select * from Person

DELETE 1
 id |      email       
----+------------------
  1 | john@example.com
  2 | bob@example.com
(2 rows)

