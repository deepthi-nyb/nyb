select * from employees;
---string functions
 --1. Extract initials from a full name
 /* Table: employees(name)
Sample Data:

pgsql
Copy
Edit
| name             |
|------------------|
| John Michael Doe |
| Sarah Anne Lee   |
Q: Write a query to extract initials from the full name (output: JMD, SAL).*/
 select first_name,last_name,first_name||' '||last_name as fullName,substr(first_name,1,1) as intial
 from employees;
 create table newemp
 (fullname varchar2(100));
 insert into newemp values('John Micheal Doe');
 insert into newemp values('Sarah Ane Lee');
 insert into newemp values('Stefy Marium Paul');
 select * from newemp;
SELECT
    fullname,
    substr(fullname, 1, 1)
    || substr(fullname,
              instr(fullname, ' ') + 1,
              1)
    || substr(fullname,
              instr(fullname, ' ', 1, 2) + 1,
              1) AS initials
FROM
    newemp;
 select instr('John Micheal Doe','',1,1) from dual;
 select fullname,
        substr(fullname,1,1)||
        substr(fullname,instr(fullname,' ',1,1)+1,1)||
         substr(fullname,instr(fullname,' ',1,2)+1,1)
  from newemp;      
 --Fetch all names from employees that contain at least 3 vowels in a row.
SELECT first_name
FROM employees
WHERE REGEXP_LIKE(LOWER(first_name), '[aeiou]{3}');
select first_name
from employees
where regexp_like(lower(first_name),'[aeiou]{2}');
select first_name
from employees
where regexp_like(lower(first_name),'[aeiou]');
--Q: Replace all special characters (non-alphanumeric) in the name column with a dash -.
select first_name,regexp_replace(first_name,'[^a-zA-Z0-9]','-') as cleaned_name from employees; 
--
select fullname,regexp_replace(fullname,'[^a-zA-Z0-9]','-') as cleaned_name from newemp; 
-- 4. Convert name to "Initial. LastName" format
select first_name,last_name,substr(first_name,1,1)||'.'||last_name as initial_name from employees;
--Q: Find the employee with the longest name.
select employee_id,first_name
from employees
where length(first_name)=(select max(length(first_name))from employees);
--6. Find names where last name starts with 'S'
select first_name,last_name from employees
where last_name like 'S%';
---
SELECT name
FROM employees
WHERE REGEXP_LIKE(name, '\sS[a-zA-Z]*$');
--7. Concatenate first and last name with proper case
select first_name,last_name,initcap(first_name)||' '||initcap(last_name) as full_name
from employees;
--Q: Remove leading and trailing spaces from name.
select trim(first_name)as trimmed_name
from employees;

--Q: Pad the name with * on the right such that total length becomes 20.
select first_name,rpad(first_name,20,'*') as padded_name 
from employees;
--Q: Return the number of vowels in each name.
select first_name,regexp_count(lower(first_name),'[aeiou]')as vowel_count
from employees;
--Find Employees with Highest Salary in Each Department
select employee_id,first_name,department_id,salary,round(max(salary)over(partition by department_id))as max_sal
from employees;
select * 
from(select employee_id,first_name,department_id,salary,
round(max(salary)over(partition by department_id))as max_sal
from employees)
where salary=max_sal;
--
select * from employees e
where salary=(select max(salary) from employees
              where department_id=e.department_id);
              --
              select * 
from employees 
where(department_id,salary)in (select department_id,max(salary)
                                from employees
                                group by department_id); 
                                
                                
--min sal
select * 
from(select employee_id,first_name,department_id,salary,
round(min(salary)over(partition by department_id))as min_sal
from employees)
where salary=min_sal;
--avg sal
select * 
from(select employee_id,first_name,department_id,salary,
round(avg(salary)over(partition by department_id))as avg_sal
from employees)
where salary=avg_sal;
--sum sal
select * 
from(select employee_id,first_name,department_id,salary,
round(sum(salary)over(partition by department_id))as sum_sal
from employees)
where salary=sum_sal;
--count
select * 
from(select employee_id,first_name,department_id,salary,
round(count(employee_id)over(partition by department_id))as emp_count
from employees)
where emp_count <5;
--
select employee_id,first_name,department_id,salary,
round(count(employee_id)over(partition by department_id))as emp_count
from employees;
---tenure
select employee_id,first_name,hire_date
from (select employee_id,first_name,hire_date,
row_number()over(partition by department_id order by hire_date desc)as rnks
from employees)
where rnks=1;
---
select *
from (select employee_id,first_name,hire_date,
row_number()over(partition by department_id order by hire_date desc)as rnks
from employees)
where rnks=1;