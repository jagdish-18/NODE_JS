create database student_management;
use student_management;

create table students(
Student_Id int primary key auto_increment,
First_name varchar(50),
Last_name varchar(50),
Dob date,
Gender varchar(10),
Class_Id int 
);

insert into students 
values
(1 , "Arjun" , "Kumar" , "2005-04-23", "Male" , 1),
(2 , "Priya" , "Sharma" , "2006-06-15", "Female" , 1),
(3 , "Rohan" , "Singh" , "2007-09-12", "Male" , 2),
(4 , "Anjali" , "Varma" , "2005-11-22", "Female" , 2),
(5 , "Amit" , "Patel" , "2008-02-03", "Male" , 1);

desc students;
drop table students;
select * from Students;

create table classes(
Class_Id int primary key auto_increment,
Class_name varchar(50),
Teacher_Id int
);

insert into classes
values
(1 , "mathematics" , 1),
(2 , "Science" , 2),
(3 , "English" , 3),
(4 , "History" , 4),
(5 , "Geography" , 5);

desc classes;
select * from classes;

create table teachers(
 Teacher_Id int primary key auto_increment,
 First_name varchar(50),
 Last_name varchar(50),
 Subject varchar(50)
);

insert into teachers 
values
(1 , "Ravi" , "mehata" , "mathematics"),
(2 , "Suman" , "Rao" , "Science"),
(3 , "Kavita" , "Desai" , "English"),
(4 , "Rajesh" , "Khan" , "History"),
(5 , "Sneha" , "Joshi" , "Geography");


desc teachers;
select * from teachers;

-- 1
select * from students where class_id = 1;

-- 2
select First_name , Last_name from teachers; 

 create table enrollments(
 Enrollment_Id int primary key auto_increment,
 Enrollment_Date date,
 Student_Id int,
 Teacher_Id int,

 foreign key (Student_Id) references students(Student_id),
 foreign key (Teacher_Id) references teachers(teacher_id)
 ); 

insert into enrollments
values
(1 , "2024-07-05" , 1 , 1 ),
(2 , "2024-07-06" , 2 , 2 ),
(3 , "2024-07-07" , 3 , 3 ),
(4 , "2024-07-08" , 4 , 4 ),
(5 , "2024-07-09" , 5 , 5 );

select * from enrollments;
drop table enrollments;

select * from enrollments e
inner join students s on e.student_id  = s.student_id
inner join classes c on s.Class_Id  = c.Class_Id;

select e.enrollment_id, e.enrollment_date ,
concat(s.first_name , " " , last_name) as "fullname",
c.class_name from enrollments e
join students s on e.student_id = s.student_id
join classes c on s.class_id = c.class_id;



-- 6 
update students set Last_name = "singh" where Student_Id = 1;
update teachers set subject = "physics" where Teacher_Id = 2;

-- 7
select count(Student_Id) from students;
select max(datediff('2024-07-11' , Dob)/365) as max_age from students;

-- 8
delete from students where Student_Id = 5; -- errror
delete from enrollments where Enrollment_Id = 4;



 





