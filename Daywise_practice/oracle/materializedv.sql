select * from employees;
create table emp_new1
as
select * from employees;
create materialized view emp_new1_mv
build deferred
refresh complete
start with sysdate
next sysdate+1
as
select * from emp_new1;
create table emp_new2
as
select * from employees;
create materialized view emp_new2_mv
build deferred
refresh complete
on demand
as
select * from emp_new2;
exec dbms_mview.refresh('emp_new2_mv');
----
create view emp_dept_v as 
select e.employee_id,e.first_name,e.salary,d.department_id,department_name,location_id
from employees e
join departments d
on e.department_id=d.department_id;
select * from emp_dept_v;
create or replace view emp_dept1_v as
select e.employee_id,last_name,d.department_id,department_name,location_id
from employees e
join departments d
on e.department_id=d.department_id;
select * from emp_dept1_v;