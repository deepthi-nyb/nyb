--Aggregate Functions
select * from hr.EMPLOYEES;
select min(salary) min_sal from hr.employes;
select max(salary) max_sal from hr.employees;
select avg(salary) avg_sal from hr.employees;
select sum(salary)sum_sal from hr.employees;
select count(*) count_all from hr.employees;
select count(salary) count_sal from hr.employees;
select department_id,min(salary)
from hr.EMPLOYEES
group by DEPARTMENT_ID
order by department_id;
select department_id,max(salary)
from hr.EMPLOYEES
group by DEPARTMENT_ID
order by department_id;
select department_id,sum(salary)
from hr.EMPLOYEES
group by DEPARTMENT_ID
order by department_id;
select department_id,avg(salary)
from hr.EMPLOYEES
group by DEPARTMENT_ID
order by department_id;
select department_id,round(avg(salary)),
trunc(avg(salary))
from hr.EMPLOYEES
group by DEPARTMENT_ID
order by department_id;
select department_id,count(salary)
from hr.EMPLOYEES
group by DEPARTMENT_ID
order by department_id;
select department_id,min(salary),max(salary),avg(salary),sum(salary),count(salary)
from hr.EMPLOYEES
group by DEPARTMENT_ID
order by department_id;
select job_id,min(salary),max(salary) max_sal
from hr.EMPLOYEES
group by job_ID ;
select department_id,job_id,count(salary) cnt,sum(salary) sum_sal,max(salary) max_sal
from hr.employees
group by department_id,job_id;
select department_id,round(avg(salary)) avg_sal,sum(salary)sal_sum
from hr.employees
group by department_id
having sum(salary)>50000;
select * from hr.employees;
select department_id,count(employee_id)
from hr.EMPLOYEES
where hire_date>to_date('6/17/2013','mm/dd/yyyy')
group by DEPARTMENT_ID;
select employee_id,sum(salary+(salary*commission_pct))total_sal_commpct
from hr.employees
group by employee_id;
select * from hr.employees where commission_pct is null;
select employee_id,(salary+(salary*commission_pct))total_sal from hr.employees;