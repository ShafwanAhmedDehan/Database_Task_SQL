create table departments(
            deptno number,
            deptname varchar2(50),
            deptlocation varchar2(50),
            constraint pk_depertments primary key (deptno)
);

select * from DEPARTMENTS;
drop table departments;

create table employees(
            empno number,
            empname varchar2(50) not null,
            empjob varchar2(50),
            empjobloc varchar2(50),
            deptno number,
            constraint pk_employees primary key (empno),
            constraint fk_employees_deptno foreign key (deptno) references departments(deptno) 

);
drop table employees;

insert into DEPARTMENTS values (11,'Abdul','Dhaka');
insert into DEPARTMENTS values (12,'Abul','Khulna');
insert into DEPARTMENTS values (13,'Rahim','Barisal');
insert into DEPARTMENTS values (14,'Rasel','Bogura');
insert into DEPARTMENTS values (15,'Abdul','Chandpur');
insert into DEPARTMENTS values (16,'Abdul','Dhaka');

insert into EMPLOYEES values (21,'Dehan','Salesman','Dhaka',11);
insert into EMPLOYEES values (33,'Shafwan','Salesman','Khulna',12);
insert into EMPLOYEES values (27,'Karim','Manager','Bogura',14);
insert into EMPLOYEES values (19,'Hasan','Staff','Barisal',13);
insert into EMPLOYEES values (9,'Hossain','Clark','Bogura',14);
insert into EMPLOYEES values (17,'Mahmud','Director','Dhaka',16);

select * from EMPLOYEES;

update DEPARTMENTS set DEPTNAME='Furniture' where DEPTNO=11;
update DEPARTMENTS set DEPTNAME='Food' where DEPTNO=12;
update DEPARTMENTS set DEPTNAME='Dry Food' where DEPTNO=13;
update DEPARTMENTS set DEPTNAME='Car' where DEPTNO=14;
update DEPARTMENTS set DEPTNAME='IT' where DEPTNO=15;
update DEPARTMENTS set DEPTNAME='Construction' where DEPTNO=16;

select count(empno)as "Number of Employee" from EMPLOYEES;
