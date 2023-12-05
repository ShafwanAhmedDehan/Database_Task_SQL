create table emp02(
        empid number not null primary key,
        empfname varchar2(50),
        emplname varchar2(50),
        empjobtitle varchar2(50),
        empjoin date,
        empsalary number(7,2),
        empcomission number(7,2),
        empdept number,
        empmarval number,
        emplocation varchar2(50)
);

select * from EMP02;

insert into EMP02 values(1, 'Abdul', 'Karim', 'Salesman', TO_DATE('2021-Feb-01', 'YYYY-MM-DD'), 5000.25, 200.20, 10, 300, 'Dhaka');
insert into EMP02 values(2, 'Salim', 'Ali', 'Salesman', TO_DATE('2021-Mar-01', 'YYYY-MM-DD'), 7000.25, 250.20, 10, 400, 'Dhaka');
insert into EMP02 values(3, 'Osman', 'Ali', 'Salesman', TO_DATE('2021-Apr-01', 'YYYY-MM-DD'), 4000.25, 220.20, 20, 350, 'Khulna');
insert into EMP02 values(4, 'Mostofa', 'Ahmed', 'President', TO_DATE('2020-Feb-01', 'YYYY-MM-DD'), 10000.25, 500.20, 20, 600, 'Dhaka');
insert into EMP02 values(5, 'Osman', 'Ali', 'President', TO_DATE('2019-Feb-01', 'YYYY-MM-DD'), 15000.25, 600.20, 20, 300, 'Khulna');

select AVG(empsalary), max(empsalary), min(empsalary), sum(empsalary) from EMP02 where EMPJOBTITLE like 'Sales%';
select min(empsalary), max(empsalary) from EMP02;
select min(empjoin), max(empjoin) from EMP02;

select count(*) from EMP02 where empdept=20;

select count(empcomission) from EMP02 where empdept=10;

select avg(NVL(empcomission, 0)) from EMP02;

select empdept, avg(empsalary) from EMP02 group by empdept;

select empjobtitle, EMPLOCATION, sum(empsalary)
from EMP02
group by empjobtitle, emplocation;

select sum(empsalary)
from EMP02
group by empdept, empjobtitle;

select empdept, max(empsalary) from EMP02 group by empdept having max(empsalary)>900;

select max(avg(empsalary)) from EMP02 group by empdept;

select empfname, empdept
from EMP02
where lower(empfname)='osman';

select empfname, emplname, concat(empfname, empjobtitle), length(empfname),length(emplname) from EMP02;

select round(30900.923,-4) from emp;

select empfname, emplname, round(MOD(empsalary,empcomission),1)
from EMP02
where empjobtitle like 'Sales%';