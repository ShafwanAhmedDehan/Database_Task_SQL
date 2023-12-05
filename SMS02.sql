select * from EMP;
create table departments(
        deptno number,
        deptname varchar2(50) not null,
        deptloacation varchar2(50)
);
describe DEPARTMENTS;

insert into DEPARTMENTS values (1,'Sales','Dhaka');
insert into DEPARTMENTS values (2,'Marketing','Khulna');
insert into DEPARTMENTS values (3,'Research','');
insert into DEPARTMENTS values (4,'Innovation','Dhaka');

SELECT * FROM DEPARTMENTS;

alter table departments add deptcountrycode number;

update DEPARTMENTS set DEPTCOUNTRYCODE=10;

update from 