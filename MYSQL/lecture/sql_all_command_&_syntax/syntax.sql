>\sql

>\connect root@localhost:3306

>create database dbname;

>use dbname;

>show databases;

>create table tablename (
    firstname varchar(10),
    lastname varchar(20),
    age int
);

>desc tablename , describe tablename;

>show tables;

>insert into tablename (firstname , lastname ,age) values ("jagdish" , "shiyal" , 22); --single line insert

>insert into tablename
(firstname , lastname , age)
values
("jagdish" , "shiyal" , 22),
("hit" , "dobriya" , 12),
("dev" , "bharva" , 18); --- mulipale line insert



