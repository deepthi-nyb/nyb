select * from employees;
select *from employees where commission_pct is null
and salary>(select avg(salary)from employees);
select employee_id,first_name,salary,case when salary>3000 then 'High'
                                          when salary between 2000 and 3000 then 'Average'
                                          when salary<2000 then 'Low'
                                     end as status from employees;
select * from (select employee_id,first_name,salary,dense_rank()over(order by salary desc) as rnk from employees )                                   
where rnk=2;
--or
select employee_id,first_name,salary
from employees
where salary< (select max(salary) from employees);
select * from employees;
select * from employees
where salary> all(select salary from employees where job_id in 'PU_CLERK');
select employee_id,first_name,department_id
from employees
where department_id in (select department_id 
                     from employees
                     group by department_id
                     having count(employee_id)>3);
select * from departments;
select * from locations;
select * from employees;
                     
select first_name,department_name,city
from employees e 
left join departments d
on e.department_id=d.department_id
join locations
on d.location_id=d.location_id;
SELECT
    e.*,
    d.*
FROM
    employees   e,
    departments d
WHERE
    e.department_id = d.department_id;
    
    select e.*,d.*
FROM
    hr.employees   e,
    hr.departments d
WHERE
    hr.e.department_id = hr.d.department_id;
    select * from employees;
    select * from sample_table;
 
    select * from emp1;
    select * from emp;