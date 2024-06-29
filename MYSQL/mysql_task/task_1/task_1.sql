-- create database;
create database user;
use user; 

--create table;

-- create table Client_master   task_1

create table Client_master(
    ClientNo varchar(6),
    Name varchar(20),
    Address1 varchar(30),
    Address2 varchar(30),
    City varchar(30),
    Pincode  int ,
    State varchar(15),
    BalDue int
);

--insert values;

insert into Client_master 
(ClientNo , Name , Address1 , Address2 , City , Pincode , State , BalDue)
values
("C00001" , "Ivan Byross" , "pune/69" , "surat/69", "Mumbai" , 400054 , "Maharastra" , 15000),
("C00002" , "Mamta Muzumdar" , "Ahemdabad/69" , "Ahemdabad/69", "Madras" , 780001 , "Tamil Nadu" , 0),
("C00003" , "Chhaya Bankar" , "Mumbai/69" , "Bombe/69", "Mumbai" , 400057 , "Maharastra" , 500),
("C00004" , "Ashwini Joshi" , "Bangalore/69" , "Bangalore/69", "Banglore" , 560001 , "Karnataka" , 0),
("C00005" , "Hansel Calaco" , "A/69" , "A/69", "MUmbai" , 400060 , "maharastra" , 2000),
("C00006" , "Deepak Sharma" , "b/69" , "B/69", "Manglore" , 560050 , "Karnataka" , 0);

select * from Client_master;



--perticular row delete
delete from Client_master where Name = 'Ivan Byross';


--create table Product_master task_2

create table Product_master(
    ProductNo varchar(6),
    Description varchar(20),
    Profit_Percent float,
    Unit_Measure varchar(10),
    QtyOnHand int,
    ReorderLvl  int ,
    Sellprice int,
    CostPrice int
);

--insert values

insert into Product_master 
(ProductNo , Description , Profit_Percent, Unit_Measure , QtyOnHand , ReorderLvl , Sellprice , CostPrice )
values
("P00001" , "T-Shirt" , 5 , "Piece" , 200 , 50 ,350 ,250),
("P0345" , "Shirt" , 6 , "Piece" , 150 , 50 ,500 ,350),
("P06734" , "Cotton Jeans" , 5 , "Piece" , 100 , 20 ,600 ,450),
("P07865" , "Jeans" , 5 , "Piece" , 100 , 20 ,750 ,500),
("P07868" , "T-Shirt" , 5 , "Piece" , 200 , 50 ,350 ,250),
("P07885" , "Pull Overs" , 2 , "Piece" , 80 , 30 ,700 ,450),
("P07965" , "Denim Shirt" , 2.5 , "Piece" , 100 , 40 ,350 ,250),
("P07985" , "Pull Overs" , 4 , "Piece" , 80 , 30 ,700 ,450),
("P07975" , "Lycra Tops" , 5 , "Piece" , 70 , 30 ,300 ,175),
("P08865" , "Skirts" , 5 , "Piece" , 75 , 30 ,450 ,300);


select * from Product_master;

--create table selesman_master

create table Selsman_master(
    SALESMANNO varchar(6),
    SALESMANENAME varchar(20),
    ADDRESS1 varchar(30),
    ADDRESS2 varchar(30),
    CITY varchar(30),
    PINCODE  int,
    STATE varchar(20),
    SALAMT int,
    TGTTOGET int,
    YTDSALES int,
    REMARKS varchar(60)
);

insert into Selsman_master
(SALESMANNO , SALESMANENAME , ADDRESS1 , ADDRESS2 , CITY , PINCODE , STATE , SALAMT , TGTTOGET , YTDSALES , REMARKS)
values
("S00001" , "Aman" , "A/14" , "Worli" , "MUmbai" , 400002 , "maharastra" , 3000 , 100 , 50 , "Good"),
("S00002" , "Omkar" , "65" , "Nariman" , "MUmbai" , 400001 , "maharastra" , 3000 , 100 , 100 , "Good"),
("S00003" , "Raj" , "65" , "Bandra" , "MUmbai" , 400032 , "maharastra" , 3000 , 200 , 100 , "Good"),
("S00004" , "Ashis" , "A/5" , "juhu" , "MUmbai" , 400044 , "maharastra" , 3500 , 200 , 200 , "Good");

select * from Selsman_master;

3.
a--find out names of all the clients.
select Name from Client_master;

b --Retrieve the entire contents of the Client_Master table.
select * from Client_master;
select * from Product_master;
select * from Selsman_master;

c --Retrieve the list of names, city and the sate of all the Clients.
select Name , City ,state from Client_master;

d --list the various products available from the Product_Master table.
select Description from Product_Master;

e --List all the clients who are located im Mumbai.
select * from Client_Master where city = "Mumbai";

f --find the names of salesmen who have a salary equal to Rs.3000.
select SALESMANENAME from Selsman_master where SALAMT = 3000;

4.
a -- Change the city of ClientNo C00005 to Bangalore;
update Client_Master set City = "banglore" where ClientNo = "C00005";
update Client_Master set City  = "mahuva"  where Name = "Mamta Muzumdar";
update Selsman_master set PINCODE = 364290 where SALESMANENAME = "Raj";

b -- Change the BalDue of clientNo 'C00001' to Rs 1000.
update Client_Master set BalDue = 1000 where ClientNo = "C00001";

c -- Change the cost price of Trousers to Rs 950.00.
update Product_master set CostPrice = 950 where Description = "Pull Overs";
update Product_master set Description = "Trousers" where CostPrice = 950;

d --Change the City of the selesman of pune.
update Selsman_master set  CITY = "Pune" where SALESMANENAME = "Aman";
update Selsman_master set  CITY = "Pune" where SALESMANENAME = "Omkar";
update Selsman_master set  CITY = "Pune" where SALESMANENAME = "Raj";
update Selsman_master set  CITY = "Pune" where SALESMANENAME = "Ashis";