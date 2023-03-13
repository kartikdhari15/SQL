select * from Cinema
where id%2<>0 
and description<>'boring'
order by rating desc;

 id |   movie    | description | rating 
----+------------+-------------+--------
  5 | House card | Interesting |    9.1
  1 | War        | great 3D    |    8.9
(2 rows)

