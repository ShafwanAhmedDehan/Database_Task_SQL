create table CustomerManagementSys01(
            CustID number,
            CustName varchar2(30),
            CustMobile varchar2(12),
            CustEmail varchar2(20),
            CustCountry varchar2(10),
            CustProff varchar2(12)
);

insert into CUSTOMERMANAGEMENTSYS01 values (101, 'Shafwan Ahmed', '01781550287', 'ahmedsad@gmail.com', 'Bangladesh', 'Student');

insert into CUSTOMERMANAGEMENTSYS01 values (102, 'Dehan Ahmed', '01317810827', 'ahmed0808@gmail.com', 'Bangladesh', 'Teacher');
insert into CUSTOMERMANAGEMENTSYS01 values (110, 'Shafwan Ahmed Dehan', '01715040513', 'sa2208@gmail.com', 'Bangladesh', 'Engineer');
insert into CUSTOMERMANAGEMENTSYS01 values (111, 'Nowrin Nova', '01521985742', 'nova22@gmail.com', 'Bangladesh', 'Student');
insert into CUSTOMERMANAGEMENTSYS01 values (112, 'Sobnom Mysha', '01535131063', 'mysha0202@gmail.com', 'Bangladesh', 'Engineer');
insert into CUSTOMERMANAGEMENTSYS01 values (113, 'Aminul Islam Sagor', '01621943864', 'sagor880@gmail.com', 'Bangladesh', 'Student'); 
insert into CUSTOMERMANAGEMENTSYS01 values (114, 'Faruk Ahmed', '01767810827', 'faruk55d@gmail.com', 'Bangladesh', 'HeadEngineer');

select * from CUSTOMERMANAGEMENTSYS01; 

insert into CUSTOMERMANAGEMENTSYS01 values (115, 'Sadia Islam Zarin', '01875855689', 'siz08085@gmail.com', 'Bangladesh', 'Student'); 
insert into CUSTOMERMANAGEMENTSYS01 values (116, 'Shafali Ahmed', '01993927063', 'shafali085@gmail.com', 'Bangladesh', 'Student');
insert into CUSTOMERMANAGEMENTSYS01 values (101, 'Toukir Ahmed', '01675252558', 'toukir052@gmail.com', 'Bangladesh', 'Engineer'); 

update CUSTOMERMANAGEMENTSYS01 set CUSTID = 117 where CUSTNAME='Toukir Ahmed';
update CUSTOMERMANAGEMENTSYS01 set CUSTID = 109 where CUSTID=102;
update CUSTOMERMANAGEMENTSYS01 set CUSTID = 108 where CUSTID=101;

alter table CUSTOMERMANAGEMENTSYS01 add CustSalary number;  

update CUSTOMERMANAGEMENTSYS01 set CUSTSALARY = 50000 where CUSTID=108;
update CUSTOMERMANAGEMENTSYS01 set CUSTSALARY = 45000 where CUSTID=109;
update CUSTOMERMANAGEMENTSYS01 set CUSTSALARY = 44500 where CUSTID=110;
update CUSTOMERMANAGEMENTSYS01 set CUSTSALARY = 40000 where CUSTID=111;
update CUSTOMERMANAGEMENTSYS01 set CUSTSALARY = 45000 where CUSTID=112;
update CUSTOMERMANAGEMENTSYS01 set CUSTSALARY = 48000 where CUSTID=113;
update CUSTOMERMANAGEMENTSYS01 set CUSTSALARY = 35000 where CUSTID=114;
update CUSTOMERMANAGEMENTSYS01 set CUSTSALARY = 37000 where CUSTID=115;
update CUSTOMERMANAGEMENTSYS01 set CUSTSALARY = 39000 where CUSTID=116;
update CUSTOMERMANAGEMENTSYS01 set CUSTSALARY = 25000 where CUSTID=117;

update CUSTOMERMANAGEMENTSYS01 set CUSTSALARY= 2000+CUSTSALARY;

delete
from CUSTOMERMANAGEMENTSYS01
where CUSTID=109 and CUSTSALARY=49000;

SELECT distinct custname
from CUSTOMERMANAGEMENTSYS01;