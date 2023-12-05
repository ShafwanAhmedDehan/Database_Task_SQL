create table Vehicle(
        vehicleNumber number(10),
        vehicleRegdate date,
        vehicletype varchar2(10),
        vehicleModel varchar2(10),
        constraint pk_Vehicle primary key (vehicleNumber)
);

desc VEHICLE;

create table Driver(
        driverLicenseNumber number(15),
        driverName varchar2(30),
        driverPhoneNo_1 number(15) unique,
        driverPhoneNo_2 number(15) unique,
        driverHomeDist varchar2(15),
        vehicleNumber_f number(10),
        constraint pk_Driver primary key(driverLicenseNumber),
        constraint fk_Vehicle_Driver foreign key (vehicleNumber_f) references Vehicle(vehicleNumber)
);

desc DRIVER;

create table Owner(
        OwnerID number(15),
        OwnerName varchar2(30),
        OwnerPhoneNo_1 number(15) unique,
        OwnerPhoneNo_2 number(15) unique,
        OwnerAddress varchar2(40),
        OwnerEmail_1 varchar2(40) unique,
        OwnerEmail_2 varchar2(40) unique,
        vehicleNumber_f number(10),
        constraint pk_Owner primary key(OwnerID),
        constraint fk_Vehicle_Owner foreign key (vehicleNumber_f) references Vehicle(vehicleNumber)
);

desc Owner;

create table Police(
        policeID number(10),
        policeName varchar2(30),
        policePhoneNo_1 number(15) unique,
        policePhoneNo_2 number(15) unique,
        policeWorkingCity varchar2(10),
        policeWorkingZone varchar2(10),
        vehicleNumber_f number(10),
        constraint pk_Police primary key(policeID),
        constraint fk_Vehicle_Police foreign key (vehicleNumber_f) references Vehicle(vehicleNumber)
);

desc POLICE;

Create table Cases(
        caseNo number(10),
        caseDate date,
        caseInfo varchar2(40),
        caseFine number(8),
        vehicleNumber_f number(10),
        constraint pk_Case primary key(caseNo),
        constraint fk_Vehicle_Case foreign key (vehicleNumber_f) references Vehicle(vehicleNumber)
);

desc CASES;

/*Vehicle*/
insert into vehicle values (132868,to_date('12-Apr-2016','DD-MM-YYYY'),'Car','Corolla');
insert into vehicle values (142569,to_date('17-Oct-2012','DD-MM-YYYY'),'Bike','Apace');
insert into vehicle values (256563,to_date('14-Jun-2018','DD-MM-YYYY'),'Bus','Hyundai');
insert into vehicle values (177045,to_date('02-Feb-2014','DD-MM-YYYY'),'Truck','Tata');
insert into vehicle values (166559,to_date('03-Mar-2013','DD-MM-YYYY'),'Car','Allion');
insert into vehicle values (154587,to_date('24-Oct-2015','DD-MM-YYYY'),'Car','Premio');
insert into vehicle values (125253,to_date('11-Nov-2011','DD-MM-YYYY'),'Bus','Scania');
insert into vehicle values (278565,to_date('12-Sep-2020','DD-MM-YYYY'),'Car','BMW');
insert into vehicle values (254548,to_date('10-Jul-2019','DD-MM-YYYY'),'Bike','Gixer');
insert into vehicle values (241963,to_date('22-Aug-2017','DD-MM-YYYY'),'Truck','Eicher');

select * from VEHICLE order by VEHICLENUMBER asc;

/*Driver*/
insert into Driver values (1285518,'Hasan Ali',01317810827,01317810828,'Dhaka',132868);
insert into Driver values (1286619,'Rafi Ahmed',01715040513,01715040514,'Rajshahi',142569);
insert into Driver values (1284420,'Rubel Hasan',01767808817,01767808815,'Cumilla',256563);
insert into Driver values (1185621,'Ahnaf Sayem',01993927063,01993927064,'Barisal',177045);
insert into Driver values (1185519,'Nayeem Ahmed',01456985258,01456985259,'Natore',166559);
insert into Driver values (1188692,'Aminul Islam',01955696969,01955696960,'Thakurgao',154587);
insert into Driver values (1356695,'Shafwan Ahmed',01836965858,01836965855,'Dhaka',125253);
insert into Driver values (1458558,'Sabit Hasan',01535131063,01535131066,'Dhaka',278565);
insert into Driver values (1178899,'Pantho Ahmed',01818971458,01818971451,'Gazipur',254548);
insert into Driver values (1150258,'Dipto Hasan',01456244569,01456244563,'Joypurhat',241963);

select * from DRIVER order by DRIVERLICENSENUMBER asc;

/*Owner*/
insert into Owner values (8711489,'Atia Rasida Silvia',01985640827,01852690828,'Uttora,Dhaka','atia@gmail.com','atia12@gmail.com',132868);
insert into Owner values (1478869,'Ashikur Rahman Jibon',01854120513,01996550514,'Rampur,Feni','ashikur@gmail.com','ashikur12@gmail.com',142569);
insert into Owner values (1472886,'Toukir Ahmed',01928382587,01928344490,'Mirbagh,Dhaka','toukir@gmail.com','toukir45gmail.com',256563);
insert into Owner values (6638188,'Md. Hasib - Al Islam',01928381452,01723812699,'Rampur,Dhaka','hasib@gmail.com','hasib67@gmail.com',177045);
insert into Owner values (1231355,'Dip Ghosh',01928384456,01828381452,'Dhanmondi,Dhaka','dip15@gmail.com','dip33@gmail.com',166559);
insert into Owner values (1212585,'Shatabdi Sarker',01928381122,01728384788,'Doctorpara,Feni','shatabdi@gmail.com','shatabdi22@gmail.com',154587);
insert into Owner values (9999869,'Umaiya Tahiyat Bushra',01928388895,01728384444,'Doctorpara,Feni','tahiyat@gmail.com','tahiyat11@gmail.com',125253);
insert into Owner values (7788585,'Md. Abdur Rouf',01928381478,01728388896,'Khilgao,Dhaka','abdur@gmail.com','abdur78@gmail.com',278565);
insert into Owner values (6653585,'Zafir Ken Zaman',01928384633,01728384456,'Uttora,Dhaka','zafir@gmail.com','zafir11@gmail.com',254548);
insert into Owner values (1266558,'Dipto Roy',01928385565,01828381425,'Malibagh,Dhaka','dipto@gmail.com','dipto99@gmail.com',241963);

