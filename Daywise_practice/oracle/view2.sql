select * from employees;
--force view
select * from all_objects;
select * from dba_objects;
select * from xx_nyb;
select * from xx_nyb_force_demo_v;
create force view xx_nyb_force_demo_v
as
select * from xx_nyb_force;
select * from xx_nyb_force_demo_v;
--verical view
create view vertical_view as
select employee_id emp_id,first_name||' '||last_name as emp_name,
salary emp_sal,
email emp_email,
phone_number emp_phno
from employees;
drop view vertical_view;
select * from vertical_view;
--horizantal view
create view horizantal_view as
select employee_id,first_name,last_name,salary
from employees 
where department_id=30;
select * from horizantal_view;
drop view horizantal_view;
--fucntional view
create view functional_view
as
select e.department_id,max(salary)max_sal,min(salary)min_sal
from employees e
group by e.department_id
order by 1;
select * from functional_view;
---practice 
--simple view
create view emp_simple_view
as
select employee_id,first_name,department_id
from employees;
select * from emp_simple_view;
drop view simple_view;
--complex view
create view emp_dep_complex_view
as
select employee_id,first_name,department_name
from employees e
join departments d
on e.department_id=d.department_id;
select * from emp_dep_complex_view;
drop view complex_view;
---force view----creating view on non existing table or without base table or sourcde table
select * from future_table;
create force view future_view
as
select * from future_table;
select * from future_view;
create view hr_employees
as
select * from employees where department_id=60;
select * from hr_employees;
create view employee_names
as
select first_name,last_name from employees;
select * from employee_names;
create view emp_fullname_sal
as
select employee_id,first_name||' '||last_name as full_name,(salary*12)as annual_salary
from employees;
select * from emp_fullname_sal;
--
select *from employees where department_id=10;
update emp_simple_view
set department_id=80
where department_id=10;
drop view emp_simple_view;