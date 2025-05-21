-Q1. Find the employee(s) who earn the second highest salary in the EMPLOYEES table.
select * from (select employee_id,first_name,salary,
dense_rank()over(order by salary desc)as rnks from employees)
where rnks=2;
--Q2. List employees who earn more than the average salary of each department.
--->ALL then we dont get error
--	Salary > all average salaries from all departments
SELECT first_name, department_id, salary
FROM employees
WHERE salary > ALL (
  SELECT AVG(salary)
  FROM employees
  GROUP BY department_id
);
--Q3. Find employees who earn more than the average salary of their own department.
--Salary > average salary of same department
select * from employees e
where salary>(select avg(salary)
              from employees
              where department_id=e.department_id);
select e.employee_id,e.first_name,e.salary,subquery.avg_sal
from employees e,
(select department_id,round(avg(salary))as avg_sal
   from employees 
   group by department_id)subquery
where e.salary> subquery.avg_sal
and e.department_id=subquery.department_id;
---
select e.employee_id,e.first_name,e.salary,subquery.avg_sal
from employees e,
(select department_id,round(avg(salary))as avg_sal
   from employees 
   where  department_id=e.department_id)subquery--not possible
where e.salary> subquery.avg_sal
and e.department_id=subquery.department_id;
--------
select e.*,(select round(avg(salary)) from employees 
            where department_id=e.department_id)as avg_dep_sal
from employees e;
---List employees who are the highest earners in their department.
select e.*
from employees e
where salary=(select max(salary)
             from employees
             where department_id=e.department_id);
--Q5. Display departments where the total salary exceeds 30,000.
select department_id,total_sal
from (select department_id,sum(salary)as total_sal
from employees 
group by department_id)
where total_sal>30000;
--Q6. Find all departments that have at least one employee earning more than 10000.
select department_id,department_name
from departments where department_id in (select department_id from employees where salary>10000);
--or
select department_id,department_name
from departments d
where exists
(select 1 
from employees e
where department_id=d.department_id
and salary>10000);
--7. Show employee name and the average salary of their department in the same row.
select e.employee_id,e.first_name,e.salary,(select round(avg(salary)) from employees 
                                 where department_id=e.department_id) as avg_dep_sal
from employees e;

--Q8. Find employees who have never been assigned to any project
--(assume a PROJECT_ASSIGNMENTS table with employee_id).
SELECT employee_id, first_name
FROM employees e
WHERE NOT EXISTS (
  SELECT 1
  FROM project_assignments p
  WHERE p.employee_id = e.employee_id
);
--Q9. Find employees who have the same salary and department as any other employee.
select employee_id,first_name,salary,department_id
from employees e
where (salary,department_id) in(select salary,department_id
                                from employees
                                group by salary,department_id
                                having count(*)>1);
--Q10. Find the top 2 highest paid employees in each department.
SELECT *
FROM (
  SELECT e.*, 
         RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rnk
  FROM employees e
)
WHERE rnk <= 2;
