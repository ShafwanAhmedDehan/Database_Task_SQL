create table Student(
        s_id number,
        s_name varchar2(20),
        phone number,
        address varchar2(50),
        email varchar2(30),
        credit_completed number(3),
        course_completed number(2),
        cgpa number
);

alter table STUDENT add department varchar2(5);
alter table STUDENT add gender varchar2(6);

DESCRIBE STUDENT;

alter table STUDENT rename column department TO dept;

alter table STUDENT drop column email;

rename STUDENT to Students;

DESCRIBE STUDENTS;

alter table STUDENTS modify cgpa number(2,3);

select * from STUDENTS;

alter table STUDENTS add CONSTRAINT Student_pk primary key(s_id);
