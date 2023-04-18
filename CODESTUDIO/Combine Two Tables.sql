select p.FirstName,p.LastName,a.City,a.State
from Person p left join Address a on p.PersonId=a.PersonId;

 firstname | lastname | city | state 
-----------+----------+------+-------
 Allen     | Wang     |      | 
(1 row)