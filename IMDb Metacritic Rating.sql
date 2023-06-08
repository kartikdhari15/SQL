select i.Title,i.Rating from IMDB i 
join earning e on i.Movie_id=e.Movie_id
where i.MetaCritic>60 and e.Domestic>100000000
and i.Title like '%2012%';

             title              | rating 
--------------------------------+--------
 Argo (2012)                    |    7.7
 Django Unchained (2012)        |    8.4
 Les Mis?Irables (2012)         |    7.6
 Silver Linings Playbook (2012) |    7.8
 Skyfall (2012)                 |    7.8
 The Avengers (2012)            |    8.1
 The Dark Knight Rises (2012)   |    8.4
 Wreck-It Ralph (2012)          |    7.7
(8 rows)


