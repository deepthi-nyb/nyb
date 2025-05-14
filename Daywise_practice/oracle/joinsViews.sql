select * from employees;
select * from departments;
select * from locations;
select first_name,department_name,city
from employees e join departments d
on e.department_id=d.department_id
join locations l
on d.location_id=l.location_id;

select * from employees e1 where salary>(select avg(salary)
                                         from employees e2
                                         where e2.department_id=e1.department_id);

select distinct first_name,employee_id,department_name
from employees e join departments d
on e.department_id=d.department_id
where employee_id is not null;

select distinct d.department_id,d.department_name
from departments d
join employees e
on d.department_id=e.department_id;

SELECT DISTINCT d.department_id, d.department_name
FROM departments d
JOIN employees e
  ON d.department_id = e.department_id;
--- Increase salary by 15% for employees in departments located in 'NEW YORK'.
--single row subquery
update emp_test
set salary=salary+salary*0.15
where department_id=(select department_id from departments where 
location_id=(select location_id from locations where city='London')
);
------using in woeks for more than 1 dep,location
update emp_test
set salary=salary+salary*0.15
where department_id in (select department_id from departments where 
location_id in (select location_id from locations where city='London')
);
rollback;

select * from emp_test;
delete from emp_test
where department_id is null;
--Q: Create a view showing employee name, department, and location.
create view emp_dep_loc_Comview
as
select first_name,department_name,city
from employees e
join departments d
on e.department_id=d.department_id
join locations l
on d.location_id=l.location_id;
select * from emp_dep_loc_Comview;
---
create view emp_dep_loc_Comview1
as
select first_name||' '||last_name as employee_name,department_name,city
from employees e
join departments d
on e.department_id=d.department_id
join locations l
on d.location_id=l.location_id;
select * from emp_dep_loc_Comview1;
drop view emp_dep_loc_Comview1;
--
--Find the 3rd highest salary in the company.
select * from
(select employee_id,first_name,salary,
dense_rank()over(order by salary desc) as rnks from employees)
where rnks<=3;
1. Find employees who joined in the last 6 months
select * from employees;
select * from employees 
where hire_date >= add_months(sysdate,-6);
 --Employees who joined in the last 6 months AND
 --belong to a specific department (e.g., IT department)
 select * form employees
 where hire_date>=add_months(sysdate,-6)



