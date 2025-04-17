select * from employees;
select * from all_objects;
select * from xx_nyb;
CREATE TABLE xx_nyb (
    empid   NUMBER PRIMARY KEY,
    empname VARCHAR2(100),
    phno    NUMBER,
    address VARCHAR2(100)
);
create sequence xx_nyb_seq;
drop sequence xx_nyb_seq;
create sequence xx_nyb_seq
minvalue 1
maxvalue 1000
increment by 1
start with 1
cache 30
order
nocycle;
select xx_nyb_seq.currval,xx_nyb_seq.nextval from dual;
select xx_nyb_seq.nextval sequence_next_value from dual;
select xx_nyb_seq.currval sequence_current_value from dual;
desc xx_nyb;
insert into xx_nyb
values(xx_nyb_seq.nextval,'jyothi',93906,'hyderabad');
insert into xx_nyb
values(xx_nyb_seq.nextval,'latha',93907,'banglore');
insert into xx_nyb
values(xx_nyb_seq.nextval,'sudha',93908,'mumbai');
select * from xx_nyb;
CREATE TABLE xx_nyb1 (
    empid   NUMBER PRIMARY KEY,
    empname VARCHAR2(100),
    phno    NUMBER,
    address VARCHAR2(100)
);
create sequence xx_nyb1_seq
start with 100
increment by 10
minvalue 100
maxvalue 999
cache 30
order 
nocycle;
insert into xx_nyb1 values(xx_nyb1_seq.nextval,'sunitha',9786,'atp'); 
insert into xx_nyb1 values(xx_nyb1_seq.nextval,'githa',9787,'hyd'); 
insert into xx_nyb1 values(xx_nyb1_seq.nextval,'sitha',9486,'blore'); 
insert into xx_nyb1 values(xx_nyb1_seq.nextval,'smitha',9726,'mumbai'); 
select * from xx_nyb1;
--practice
create sequence xx_nyb1_seq1
start with 100
increment by 10
minvalue 100
maxvalue 300
cache 30
order 
nocycle;
select xx_nyb1_seq1.nextval from dual;
CREATE TABLE xx_nyb2 (
    empid   NUMBER PRIMARY KEY,
    empname VARCHAR2(100),
    phno    NUMBER,
    address VARCHAR2(100)
);
create sequence xx_nyb1_seq2
start with 100
increment by 10
minvalue 100
maxvalue 200
cache 30
order 
nocycle;
insert into xx_nyb1 values(xx_nyb1_seq2.nextval,'roja',9736,'atp'); 
insert into xx_nyb1 values(xx_nyb1_seq2.nextval,'raja',9767,'hyd'); 
insert into xx_nyb1 values(xx_nyb1_seq2.nextval,'sana',9486,'blore'); 
insert into xx_nyb1 values(xx_nyb1_seq2.nextval,'sony',9126,'mumbai'); 