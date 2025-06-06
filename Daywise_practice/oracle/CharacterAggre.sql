select * from customers;
select * from customers1;
select * from orders;
alter table orders add  amount number;
drop table orders1;
update orders
set amount=15000
where customer_id in(1,6);
update orders
set amount=25000
where customer_id=2;
update orders
set amount=30000
where customer_id in(3,5);
/*Running Total by Customer
Challenge: For each customer, calculate the running total of their order amounts by order date.*/
--select order_id,customer_id,order_date,sum(amount)over(order by order_date)

--------------------------------------------------------------------------------------------------
/*Q1. From the employees table, return all employees whose names start with a vowel, ignoring case, and convert their names to uppercase.*/
select first_name,upper(first_name) from employees
where upper(substr(first_name,1,1)) in ('A','E','I','O','U');
---
SELECT UPPER(first_name) AS name
FROM employees
WHERE REGEXP_LIKE(LOWER(first_name), '^[aeiou]');
--Number Functions
--Q2. Round each employee’s salary to the nearest thousand and also show the truncated value.
select first_name,salary, round(salary,-3)as rounded_salary,trunc(salary,-3) as truncated_salary from employees;
/* Date Functions
Q3. List employees who joined in the last 6 months and show how many days they’ve been in the company.*/
    select e.*,(sysdate-hire_date)as service_days from employees e
    where hire_date>sysdate-180;--syntactically correct but some months have 30 days,some m ore than 30,some less than 30 to get accurate 
    --6 months use below query
    ---
 select employee_id,first_name,hire_date,trunc(sysdate-hire_date) as service_days
 from employees
 where hire_date>= add_months(sysdate,-6);
 /*Analytical Functions
Q4. For each department, show employee name, salary, and the percentage difference between their salary and the department average.*/
-----
select first_name,department_id,salary,round(avg(salary)over(partition by department_id)) as avg_salary ,
((salary-round(avg(salary)over(partition by department_id)))/round(avg(salary)over(partition by department_id)))*100 as percentage_diff
from employees;----this query is logically correct but not efficient
select first_name,department_id,salary,dept_avg,((salary-dept_avg)/dept_avg)*100 as percentage_diff
from (select *,avg(salary)over(partition by department_id)as dept_avg from employees);
---
create force view force_view AS select * from nonExist_table;