select * from employees;
---unique index
CREATE TABLE xxnyb_new_test (
    emp_id    NUMBER,
    em_name   VARCHAR2(30),
    hire_dtae DATE,
    salary    NUMBER,
    dept_id   NUMBER
);
insert into  xxnyb_new_test
values(110,'jyoti',sysdate-189,10000,10);
insert into  xxnyb_new_test
values(111,'sruti',sysdate-169,15000,20);
insert into  xxnyb_new_test
values(112,'vani',sysdate-179,12000,30);
insert into  xxnyb_new_test
values(113,'rani',sysdate-129,13000,40);
insert into  xxnyb_new_test
values(114,'sunita',sysdate-139,14000,50);
insert into  xxnyb_new_test
values(115,'madhavi',sysdate-189,10000,10);
insert into  xxnyb_new_test
values(116,'surekha',sysdate-129,17000,60);
select * from xxnyb_new_test;
delete from xxnyb_new_test where emp_id=110;
select * from xxnyb_new_test where emp_id=111;
create index xxnyb_new_test_uni_idx 
on xxnyb_new_test(emp_id);
select * from xxnyb_new_test where emp_id=111;
drop index xxnyb_new_test_uni_idx ;
alter table xxnyb_new_test
add constraint xxnyb_new_test_uni unique (emp_id);
select * from xxnyb_new_test where emp_id=111;
drop constraint xxnyb_new_test_uni;---invalid drop option
alter table xxnyb_new_test
drop constraint xxnyb_new_test_uni;
---composite index
create table xx_nyb_composite
as
select * from employees;
select * from xx_nyb_composite
where department_id=80 
and salary>10000;
create index xx_nyb_composite_idx
on xx_nyb_composite (department_id,salary);
select * from xx_nyb_composite
where department_id=80 
and salary>10000;
---------------
select * from xx_nyb_composite
where upper(first_name)='STEVEN';
create index xx_nyb_composite_idx1
on xx_nyb_composite(first_name);
select * from xx_nyb_composite
where upper(first_name)='STEVEN';
create index xx_nyb_composite_fun_idx
on xx_nyb_composite(upper(first_name));
select * from xx_nyb_composite
where upper(first_name)='STEVEN';
select * from xx_nyb_composite
where lower(first_name)='steven';
----fun index is not generic fun index---its specific function index
create index xx_nyb_composite_fun_low_idx
on xx_nyb_composite(lower(first_name));
select * from xx_nyb_composite
where lower(first_name)='steven';
