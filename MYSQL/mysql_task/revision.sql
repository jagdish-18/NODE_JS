create database std;
use std;


create table std1(
RollNo int primary key auto_increment,
First_Name varchar(50),
Last_name varchar(50),
City varchar(30),
age int not null,
Gender varchar(10)
);

desc std1;

insert into std1 
values
(1 , "jagdish", "shiyal" , "surat" , 22 , "male"),
(2 , "dev" , "bhardva" , "junagadh" , 18 , "male"),
(3 , "trupti" , "gajera", "rajkot" , 37 , "female"),
(4 , "hit" , "dobriya" , "mumbai" , 23 , "male"),
(5 , "harshit" , "kakdiya" , "kolkata" , 24 , "male"),
(6 , "harmi" , "sutariya" , "bhavnagar" , 17 , "female"),
(7 , "tejsvi" , "gelani" , "mumbai" , 17 , "female"),
(8 , "prince" , "bodar" , "kolkata" , 18 , "male");

select * from std1;

select  First_Name , age  from std1;
select Last_Name , city from std1;

-- whare clause
select * from std1 where city = "surat";
select city from std1 where city = "kolkata";
select age from std1 where age >= 20;

-- AND
select * from std1 where age = 22 And city = "surat";
-- OR
select * from std1 where age = 37 or City = "jamnagar";
-- BETWEEN
select * from std1 where age between 22 AND 25;
select * from std1 where RollNO between 3 AND 5;
 -- IN
 select * from std1 where city  IN ("kolkata" , "mumbai");
 select * from std1 where age IN (17 , 37);
 -- NOT IN
 select * from std1 where Last_Name NOT IN ("shiyal" , "bhardva");
 select * from std1 where First_Name NOT IN ("trupti");
 -- LIMIT
 select * from std1 limit 4;
 select * from std1 limit 8;
 
 -- ORDER BY CLAUSE
  -- ASc
 select * from std1 order by First_Name; 
 select * from std1 order by age asc;
 -- desc
 select * from std1 order by First_Name desc;
select * from std1 order by age desc;

-- Aggregate function
-- count()
select count(rollno) from std1;
select count(age) from std1;
-- max()
select max(age) from std1;
select max(rollNo) from std1;
-- min()
select min(rollno) from std1;
select min(age) from std1;
-- sum()
select sum(rollno) from std1;
select sum(age) from std1;
-- avg()
select avg(rollno) from std1;
select avg(age) from std1;

-- GROUP BY CLAUSE
select count(city), city from std1 group by city;
select age , count(age) from std1 group by age; 

-- HAVING CLAUSE
select count(city) ,city from std1 group by city having max(age) > 23;
select city from std1 group by city having max(rollno) > 4;

-- UPDATE
update std1 set First_Name = "kishor" where First_name = "trupti";
update std1 set Gender = "male" where First_Name = "kishor";

select * from std1;

SET SQL_SAFE_UPDATES = 0;








