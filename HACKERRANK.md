HACKERRANK

select distinct(CITY) from STATION where
CITY RLIKE '^[aeiouAEIOU].*[aeiouAEIOU]$';

SELECT DISTINCT(CITY) FROM STATION WHERE 
CITY NOT RLIKE '^[aeiouAEIOU]';

select distinct(CITY) from STATION where
CITY NOT RLIKE '^[aeiouAEIOU].*[aeiouAEIOU]$';

select distinct(CITY) from STATION where
CITY NOT RLIKE '^[aeiouAEIOU]' and 
CITY NOT RLIKE '[aeiouAEIOU]$';

select Name from STUDENTS where Marks>75 order by right(Name,3),ID;

select COUNT(NAME) from CITY where POPULATION>100000;

select SUM(POPULATION) from CITY where DISTRICT='California';

select AVG(POPULATION) from CITY where DISTRICT='California';

select case
when A+B <= C or A+C <= B or B+C <= A then "Not A Triangle"
when A=B and B=C then "Equilateral"
when A=B or A=C or B=C then "Isosceles"
else "Scalene"
end from TRIANGLES;

SELECT MAX(salary * months), COUNT(*) FROM Employee 
GROUP BY salary * months 
ORDER BY salary * months DESC LIMIT 1;

select ROUND(SUM(LAT_N),4) from STATION where 
LAT_N>38.7880 and LAT_N<137.2345;

select ROUND(MAX(LAT_N),4) from STATION where 
LAT_N<137.2345;

select ROUND(LONG_W,4) from STATION where LAT_N<137.2345 
order by LAT_N desc limit 1;

select ROUND(MIN(LAT_N),4) from STATION where LAT_N>38.7780;

select ROUND(LONG_W,4) from STATION where LAT_N>38.7780 
order by LAT_N asc limit 1;

select SUM(ci.POPULATION)from CITY ci 
join COUNTRY co where ci.COUNTRYCODE=co.CODE and 
co.CONTINENT='Asia';

select ci.NAME from CITY ci 
join COUNTRY co where ci.COUNTRYCODE=co.CODE and 
co.CONTINENT='Africa';

MANHATTAN DISTANCE

SELECT ROUND(ABS(MIN(LAT_N)- MAX(LAT_N)) + ABS(MIN(LONG_W)- MAX(LONG_W)),4)
FROM STATION;

EUCLIDEAN DISTANCE

SELECT ROUND(SQRT(POW(MIN(LAT_N)-MAX(LAT_N),2)+POW(MIN(LONG_W)-MAX(LONG_W),2)),4) FROM STATION;

TEST ANSWERS

select examination_marks.roll_number,student_information.name
from student_information,examination_marks where 
student_information.roll_number=examination_marks.roll_number and (subject_one+subject_two+subject_three)<100;

select price_today.stock_code from price_today,price_tomorrow where
price_today.stock_code=price_tomorrow.stock_code and
price_tomorrow.price>price_today.price;
