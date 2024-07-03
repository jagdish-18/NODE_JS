create database SkillQode;
use SkillQode;


create table developer(
    firstname varchar(25),
    lastname varchar(25),
    age int,
    city varchar(20),
    gender varchar(20)
);

insert into developer 
(firstname , lastname , age , city , gender)
 values 
 ("jagdish" ,"shiyal" , 22 , "surat" , "male"),
 ("vivek" ,"patil" , 23 , "maharastra" , "male"),
 ("tejasvi" ,"gelani" , 18 , "mumbai" , "female"),
 ("dev" ,"bhardva" , 18 , "pune" , "male"),
 ("hit" ,"dobriya" , 19 , "kolkata" , "male"),
 ("harmi" ,"sutriya" , 20 , "surat" , "female"),
 ("prince" ,"patel" , 18 , "ahemdabad" , "male"),
 ("harshit" ,"kakdiya" , 22 , "kolkata" , "male"),
 ("trupti" ,"gajera" , 37 , "rajkot" , "female"),
 ("minesh" ,"savliya" , 10 , "surat" , "male");

 select * from developer;

 drop table developer;


 --filter data

select * from developer where gender = "male";
select * from developer where gender = "female";
select * from developer where age > 20;
select * from developer where age < 20;
select * from developer where city = "surat";
select * from developer where city = "kolkata";

--update data

update developer set city = "banaras" where age = 20;
update developer set age = 25 where firstname = "jagdish";


--delete

delete from developer where firstname = "jagdish"; 
