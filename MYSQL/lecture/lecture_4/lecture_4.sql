create database user1;
use user1;


create table students(
     Firstname varchar(30),
     Lastname varchar(30),
     Age int,
     City varchar(30),
     Maths int,
     Eng int,
     Gujrati int
);

insert into students 
(Firstname , Lastname , Age , City , Maths , Eng , Gujrati)
values
("jagdish" , "shiyal" , 22 , "mahuva" , 85 , 95 , 97),
("hit" , "dabriya" , 23 , "surat" , 35 , 37 , 40),
("harshit" , "kakdiya" , 27 , "kolkata" , 32 , 65 , 75),
("dev" , "bhardva" , 18 , "kolkata" , 85 , 40 , 85),
("prince" , "bodar" , 22 , "mahuva" , 85 , 40 , 97),
("harmi" , "sutariya" , 18 , "pune" , 65 , 95 , 85),
("dev" , "kardva" , 22 , "mahuva" , 85 , 95 , 97),
("trupti" , "gajera" , 37 , "surat" , 65 , 75 , 75),
("vivek" , "patil" , 27 , "kolkata" , 85 , 80 , 90),
("tejasvi" , "gelani" , 18 , "surat" , 85 , 90 , 97);



select * from students;

-- AND
select * from students where City  = "mahuva" AND Maths = 85;
select * from students where City = "surat" AND Eng = 75;

--OR
select * from students where Firstname = "dev" OR Maths = 85;
select * from students where Lastname = "patil" OR  City = "surat";

--Between 
select * from students where Maths Between 60 AND 87;
select * from students where Age Between 20 AND 30;
select * from students where Eng Between 75 and 95;

--IN
select * from students where City IN ("surat" , "kolkata");
select * from students where City IN ("mahuva" , "panjab");

--NOT IN
select * from students where City NOT IN ("surat" , "mahuva");
select * from students where City NOT IN ("kolkata" , "surat");

--LIMIT
select * from students LIMIT 4;

--LIKE
select * from students where Firstname LIKE "h%";
select * from students where Firstname LIKE "%t";