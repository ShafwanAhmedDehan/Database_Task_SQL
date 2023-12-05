create table Student(
        sid number,
        sname varchar2(50),
        city varchar2(20),
        country varchar2(20),
        constraint pk_student primary key (sid)
);

select * from Student;

create table Teacher(
    Tid number,
    Tname varchar2(50),
    Skill varchar(50),
    sid number,
    constraint pk_Teacher primary key (Tid),
    constraint fk_student_teacher foreign key (sid) references Student(sid)
);

select * from Teacher;

create table Dept (
    Did number,
    dname varchar2(50),
    phone number(15),
    sid number,
    constraint pk_Dept primary key (Did),
    constraint fk_student_depert foreign key (sid) references Student(sid)
);

select * from Dept;

insert into Student values (101,'Karim Ahmed','Dhaka','Bangladesh');
insert into Student values (102,'kamal Ahmed','Dhaka','Bangladesh');
insert into Student values (103,'Shafwan Ahmed','Dhaka','Bangladesh');
insert into Student values (104,'Rahul Ahmed','Rajshahi','Bangladesh');
insert into Student values (105,'Abid Ahmed','Chittagong','Bangladesh');

insert into Teacher values (11,'jashim Islam','Database',101);
insert into Teacher values (12,'Rahim Islam','Database',102);
insert into Teacher values (13,'Rashed Islam','CS',103);
insert into Teacher values (14,'Selim Islam','Algorithm',103);
insert into Teacher values (15,'Salam Islam','Algorithm',105);

select * from Teacher;

insert into Dept values (2010,'CS','01317810827',103);
insert into Dept values (2011,'Math','01317811827',103);
insert into Dept values (2012,'Physics','01318810827',104);
insert into Dept values (2013,'BBA','01417810827',105);

select * from dept;

select student.sid StudentID,student.SNAME StudentName,Teacher.TNAME TeacherName, Teacher.SKILL Course, Dept.dname Depertmentname
from student, Teacher,DEPT
where student.SID=Teacher.SID OR student.SID=DEPT.SID;

select student.sid StudentID,STUDENT.SNAME StudentName,Teacher.Tname TeacherName
from STUDENT,Teacher
where STUDENT.SID=Teacher.SID;


