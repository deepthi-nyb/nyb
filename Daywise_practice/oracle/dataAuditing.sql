select * from sales1;
select * from customers;
/*Day 4: Generate Running Totals
🔹 Task:
Show each sale with a running total by customer from a sales table.*/
CREATE TABLE sales1 (
    sale_id     NUMBER PRIMARY KEY,
    customer_id NUMBER,
    sale_date   DATE,
    amount      NUMBER
);

INSERT INTO sales1 VALUES (1, 101, TO_DATE('2024-01-01','yyyy-mm-dd'), 1500);
INSERT INTO sales1 VALUES (2, 102, TO_DATE('2024-01-03','yyyy-mm-dd'), 2000);
INSERT INTO sales1 VALUES (3, 101, TO_DATE('2024-01-05','yyyy-mm-dd'), 1800);
INSERT INTO sales1 VALUES (4, 102, TO_DATE('2024-01-07','yyyy-mm-dd'), 1200);
INSERT INTO sales1 VALUES (5, 101, TO_DATE('2024-01-10','yyyy-mm-dd'), 2200);
INSERT INTO sales1 VALUES (6, 103, TO_DATE('2024-01-11','yyyy-mm-dd'), 500);
--
select sale_id,customer_id,sale_date,sum(amount)over(partition by customer_id order by sale_date)as running_total from sales1;
----
/*Day 5: Data Auditing Report
🔹 Task:
Compare employees and employees_backup to identify:

Rows missing in backup.

Rows that are different. */
select * from employees3;

CREATE TABLE employees3 (
    emp_id     NUMBER PRIMARY KEY,
    emp_name   VARCHAR2(50),
    department VARCHAR2(30),
    salary     NUMBER
);
CREATE TABLE employees_backup (
    emp_id     NUMBER PRIMARY KEY,
    emp_name   VARCHAR2(50),
    department VARCHAR2(30),
    salary     NUMBER
);
-- Original employees table
INSERT INTO employees3 VALUES (1, 'Alice', 'HR', 50000);
INSERT INTO employees3 VALUES (2, 'Bob', 'IT', 60000);
INSERT INTO employees3 VALUES (3, 'Charlie', 'Finance', 70000);
INSERT INTO employees3 VALUES (4, 'David', 'IT', 65000); -- Not in backup
INSERT INTO employees3 VALUES (5, 'Eva', 'HR', 55000);    -- Different salary
select * from employees3;

-- Backup table
INSERT INTO employees_backup VALUES (1, 'Alice', 'HR', 50000);
INSERT INTO employees_backup VALUES (2, 'Bob', 'IT', 60000);
INSERT INTO employees_backup VALUES (3, 'Charlie', 'Finance', 70000);
INSERT INTO employees_backup VALUES (5, 'Eva', 'HR', 50000);  -- Lower salary
select * from employees_backup;
---
---Find Rows Missing in Backup
select * from employees3 e 
where not exists (select 1 from employees_backup b
                   where b.emp_id=e.emp_id);
                   
 select e.*
 from employees3 e join employees_backup b
 on e.emp_id=b.emp_id
 where e.emp_id !=b.emp_id
 or e.emp_name!=b.emp_name
 or e.salary !=b.salary;
 
 SELECT e.emp_id, 
       e.emp_name AS orig_name, b.emp_name AS backup_name,
       e.department AS orig_dept, b.department AS backup_dept,
       e.salary AS orig_salary, b.salary AS backup_salary
FROM employees3 e 
JOIN employees_backup b ON e.emp_id = b.emp_id
WHERE e.emp_name != b.emp_name
   OR e.department != b.department
   OR e.salary != b.salary;

/* Day 6: Pivot Data
🔹 Task:
From a sales table with columns region, month, and amount, pivot the data to show total sales per region across months (Jan, Feb, Mar).*/
select * from sales2;
CREATE TABLE sales2 (
    region VARCHAR2(20),
    month  VARCHAR2(10),
    amount  NUMBER
);
drop table slaes2;
-- Region-wise sales data for Jan, Feb, Mar
INSERT INTO sales2 VALUES ('North', 'Jan', 1000);
INSERT INTO sales2 VALUES ('North', 'Feb', 1200);
INSERT INTO sales2 VALUES ('North', 'Mar', 1100);

