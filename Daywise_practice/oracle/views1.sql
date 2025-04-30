select * from employees;
create view emp1_v as
select employee_id,first_name,last_name,salary
from employees
where salary>10000;
select * from emp1_v;
--simple view
create view emp2_v 
as
select first_name,salary,manager_id
from employees;
select * from employees;
select * from emp2_v;
create view emp3_v as
select first_name,last_name,manager_id from employees;
select * from emp3_v;
create or replace view emp3_v
as select employee_id,first_name,department_id from employees;
select * from emp3_v;
select * from employees;
create view emp4_v
as
select e.first_name,e.last_name,e.department_id,d.department_name,d.location_id
from employees e join departments d
on e.department_id=d.department_id;
select * from emp4_v;
update emp2_v
set first_name='neena'
where manager_id =100;
select * from emp2_v;
select * from employees;
drop view emp2_v;
select * from emp2_v;
select * from employees;
rollback;
select * from employees;
SELECT employee_id,first_name,manager_id
FROM employees
AS OF TIMESTAMP (SYSTIMESTAMP - INTERVAL '10' MINUTE)
WHERE manager_id = 100;
update employees
set first_name='Lex'
where employee_id=102;
update employees
set first_name='Den'
where employee_id=114;
update employees
set first_name='Matthew'
where employee_id=120;
update employees
set first_name='Adam'
where employee_id=121;
update employees
set first_name='Payam'
where employee_id=122;
update employees
set first_name='Shanta'
where employee_id=123;
update employees
set first_name='Kevin'
where employee_id=124;
update employees
set first_name='John'
where employee_id=145;
update employees
set first_name='Karen'
where employee_id=146;
update employees
set first_name='Alberto'
where employee_id=147;
update employees
set first_name='Gerald'
where employee_id=148;
update employees
set first_name='Eleni'
where employee_id=149;
update employees
set first_name='Michael'
where employee_id=201;
select * from employees;
select * from employees where manager_id=100;
select max(salary) as second_highest_sal from employees
where salary<(select max(salary) from employees);