create table employees01(
    empno int not null,
    ename varchar2(50),
    ejob varchar2(50),
    mgr number,
    hiredate date,
    sal number,
    deptno number,
    constraint employees01_pk_empnumber primary key (empno)
);
desc EMPLOYEES01;
insert into EMPLOYEES01 values (1,'Karim','Salesman',100,TO_DATE('20-March-2020','DD-MM-YYYY'),5000,10);
insert into EMPLOYEES01 values (2,'Rahman','Salesman',150,TO_DATE('21-March-2020','DD-MM-YYYY'),5500,10);
insert into EMPLOYEES01 values (3,'Rahim','President',200,TO_DATE('18-March-2020','DD-MM-YYYY'),5050,20);
insert into EMPLOYEES01 values (4,'Sabit','President',210,TO_DATE('20-March-2022','DD-MM-YYYY'),8000,20);
insert into EMPLOYEES01 values (5,'Rifat','President',110,TO_DATE('20-March-2018','DD-MM-YYYY'),5600,20);

create view empvu10
as select empno, ename, ejob
from EMPLOYEES01
where deptno=20;

select * from EMPVU10;

desc empvu10;

select * from EMPLOYEES01;

create or replace view empvu10
            (employee_number,employee_name,job_title)
as select empno,ename,ejob
from EMPLOYEES01
where deptno=10;

create or replace view empvu10
            (employee_number,employee_name,job_title,Salary)
as select empno,ename,ejob,SAL
from EMPLOYEES01
where deptno=20;

create or replace view empvu10
as select *
from EMPLOYEES01
where deptno=20
with check option constraint empvu10_ck;

select * from EMPVU10;

update EMPVU10
set DEPTNO=10
where empno=4;

delete EMPVU10
where EMPNO=4;