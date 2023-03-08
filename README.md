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
