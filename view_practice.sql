create table employee(
        empno number,
        empname varchar2(40),
        ejob varchar2(10),
        mgr number,
        salary number,
        constraint employee_empno_pk primary key (empno)
);

create sequence emp01_empno
    increment by 5
    start with 100
    maxvalue 10000
    nocache
    nocycle;
    
insert into EMPLOYEE values (emp01_empno.nextval,'karim','Salesman',500,5000);
insert into EMPLOYEE values (emp01_empno.nextval,'Rahim','Salesman',550,5500);
insert into EMPLOYEE values (emp01_empno.nextval,'Rahman','President',600,6000);
insert into EMPLOYEE values (emp01_empno.nextval,'Hasan','President',700,8000);
insert into EMPLOYEE values (emp01_empno.nextval,'Rahul','Salesman',400,4000);

select * from EMPLOYEE;

create view empview01
as select empno,empname,ejob
from EMPLOYEE
where ejob='Salesman';

select * from empview01;

create or replace view empview01
                (Employee_Number,Employee_Name,Employee_Position)
as select empno,empname,ejob
from EMPLOYEE
where ejob='President';

select * from empview01;

create or replace view empview01
                (Employee_Number,Employee_Name,Employee_Position)
as select empno,empname,ejob
from EMPLOYEE
where ejob='President'
with read only;

create or replace view empview01
                (Employee_Number,Employee_Name,Employee_Position)
as select empno,empname,ejob
from EMPLOYEE
where ejob='Salesman';