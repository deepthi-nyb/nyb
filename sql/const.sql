--constraints
---creating table with constraints
create table example1(
eid number,
ename varchar2(30) not null,
sal number,
phno number,
depid number,
doj date default sysdate,
constraint eid_pk11 primary key(eid),
constraint sal_chk11 check(sal>500),
constraint phno_uni11 unique(phno),
constraint depid_fk11 foreign key(depid) references departments(department_id));

---insertting data into table
insert into example1(eid,ename,sal,phno,depid) values(1,'sen',-500,9875,300);--check constraint violated
insert into example1(eid,ename,sal,phno,depid) values(1,'sen',5000,9875,300);--integrity constraint violated
insert into example1(eid,ename,sal,phno,depid) values(1,'sen',5000,9875,30);---inserted
insert into example1(eid,ename,sal,phno,depid) values(1,'susan',6000,9879,50);---unique constraint violated
insert into example1(eid,sal,phno,depid) values(1,3000,9845,90);---can not insert null values
insert into example1(eid,ename,sal,phno,depid,doj) values(3,'paul',5000,9295,10,'22-04-25');---inserted
select * from example1;

---view constraints
select eid-pk11, primary key
from user_constraints
where table_name='example1';

create table example2(
eid number,
ename varchar2(30) not null,
sal number,
phno number,
depid number,
doj date default sysdate,
constraint eid_pk22 primary key(eid),
constraint sal_chk22 check(sal>500),
constraint phno_uni22 unique(phno),
constraint depid_fk22 foreign key(depid) references departments(department_id));
---dropping constraints
drop constraint eid-pk22;---invalid drop option
alter table example2
drop constraint eid_pk22;---table example2 altered
alter table example2 
modify ename null;----table example2 altered
alter table example2
modify doj default null;---table example2 altered
---column level or inline constraints
create table example3(
   eid number primary key,
   ename varchar2(30) not null,
   phno number unique,
   salary number check(salary>500),
   doj date default sysdate
);