INSERT INTO sales2 VALUES ('South', 'Jan', 1500);
INSERT INTO sales2 VALUES ('South', 'Feb', 1400);
INSERT INTO sales VALUES ('South', 'Mar', 1600);

INSERT INTO sales2 VALUES ('East', 'Jan', 900);
INSERT INTO sales2 VALUES ('East', 'Feb', 950);
INSERT INTO sales2 VALUES ('East', 'Mar', 1000);
select * from sales2;
---
select * from 
(select region,month,amount from sales2)
pivot(sum(amount)for month in('Jan' as Jan_sales,'Feb' as Feb_sales,'Mar' as Mar_sales))
order by region;
--one more example
select * from(select job_id,department_id from employees)
pivot(count(*) for department_id in(10,20,30,40,50))
order by job_id;
SELECT region,
       SUM(CASE WHEN month = 'JAN' THEN amount END) AS jan_sales,
       SUM(CASE WHEN month = 'FEB' THEN amount END) AS feb_sales,
       SUM(CASE WHEN month = 'MAR' THEN amount END) AS mar_sales
FROM sales
GROUP BY region;
----------------------------------------------------------------
/*1. Top Earners by Department (Analytical Functions)
🔹 Task:
From a employees table, find the top 2 earners in each department*/
select * 
from(select employee_id,first_name,salary,department_id,
     dense_rank()over(partition by department_id order by salary desc)as rnks from employees)
where rnks<=2
order by employee_id,department_id;     
/*2. Second Highest Salary Without LIMIT or ROWNUM
🔹 Task:
Find the second highest salary from employees without using LIMIT, ROWNUM, or TOP.*/
select max(salary) as second_highest_sal
from employees
where salary<(select max(salary) from employees);
--
select * from(select e.*,dense_rank()over(order by salary desc)as rnks from employees e)
where rnks=2;
/*3. Employees with More Salary than Department Average*/
select * from employees e
where salary>(select avg(salary)
from employees where department_id=e.department_id);
----
select * 
from
      (select employee_id,first_name,department_id,salary,round(avg(salary)over(partition by department_id))as avg_sal from employees)
where salary>avg_sal;
---
select employee_id,first_name,salary
from
employees;
--where rownum=1;
/*6. Employee Who Joined First in Each Department
🔹 Task:
Find the employee who joined first in each department.

📘 Table: employees(emp_id, emp_name, dept_id, hire_date)*/
select * 
from (select e.*,row_number()over(partition by department_id order by hire_date)as rn from employees e)
where rn=1;
-----------------------------------------------------------------------
--boolean....not executed in 19c......but possible in 23ai
CREATE TABLE emp_status (
  emp_id     NUMBER,
  emp_name   VARCHAR2(30),
  lc_status  BOOLEAN 
);
INSERT INTO emp_status VALUES (1, 'test1', TRUE);
INSERT INTO emp_status VALUES (2, 'test2', FALSE);
INSERT INTO emp_status VALUES (3, 'test3', NULL);  

DECLARE
  lb_active BOOLEAN;
BEGIN
  SELECT lc_status
  INTO lb_active
  FROM emp_status
  WHERE emp_id = 2;

  IF lb_active THEN
    DBMS_OUTPUT.PUT_LINE('Employee is active');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Employee is inactive');
 
  END IF;
END;
/
-----in 19c
----Boolean
create table xxnyb_boolean_test
(emp_id number,
emp_name varchar2(100),
is_status char(1));
drop table xxnyb_boolean_test;

insert into xxnyb_boolean_test values(1,'test1','y');
insert into xxnyb_boolean_test values(2,'test2','N');
delete from xxnyb_boolean_test;
select * from xxnyb_boolean_test;
set serveroutput on;
declare
lc_active_flag char(1);
lb_active boolean;
begin
select is_status
into lc_active_flag
from xxnyb_boolean_test
where emp_id=1;

lb_active:=case when lc_active_flag='Y'
               then True
                else False
                end;

if lb_active then
dbms_output.put_line('employee is active');
else
dbms_output.put_line('employee is inactive');
end if;
end;
/