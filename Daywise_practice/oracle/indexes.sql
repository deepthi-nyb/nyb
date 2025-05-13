select * from employees;
select * from xx_nyb2;
drop table xx_nyb2;
create table xx_nyb4
(emp_id number,
emp_name varchar2(30),
loc varchar2(30));
insert into xx_nyb4
values(101,'sirisha','atp');
insert into xx_nyb4
values(102,'swathi','hyd');
insert into xx_nyb4
values(103,'bhagya','banglore');
insert into xx_nyb4
values(104,'sowmya','mumbai');
insert into xx_nyb4
values(105,'sneha','chennai');
select * from xx_nyb4;
select * from xx_nyb4
where emp_id in (101,102,105);
------creating unique index
create index xx_nyb4_uni_idx
on xx_nyb4(emp_id);
select * from xx_nyb4
where emp_id in (101,102,105);
drop index xx_nyb4_uni_idx;

alter table xx_nyb4
add constraint xx_nyb4_unique unique(emp_id);
select * from xx_nyb4
where emp_id in (101,102,105);

alter table xx_nyb4
add gender char(1);
select * from xx_nyb4;
update xx_nyb4
set emp_name='sai'
where emp_id=101;

update xx_nyb4
set emp_name='kiran'
where emp_id=104;

update xx_nyb4
set gender ='F'
where emp_id not in (101,104);
select * from xx_nyb4
where gender='F';
---
create bitmap index xx_nyb4_bm_idx
on xx_nyb4(gender);

select * from xx_nyb4
where gender='F';

select * from xx_nyb4
where upper(emp_name)='SAI';
create index xx_nyb4_fun_idx
on xx_nyb4(upper(emp_name));
select * from xx_nyb4
where upper(emp_name)='SAI';
alter table xx_nyb4 
add salary number;
select * from xx_nyb4;
update xx_nyb4
set salary=10000
where emp_id in(101,103,105);
update xx_nyb4
set salary=5000
where emp_id in(102,104);
select power(salary,2) from xx_nyb4;
create index xx_nyb4_pow_idx
on xx_nyb4(power(salary,2));
select power(salary,2) from xx_nyb4;
drop index xx_nyb4_pow_idx;

SELECT xx_nyb4_pow_idx, status FROM user_indexes WHERE table_name = 'xx_nyb4';
create index xx_nyb4_idx
on xx_nyb4(salary);
select * from xx_nyb4 where salary>5000;
alter table xx_nyb4
rename column emp_name to first_name;
select * from xx_nyb4;
alter table xx_nyb4
add last_name varchar2(30);
update xx_nyb4
set last_name='k'
where emp_id in (101,104);
update xx_nyb4
set last_name='s'
where emp_id in (102,105);
update xx_nyb4
set last_name='j'
where emp_id in (103);
select  first_name,last_name from xx_nyb4;
-------------composite index
create index xx_nyb4_com_idx
on xx_nyb4(first_name,last_name);
select  first_name,last_name from xx_nyb4;
select * from test_table;
create table test_table
as
select * from employees;
select * from test_table where salary>5000;
create index test_table_idx
on test_table(salary);
select * from test_table where salary>10000;


