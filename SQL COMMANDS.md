SQL COMMANDS

insert into student_data values('1','Harry','98101');
insert into student_data values('2','Matt','78101');
insert into student_data values('3','Karan','76201');
insert into student_data values('4','Param','76307');
insert into student_data values('5','Rahul','77807');

select * from student_data;

mysql> use student;
Database changed
mysql> show tables;
+-------------------+
| Tables_in_student |
+-------------------+
| student_data      |
+-------------------+
1 row in set (0.00 sec)

mysql> select * from student_data where id in ('2','5');
+------+--------+---------+
| id   | s_name | s_phone |
+------+--------+---------+
|    2 | Matt   |   78101 |
|    5 | Rahul  |   77807 |
+------+--------+---------+
2 rows in set (0.00 sec)

mysql> delete from parents_data where m_name like 's%';
Query OK, 1 row affected (0.29 sec)

mysql> insert into parents_data values('3','Harpreet','66607','Ramu','99678'),
    -> ('4','Rosy','70607','Rajma','93568'),('5','Alice','99999','Shyamu','99989');
Query OK, 3 rows affected (0.07 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from parents_data;
+------+----------+---------+--------+---------+
| id   | m_name   | m_phone | f_name | f_phone |
+------+----------+---------+--------+---------+
|    1 | Sandy    |   78907 | Peter  |   54678 |
|    2 | Katie    |   78667 | Sam    |   50878 |
|    3 | Harpreet |   66607 | Ramu   |   99678 |
|    4 | Rosy     |   70607 | Rajma  |   93568 |
|    5 | Alice    |   99999 | Shyamu |   99989 |
+------+----------+---------+--------+---------+
5 rows in set (0.00 sec)

mysql> select s.id,s.s_name,s.s_phone,p.m_name,p.m_phone,p.f_name,p.f_phone from student_data s join parents_data p on s.id=p.id;
+------+---------+---------+----------+---------+--------+---------+
| id   | s_name  | s_phone | m_name   | m_phone | f_name | f_phone |
+------+---------+---------+----------+---------+--------+---------+
|    1 | Patrick |   98102 | Sandy    |   78907 | Peter  |   54678 |
|    2 | Matt    |   78101 | Katie    |   78667 | Sam    |   50878 |
|    3 | Karan   |   76201 | Harpreet |   66607 | Ramu   |   99678 |
|    4 | Param   |   76307 | Rosy     |   70607 | Rajma  |   93568 |
|    5 | Rahul   |   77807 | Alice    |   99999 | Shyamu |   99989 |
+------+---------+---------+----------+---------+--------+---------+
5 rows in set (0.00 sec)

mysql> alter table student_data drop country,drop course;
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table student_data add course varchar(255),add country varchar(255);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from student_data;
+------+---------+---------+--------+---------+
| id   | s_name  | s_phone | course | country |
+------+---------+---------+--------+---------+
|    1 | Patrick |   98102 | NULL   | NULL    |
|    2 | Matt    |   78101 | NULL   | NULL    |
|    3 | Karan   |   76201 | NULL   | NULL    |
|    4 | Param   |   76307 | NULL   | NULL    |
|    5 | Rahul   |   77807 | NULL   | NULL    |
+------+---------+---------+--------+---------+
5 rows in set (0.00 sec)

mysql> alter table student_data rename column course to Course;
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from student_data;
+------+---------+---------+--------+---------+
| id   | s_name  | s_phone | Course | country |
+------+---------+---------+--------+---------+
|    1 | Patrick |   98102 | NULL   | NULL    |
|    2 | Matt    |   78101 | NULL   | NULL    |
|    3 | Karan   |   76201 | NULL   | NULL    |
|    4 | Param   |   76307 | NULL   | NULL    |
|    5 | Rahul   |   77807 | NULL   | NULL    |
+------+---------+---------+--------+---------+
5 rows in set (0.00 sec)

mysql> update student_data set country='India' where id in (1,3,4);
Query OK, 2 rows affected (0.03 sec)
Rows matched: 3  Changed: 2  Warnings: 0

mysql> update student_data set country='Australia' where id in (2,5);
Query OK, 2 rows affected (0.02 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> select * from student_data;
+------+--------+---------+--------+-----------+
| id   | s_name | s_phone | course | country   |
+------+--------+---------+--------+-----------+
|    1 | Harry  |   98101 | NULL   | India     |
|    2 | Matt   |   78101 | NULL   | Australia |
|    3 | Karan  |   76201 | NULL   | India     |
|    4 | Param  |   76307 | NULL   | India     |
|    5 | Rahul  |   77807 | NULL   | Australia |
+------+--------+---------+--------+-----------+
5 rows in set (0.00 sec)

mysql> update student_data set course='Science' where id in (2,3,4);
Query OK, 3 rows affected (0.05 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql> update student_data set course='Arts' where id in (5);
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update student_data set course='Commerce' where id in (1);
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student_data;
+------+--------+---------+----------+-----------+
| id   | s_name | s_phone | course   | country   |
+------+--------+---------+----------+-----------+
|    1 | Harry  |   98101 | Commerce | India     |
|    2 | Matt   |   78101 | Science  | Australia |
|    3 | Karan  |   76201 | Science  | India     |
|    4 | Param  |   76307 | Science  | India     |
|    5 | Rahul  |   77807 | Arts     | Australia |
+------+--------+---------+----------+-----------+
5 rows in set (0.00 sec)

mysql> select count(id),country from student_data group by country;
+-----------+-----------+
| count(id) | country   |
+-----------+-----------+
|         3 | India     |
|         2 | Australia |
+-----------+-----------+
2 rows in set (0.04 sec)

mysql> select count(id),country from student_data group by country order by count(id);
+-----------+-----------+
| count(id) | country   |
+-----------+-----------+
|         2 | Australia |
|         3 | India     |
+-----------+-----------+
2 rows in set (0.00 sec)

mysql> select distinct s_phone from student_data;
+---------+
| s_phone |
+---------+
|   98101 |
|   78101 |
|   76201 |
|   76307 |
|   77807 |
+---------+
5 rows in set (0.00 sec)

mysql> select count(distinct(s_phone)) from student_data;
+--------------------------+
| count(distinct(s_phone)) |
+--------------------------+
|                        5 |
+--------------------------+
1 row in set (0.07 sec)

mysql> select sum(distinct(s_phone)) from student_data;
+------------------------+
| sum(distinct(s_phone)) |
+------------------------+
|                 406517 |
+------------------------+
1 row in set (0.00 sec)

mysql> select avg(s_phone) from student_data;
+--------------+
| avg(s_phone) |
+--------------+
|   81303.4000 |
+--------------+
1 row in set (0.00 sec)

mysql> update student_data set s_name='Kamal' where country='US';
Query OK, 1 row affected (0.29 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student_data;
+------+--------+---------+----------+-----------+
| id   | s_name | s_phone | course   | country   |
+------+--------+---------+----------+-----------+
|    1 | Harry  |   98101 | Commerce | India     |
|    2 | Matt   |   78101 | Science  | Australia |
|    3 | Karan  |   76201 | Science  | India     |
|    4 | Param  |   76307 | Science  | India     |
|    5 | Rahul  |   77807 | Arts     | Australia |
|    6 | Kamal  |   78101 | Arts     | US        |
+------+--------+---------+----------+-----------+
6 rows in set (0.00 sec)

mysql> select count(s_phone) from student_data;
+----------------+
| count(s_phone) |
+----------------+
|              6 |
+----------------+
1 row in set (0.00 sec)

mysql> select distinct(s_phone) from student_data;
+---------+
| s_phone |
+---------+
|   98101 |
|   78101 |
|   76201 |
|   76307 |
|   77807 |
+---------+
5 rows in set (0.00 sec)

mysql> select count(distinct(s_phone)) from student_data;
+--------------------------+
| count(distinct(s_phone)) |
+--------------------------+
|                        5 |
+--------------------------+
1 row in set (0.00 sec)

mysql> select * from student_data where country='US';
+------+--------+---------+--------+---------+
| id   | s_name | s_phone | course | country |
+------+--------+---------+--------+---------+
|    6 | Kamal  |   78101 | Arts   | US      |
+------+--------+---------+--------+---------+
1 row in set (0.00 sec)

mysql> select * from student_data where country='US' or country='India';
+------+--------+---------+----------+---------+
| id   | s_name | s_phone | course   | country |
+------+--------+---------+----------+---------+
|    1 | Harry  |   98101 | Commerce | India   |
|    3 | Karan  |   76201 | Science  | India   |
|    4 | Param  |   76307 | Science  | India   |
|    6 | Kamal  |   78101 | Arts     | US      |
+------+--------+---------+----------+---------+
4 rows in set (0.00 sec)

mysql> select * from student_data where country='US' and country='India';
Empty set (0.00 sec)

mysql> select * from student_data where not country='India';
+------+--------+---------+---------+-----------+
| id   | s_name | s_phone | course  | country   |
+------+--------+---------+---------+-----------+
|    2 | Matt   |   78101 | Science | Australia |
|    5 | Rahul  |   77807 | Arts    | Australia |
|    6 | Kamal  |   78101 | Arts    | US        |
+------+--------+---------+---------+-----------+
3 rows in set (0.00 sec)

mysql> select * from student_data where country!='India';
+------+--------+---------+---------+-----------+
| id   | s_name | s_phone | course  | country   |
+------+--------+---------+---------+-----------+
|    2 | Matt   |   78101 | Science | Australia |
|    5 | Rahul  |   77807 | Arts    | Australia |
|    6 | Kamal  |   78101 | Arts    | US        |
+------+--------+---------+---------+-----------+
3 rows in set (0.00 sec)

mysql> select * from student_data where country!='India' and course='Science';
+------+--------+---------+---------+-----------+
| id   | s_name | s_phone | course  | country   |
+------+--------+---------+---------+-----------+
|    2 | Matt   |   78101 | Science | Australia |
+------+--------+---------+---------+-----------+
1 row in set (0.00 sec)

mysql> select * from student_data where country!='India' and course='Arts';
+------+--------+---------+--------+-----------+
| id   | s_name | s_phone | course | country   |
+------+--------+---------+--------+-----------+
|    5 | Rahul  |   77807 | Arts   | Australia |
|    6 | Kamal  |   78101 | Arts   | US        |
+------+--------+---------+--------+-----------+
2 rows in set (0.00 sec)

mysql> select * from student_data where country!='India' or course='Arts';
+------+--------+---------+---------+-----------+
| id   | s_name | s_phone | course  | country   |
+------+--------+---------+---------+-----------+
|    2 | Matt   |   78101 | Science | Australia |
|    5 | Rahul  |   77807 | Arts    | Australia |
|    6 | Kamal  |   78101 | Arts    | US        |
+------+--------+---------+---------+-----------+
3 rows in set (0.00 sec)

mysql> select * from student_data where country!='India' or course='Science';
+------+--------+---------+---------+-----------+
| id   | s_name | s_phone | course  | country   |
+------+--------+---------+---------+-----------+
|    2 | Matt   |   78101 | Science | Australia |
|    3 | Karan  |   76201 | Science | India     |
|    4 | Param  |   76307 | Science | India     |
|    5 | Rahul  |   77807 | Arts    | Australia |
|    6 | Kamal  |   78101 | Arts    | US        |
+------+--------+---------+---------+-----------+
5 rows in set (0.00 sec)