select * from Owner order by OWNERID asc;

/*Police*/
insert into Police values (20235,'Kibria Hossain',01928382457,01928172444,'Dhaka','Uttora',132868);
insert into Police values (20236,'Rubel Ali',01928385898,01928982000,'Dhaka','Moghbazar',142569);
insert into Police values (20252,'Golam Ahmed',01928380295,01622582569,'Syhlet','Airport',256563);
insert into Police values (21285,'Rakib Hossain',01928345496,01428382400,'Rajshahi','Station',177045);
insert into Police values (45852,'Rajib Khan',01928303490,01728382331,'Barisal','Ilish-mor',166559);
insert into Police values (25692,'Redwan Ahmed',01928092587,01828380001,'Khulna','Khulna',154587);
insert into Police values (48528,'Raji Khan',01928782257,01628380002,'Gazipur','Chondra',125253);
insert into Police values (58282,'Zerin Ahmed',01928522997,01928384523,'Savar','Nobinogor',278565);
insert into Police values (45823,'Nayeem Khan',01928389905,01428388726,'Chandpur','Motlob',254548);
insert into Police values (45825,'Rafsan Chowdhury',01928345404,01728020101,'Chittagong','Port-Area',241963);

select *from POLICE order by POLICEID asc;

/*Cases*/
create sequence cases_caseNo
        increment by 1
        start with 101
        maxvalue 20000
        nocache
        nocycle;
        
insert into Cases values (cases_caseNo.nextval,to_date('12-May-2018','DD-MM-YYYY'),'High-Speed',5000,132868);
insert into Cases values (cases_caseNo.nextval,to_date('17-Oct-2016','DD-MM-YYYY'),'Break Signal',6500,142569);
insert into Cases values (cases_caseNo.nextval,to_date('20-Jun-2021','DD-MM-YYYY'),'High-Speed',8000,256563);
insert into Cases values (cases_caseNo.nextval,to_date('02-Feb-2022','DD-MM-YYYY'),'Modified Car',3000,177045);
insert into Cases values (cases_caseNo.nextval,to_date('03-Mar-2019','DD-MM-YYYY'),'High-Speed',8000,166559);
insert into Cases values (cases_caseNo.nextval,to_date('20-Nov-2020','DD-MM-YYYY'),'Headlight missing',1500,154587);
insert into Cases values (cases_caseNo.nextval,to_date('16-Oct-2022','DD-MM-YYYY'),'Break Signal',10000,125253);
insert into Cases values (cases_caseNo.nextval,to_date('13-Dec-2022','DD-MM-YYYY'),'Accident',15000,278565);
insert into Cases values (cases_caseNo.nextval,to_date('15-Jul-2021','DD-MM-YYYY'),'Breaklight missing',2000,254548);
insert into Cases values (cases_caseNo.nextval,to_date('22-Aug-2017','DD-MM-YYYY'),'Wrong way use',20000,241963);

select * from CASES order by CASENO asc;


/*Query writing*/
/*Single row function*/
select upper(OwnerName)
from Owner;

select policeName
from Police
where policeWorkingCity = 'Dhaka';

select vehicleNumber
from Vehicle
where vehicleType = 'Car';

select vehicleNumber_f as "Vehicle Number"
from Cases
where caseInfo = 'High-Speed';

/*Joining*/
select V.vehicleNumber as "Vehicle Number",D.driverLicenseNumber as "Driver License No",C.caseInfo as "Case Information"
from Vehicle V,Driver D,Cases C
where V.vehicleNumber = D.vehicleNumber_f
and V.vehicleNumber = C.vehicleNumber_f;

select V.vehicleNumber as "Vehicle Number", P.policeName as "Police Name", P.policeID as "ID", P.policeWorkingCity as "Working City", P.policeWorkingZone as "Working Zone"
from Vehicle V, Police P
where V.vehicleNumber = P.vehicleNumber_f;

/*Subquery*/
select caseNo, caseInfo, caseDate
from Cases 
where caseFine = ( select  min(caseFine) from Cases );

select caseNo,caseInfo
from Cases
where caseFine > ( select caseFine from Cases where caseInfo = 'Modified Car');

/*Group function*/
select avg(caseFine)
from Cases;

select sum(caseFine) as "Total Amount of Fine"
from Cases;

/*View*/
create view vehicle_info
as select Vehicle.vehicleNumber, Owner.OwnerName, Owner.OwnerID, driver.driverName, driver.driverLicenseNumber
from Vehicle, Owner, Driver
where Vehicle.vehicleNumber = Owner.vehicleNumber_f
and vehicle.vehicleNumber = driver.vehicleNumber_f;

select * from Vehicle_Info order by vehicleNumber asc;

create view Driver_Dhaka ("Name", "License Number")
as select driverName, driverLicenseNumber
from Driver
where driverHomeDist = 'Dhaka';

select * from Driver_Dhaka;










