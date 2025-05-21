select * from employees;
-- Question 1: Find the Employee(s) with the Second Highest Salary
select * from(select employee_id,first_name,salary,
dense_rank()over(order by salary desc) as rnks from employees)
where rnks=2;
--Question 1: Highest Paid Employee(s) in Each Department
select employee_id,first_name,salary
from employees e
where salary=(select max(salary) 
              from employees
              where department_id=e.department_id
              );
----
select e.employee_id,e.first_name,e.salary,subquery.dep_max_sal
from employees e,(select department_id,max(salary) as dep_max_sal
                  from employees
                  group by department_id) subquery
 where e.department_id=subquery.department_id;
 --and where e.salary>subquery.max_sal;                
--Question 2: Departments with More Than 1 Employee Earning Above Average Salary
select department_id
from employees 
where salary>(select avg(salary) from employees)
group by department_id
having count(employee_id)>1;
-----------------------
select employee_id,first_name,salary,e.department_id from employees e
right join(select department_id
from employees 
where salary>(select avg(salary) from employees)
group by department_id
having count(employee_id)>1)sub
on e.department_id=sub.department_id;
------------------------------------------------
 select round(avg(salary)) as avg_salary
    from employees
    group by department_id
   having count(employee_id)>1;
--Question 3: Employees Whose Salary is More Than Their Manager's
select employee_id,first_name,salary,manager_id from employees e 
where salary>(select salary from employees m
             where m.employee_id=e.manager_id);
---  
select e.employee_id,e.first_name,e.salary,m.employee_id as manager_id,
m.first_name as manager_name,m.salary
from employees e , employees m
 where m.employee_id=e.manager_id
 and e.salary>m.salary;
 ---SELECT 
    e.employee_id,
    e.first_name AS employee_name,
    e.salary AS employee_salary,
    e.manager_id,
    m.first_name AS manager_name,
    m.salary AS manager_salary
FROM employees e
JOIN employees m ON e.manager_id = m.employee_id
WHERE e.salary > m.salary;
------
Question 4: Department(s) With Second Highest Average Salary
select department_id,round(avg(salary))as avg_sal
from employees
group by department_id;
select round(avg(salary))as avg_sal
from employees
group by department_id;
------
SELECT
    department_id,
    avg_dep_sal
FROM
    (
        SELECT
            department_id,
            round(AVG(salary)) AS avg_dep_sal,
            DENSE_RANK()
            OVER(
                ORDER BY
                    AVG(salary) DESC
            )                  AS rnks
        FROM
            employees
        GROUP BY
            department_id
    )
WHERE
    rnks = 2;
---Question 5: Employees Working in the Smallest Department (by Headcount)   
--Find all employees who work in the department(s) having the smallest 
--number of employees. Return emp_id, emp_name, and dept_id.
  select (count(employee_id))as emp_count
  from employees
  group by department_id;
----
select employee_id,first_name,department_id 
from employees
where department_id in 
(select department_id from 
(select department_id,count(employee_id)as cnt
from employees
group by department_id)
where cnt=(select min(cnt)from (select count(employee_id)as cnt
                                 from employees
                                 group by department_id)));