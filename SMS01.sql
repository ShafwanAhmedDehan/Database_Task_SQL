create table emp(
        EmpNo number,
        EmpName varchar2(35),
        EmpJob varchar2(15),
        EmpSalary number,
        EmpComission number,
        EmpDept number,
        EmpSellDate varchar2(30),
        EmpHireDate varchar2(30),
        EmpMargin number
);

insert into EMP values (1, 'kamal', 'Salesman', 7888, 9000, 20, '20Mar2022', '01Jan2011', 2000);
insert into EMP values (2, 'Hossain', 'Salesman', 9000, 11000, 10, '20Feb2022', '01Feb2012', 3000);
insert into EMP values (3, 'karim', 'Manager', 10000, 12000, 20, '25Mar2022', '05Jan2011', 5000);
insert into EMP values (4, 'Adnan', 'Clerk', 5600, 5000, 10, '25Apr2022', '01Jan2015', 1000);
insert into EMP values (5, 'Sobuj', 'President', 20000, 10000, 15, '26Apr2022', '01Jan2017', 2000);

select * from EMP;

select EmpName AS "Name", EmpJob AS "Job Title", EmpSalary AS "Salary", EmpComission AS "Comission" from EMP;

select EmpName, EmpJob from EMP where EMPJOB='Salesman';
select EMPNAME, EMPJOB, EMPSALARY, EMPCOMISSION from EMP where EMPSALARY<=EMPCOMISSION;

select ename, ejob, esal from emp where esal between 6000 and 15000;

select eno, ename, ejob, esal from emp where esal >=6000 and ejob = 'Salesman';

update EMP set EMPNO=4 where EMPSALARY=5600;
update EMP set EMPNO=5 where EMPSALARY=20000; 
select EMPNO, EMPNAME, EMPJOB, EMPSALARY from EMP where EMPSALARY>=6000 or EMPJOB='Salesman';

select EMPNAME, EMPJOB from EMP where EMPJOB not in ('Clerk','Manager');

select EMPNO, EMPNAME, EMPJOB, EMPDEPT from EMP where EMPDEPT<=10 and (EMPJOB='Clerk' or EMPJOB='Salesman');

select EMPNAME, EMPJOB, EMPDEPT, EMPSALARY from EMP order by EMPDEPT desc; 
select EMPNAME, EMPJOB, EMPDEPT, EMPSALARY from EMP order by EMPDEPT asc; 