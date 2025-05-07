SELECT
    *
FROM
    employees;

CREATE TABLE emp_new
    AS
        SELECT
            *
        FROM
            employees;

CREATE MATERIALIZED VIEW emp_new_mv AS
    SELECT
        *
    FROM
        emp_new;
        grant create materialized view to hr;
        show user;
  CREATE MATERIALIZED VIEW emp_new_mv1
    BUILD IMMEDIATE
    REFRESH
            FORCE
            ON DEMAND
AS
    SELECT
        *
    FROM
        emp_new; 
-----------------------------------------------------------------------
select * from employees;
select * from departments;
select * from locations;
select first_name,department_name,city,salary,hire_date,round(months_between(sysdate,hire_date)/12) as experience,
case when salary>10000 then 'High'
     when salary between 6000 and 8000 then 'Medium'
     else 'Low'
end as salary_grade     
from employees e
join departments d
on e.department_id=d.department_id
join locations l
on d.location_id=l.location_id
where hire_date>to_date('05-02-06','dd-mm-yy');
--and l.location_id=1200;
select first_name,department_name,city,salary,case when salary>10000 then 'High'
                                                  when salary between 6000 and 10000 then 'Medium'
                                                  else 'Low'
                                              end as salary_grade,hire_date,
                                              round(months_between(sysdate,hire_date)/12) as experience    
from employees e 
join departments d
on e.department_id= d.department_id
join locations l
on d.location_id=l.location_id
where hire_date>to_date('05-02-06','dd-mm-yy');
---------------------------------------------------------------------------------------
create view ed_complex_view
as
select department_name,sum(salary)as sum_sal,round(avg(salary))as avg_sal,count(employee_id)as emp_count
from employees e
join departments d
on e.department_id=d.department_id
group by department_name
having count(employee_id)>2;
select * from ed_complex_view;
--------------------------------------------------------------------------------------
select employee_id,first_name,salary,round((select avg(salary) from employees)) as avg_sal
from employees e1 where salary>(select avg(salary)
                              from employees e2
                              where e2.department_id=e1.department_id);
  select employee_id,first_name,salary,(select avg(salary) from employees) as avg_sal
from employees;    