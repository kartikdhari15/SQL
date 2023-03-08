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
