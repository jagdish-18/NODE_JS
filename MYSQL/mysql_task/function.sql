-- Numberic Functions

select abs (0.5);

select mod (5 , 5);

select power (6 , 2);

select round(52.9898589);

select truncate(55.2451 , 2);  

select sin(1);

select cos(5);

select tan(10);

select asin(0.2545);

select acos(0.251);

select atan(5);

select sinh(); -- not valid

select cosh(); -- not valid

select tanh(); -- not valid

select sqrt(144);

select exp(10);

select ln(5);

select log(5);

select ceil(13.22);

select floor(14.87);

select sign(31);

-- String Functions

select initcap("Jagdsih");

SELECT lower("HIT DOBRIYA");

select upper("dev bhardva");

select concat("jagdish" , " " , "shiyal");

select lpad("jagdish" , 16 , "developer"); 	

select rpad("jagdish" , 16 , "developer");

select ltrim("    jagdish                            ");

select rtrim("                       jagdish                 ");

select replace("creative" , "at" , "jaggi");

select substr("mysqalsubstr" , 5 , 2);

select length("jaggi");

select instr('Melbourne,Australia', 'l');

-- String / Number Conversion Functions\

select nanvl("skillqode" , 2); -- not valid

select to_char(3 , "sillqode"); -- not valid

select to_number(2 , "creative"); -- not valid

-- Formats for TO_CHAR Function

-- Group Functions

select * from customers;

select  avg(creditLimit) from customers;

select count(customerNumber) from customers;

select max(creditLimit) from customers;

select min(creditLimit)  customers;

select sum(creditLimit) from customers;
