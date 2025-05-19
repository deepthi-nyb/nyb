--simple subquery
---single row subquery
select * from hr.employees;
select * from hr.departments;
select * from hr.employees
where department_id=(select department_id from hr.departments
                     where department_name='Marketing');
--corelated subquery
select e1.*
from hr.employees e1
where salary>(select avg(e2.salary)
               from hr.employees e2
               where e2.department_id=e1.department_id);
---multi row subquery
select * from hr.EMPLOYEES
where department_id in (select department_id from hr.DEPARTMENTS
                        where location_id=1700);  
---find the avg sal for each department and list the avg salary and emp details
--
select department_id,avg(salary)
from hr.EMPLOYEES
group by department_id;
--
select d.department_id,d.department_name ,subquery.avg_sal
from hr.departments d 
join (select e.department_id,avg(e.salary) as avg_sal
      from hr.EMPLOYEES e
      group by department_id) subquery
on d.department_id=subquery.department_id;