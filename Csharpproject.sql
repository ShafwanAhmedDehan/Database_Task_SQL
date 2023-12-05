create table country
(
country_ID int primary key,
country_Name varchar(30)
);

select * from country;

create table city
(
city_ID int primary key,
city_Name varchar(30),
County_ID int foreign key references country(country_ID)
);

select * from city;
select country_Name from country;

drop table LogInTable;

create table Information_Store
(
First_Name varchar(40),
Last_Name varchar(30),
Phone_No varchar(15),
Email varchar(80),
Password varchar(100),
Gander varchar(8),
Location_Country varchar(50),
Location_City varchar(70),
Ac_Type varchar(10),
Date1 int,
Month1 varchar(4),
Year1 int
);

drop table Information_Store;


ALTER TABLE Information_Store DROP COLUMN DOB;
ALTER TABLE Information_Store add Date int;
ALTER TABLE Information_Store add Month varchar(4);
ALTER TABLE Information_Store add Year int;

create table Information_Store
(
First_Name varchar(40),
Last_Name varchar(30),
Phone_No varchar(15),
Email varchar(80),
Password varchar(100),
Gander varchar(8),
Location_Country varchar(50),
Location_City varchar(70),
Ac_Type varchar(10),
Date1 int,
Month1 varchar(4),
Year1 int
);

select * from Information_Store;
select * from Information_Store where (Phone_No='01317810827' or Email='ahmedsad221999@gmail.com' and (Password='dehan221999@') and Ac_Type =;
INSERT INTO Information_Store (First_Name,Last_Name,Phone_No,Email,Password,Gander,Location_Country,Location_City,Date1,Month1,Year1) VALUES ('Alu','malu','malu','malu','malu','malu','malu','malu',22,'bal',2000);
DELETE FROM Information_Store WHERE First_Name='Dehan';
Update Information_Store set Ac_Type='Buyer' where Phone_No='01317810827';
select * from Information_Store where Phone_No='01317810827';
select * from Information_Store where Phone_No='01317810827' or Email='ahmedsad221999@gmail.com';

select Phone_No from Information_Store where First_Name='Sagor';
select * from Information_Store where (Phone_No='01781550287' and Ac_Type='Seller');
create table SellerUpload1
(
Name varchar(50),
Nursery_Name varchar(50),
pic1 image,
pic2 image,
pic3 image,
pic4 image,
pic5 image
);

create sequence 
        increment by 1
        start with 101
        maxvalue 20000
        nocache
        nocycle;

select * from SellerUpload1;
Delete FROM SellerUpload1 WHERE Name='Sagor';
SELECT Name,Nursery_Name,pic1,pic2,pic3,pic4,pic5 FROM SellerUpload1 WHERE Name='Dehan';

create table Verfication
(
id int primary key,
name varchar(50)
);

select * from Verfication;
select name from Verfication where id=(select MAX(id) from Verfication); 
DELETE FROM Verfication  WHERE name='Dehan';


create table Money_Plant
(
id int primary key,
Info varchar(50),
quantity int
);


create table Spider_Plant
(
id int primary key,
Info varchar(50),
quantity int
);

select * from Money_Plant;

create table Lucky_Bamboo
(
id int primary key,
Info varchar(50),
quantity int
);
drop table Money_Plant;

select * from Lucky_Bamboo;

create table Arica_Palm
(
id int primary key,
Info varchar(50),
quantity int
);
drop table Lucky_Bamboo;

create table Century_plant
(
id int primary key,
Info varchar(50),
quantity int
);
drop table Century_plant;
create table Rubber_Plant
(
id int primary key,
Info varchar(50),
quantity int
);

create table DRA_Plant
(
id int primary key,
Info varchar(50),
quantity int
);

select * from DRA_Plant;

create table Monstera
(
id int primary key,
Info varchar(50),
quantity int
);

select * from Monstera;

create table Snake_Plant
(
id int primary key,
Info varchar(50),
quantity int
);

create table Zenzi
(
id int primary key,
Info varchar(50),
quantity int
)

insert into Snake_Plant values('01781550287',10);
select * from Snake_Plant;
update Snake_Plant set quantity=10 where id=1;

