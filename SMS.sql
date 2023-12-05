create table SMSUser(
        SMSid number,
        SMSname varchar2(20),
        SMScountry varchar2(25)
);

insert into SMSUser values (1, 'Dehan', 'Bangladesh');

select * from SMSUser;  

select SMSid, SMSname from SMSUSER; 

update SMSUSER set SMSNAME = 'Ahmed' where SMSID = 1; 

delete from SMSUSER where SMSID = 1; 

insert into SMSUser values (2, 'Ahmed', 'Bangladesh');
insert into SMSUser values (3, 'Kalam', 'Bangladesh');
insert into SMSUser values (4, 'Abul', 'Bangladesh');
insert into SMSUser values (5, 'Montu', 'Bangladesh');

update SMSUSER set SMSNAME = 'Devileye' where SMSID = 4;
update SMSUSER set SMSCOUNTRY = 'Brazil' where SMSID = 5; 

delete from SMSUSER where SMSCOUNTRY = 'Brazil';

ALTER TABLE SMSUSER ADD Spincode varchar2(20);
update SMSUSER set SPINCODE = '020202' where SMSID = 1;

update SMSUSER set SPINCODE = '0302332' where SMSID = 2;
update SMSUSER set SPINCODE = '07070555' where SMSID = 3;
update SMSUSER set SPINCODE = '55566666' where SMSID = 4;

create table Employe(
        EmpID number,
        EmpName varchar2(30),
        EmpEmail varchar2(30),
        EmpSalary number
);

insert into EMPLOYE values (1, 'Dehan', 'ahmedsad221999@gmail.com', '12000'); 
insert into EMPLOYE values (2, 'Ahmed', 'sa0202025@gmail.com', '12500'); 
insert into EMPLOYE values (3, 'Farhan', 'faruk585855@gmail.com', '20000');

select * from EMPLOYE; 
insert into EMPLOYE values (4, 'Mysha', 'mysha054455@gmail.com', '25000'); 
insert into EMPLOYE values (5, 'Rubel', 'r45855@gmail.com', '21000'); 

select EMPID, EMPSALARY from EMPLOYE;
select EMPID, EMPSALARY, EMPSALARY+1000 from EMPLOYE; 
select EMPID, EMPSALARY, 12*EMPSALARY+1000 from EMPLOYE;

select EMPID AS "Employe ID" from EMPLOYE; 

select * from SMSUSER;
select SMSNAME || ' ' || SMSCOUNTRY AS "Full Name" from SMSUSER;
select * from EMPLOYE;