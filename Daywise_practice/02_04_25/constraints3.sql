--constraints
---parent table
create table depart
(depid number primary key,
depname varchar2(100));
insert into DEPART 
values(10,'hr');
insert into DEPART 
values(20,'admin');
insert into DEPART 
values(30,'technical');
insert into DEPART 
values(50,'testing');
insert into DEPART 
values(60,'development');
select * from depart;
---child table
create table employ
(empid number,
empname varchar2(100) not null,
salary number,
phno number,
depid number,
hire_date date default sysdate,
constraint empid_pk  primary key(empid),
constraint sal_chk check(salary>=5000),
constraint phno_uni unique(phno),
constraint depid_fk foreign key(depid)
references depart(depid)
);
--violated check constraint
insert into employ values(1,'jenny',1000,123,10,to_date('02-04-25','dd-mm-yy'));
---violated integrity constraint(primary key)
insert into employ values(1,'johny',5000,234,10,to_date('02-04-25','dd-mm-yy'));
---violated unique constraint
insert into employ values(2,'johny',5000,123,10,to_date('02-04-25','dd-mm-yy'));
--violated null constraint
insert into employ (empid,salary,phno,depid,hire_date) values(3,7000,456,20,to_date('02-04-25','dd-mm-yy'));
---inserted hire_date by default
insert into employ (empid,empname,salary,phno,depid) values(5,'sana',8000,978,30);
select * from employ;
create table constraints_test
(sno number,
name varchar2(100),
phno number,
salary number,
depid number,
hire_date date);
---how to add constraints to the existing table
alter table constraints_test
add constraint sno_pk primary key(sno);
alter table constraints_test
modify name varchar2(100) not null;
alter table constraints_test
add constraint pno_uni unique(phno);
alter table constraints_test
add constraint salary_chk check(salary>=6000);
alter table constraints_test
add constraint dept_fk foreign key(depid)
references depart(depid);
alter table constraints_test
modify hire_date date default sysdate;