--\sql
--\connect root@localhost:3306
--create database dbname;
--use dbname;
--show databases;


--show tables
create table students (
    firstname varchar(50),
    lastname varchar(50),
    age int 
);


--describe tablename;
--describe students;
--desc students'

--insert data
insert into students(firstname , lastname , age) values ("jaggi" , "shiyal" , 22);


insert into students values ("harshit" , "kakdiya" , 23);

--multiple insert

insert into students
    (firstname , lastname , age)
    values
    ("dev" , "bhardva" , 18),
    ("prince", "patel" , 17),
    ("vivek" , "patil" , 23);


insert into students(firstname , age) values ("jaggi" , 22);
insert into students(firstname , lastname) values ("trupti" , "gajera");
insert into students(firstname , lastname , age) values ("tejsvi" , "gelani" , 18);
insert into students(firstname , lastname , age) values ("harmi" , "sutriya" , 17);

--read data
select * from students; --all show data
select firstname from students;
select lastname from students;
select age from students;
select firstname as "fullname" , age from students;
select * ,age from students;
select concat(firstname , " " , lastname) as "fullname" , age from students;