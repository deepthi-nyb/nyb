select * from employees;
-- Q1. Find Employees with Highest Salary in Each Department
select * from employees e
where salary=(select max(salary) from employees
              where department_id=e.department_id);
--
select * 
from employees 
where(department_id,salary)in (select department_id,max(salary)
                                from employees
                                group by department_id); 
-- Q2. Get the 2nd Highest Salary
--Return the second highest distinct salary from the table.
select * from (select employee_id,first_name,salary,
              dense_rank()over(order by salary desc)as rnks from employees)
where rnks=2;
--
select max(salary) as second_highest_sal from employees
where salary<(select max(salary)from employees);
-- Q3. Get Top 3 Paid Employees Per Department
--Return department ID, employee name, and salary of top 3 earners per department.
select * from (select department_id,first_name,salary,
               dense_rank()over(partition by department_id order by salary desc)as rnks
               from employees)
where rnks<=3;
--Q7. Employees with Salary Above Department Average
--Return emp_id and salary where salary is above department average.
select employee_id,salary
from employees e
where salary>(select avg(salary)
              from employees
              where department_id=e.department_id); 
---------------------------------------------------
select employee_id,salary,round(avg(salary) over(partition by department_id))
      as dept_avg from employees;
select employee_id,salary,dept_avg
from (select employee_id,salary,round(avg(salary)over(partition by department_id))
      as dept_avg from employees)
where salary>dept_avg;

--- Q8. Longest Tenured Employee Per Department
select employee_id,first_name,hire_date
from (select employee_id,first_name,hire_date,
row_number()over(partition by department_id order by hire_date desc)as rnks
from employees)
where rnks=1;
----
--1. Get Names of Employees with Salary > 5000
select first_name,salary from employees where salary>5000;
--2. List Employee and Department Names (JOIN)
select e.first_name,d.department_name
from employees e
join departments d
on e.department_id=d.department_id;
--3. Count of Employees in Each Department (GROUP BY)
select department_id,count(*)as emp_count
from employees 
group by department_id;
--4. Find Employees with Salary Above Department Average (Subquery)
select employee_id,first_name,salary,department_id from employees e
where salary>(select avg(salary) from employees 
              where department_id=e.department_id);
---
select employee_id,first_name,department_id,salary,
round(avg(salary)over(partition by department_id))as dep_avg
from employees;
select *
from (select employee_id,first_name,department_id,salary,
round(avg(salary)over(partition by department_id))as dep_avg
from employees)
where salary>dep_avg;
--5. Rank Employees by Salary within Department
select employee_id,first_name,salary,department_id,
dense_rank()over(partition by department_id order by salary desc)as Ranks
from employees;
---
select * 
from(select employee_id,first_name,salary,department_id,
dense_rank()over(partition by department_id order by salary desc)as Ranks
from employees)
where Ranks<=2;
--
