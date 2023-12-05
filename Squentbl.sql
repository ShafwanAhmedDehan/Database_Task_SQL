create table store01(
        storeid int,
        sname varchar2(40),
        sowner varchar2(40),
        constraint store01_pk primary key (storeid)
);

create sequence store01_storeid
    increment by 1
    start with 1000
    maxvalue 10000
    nocache
    nocycle;

select * from store01;

insert into STORE01 (storeid,sname,sowner)
values (store01_storeid.nextval,'Shopno','Karim');

insert into store01 values (STORE01_STOREID.NEXTVAL,'Minabazar','Rahim');

alter sequence store01_storeid
    increment by 20
    maxvalue 50000
    nocache
    nocycle;
    
insert into store01 values (STORE01_STOREID.NEXTVAL,'Agora','Rahman');

select store01_storeid.currval
from store01;
