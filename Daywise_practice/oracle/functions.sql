select * from employees;
select department_id,round(avg(salary))
from employees
group by department_id;
select department_id,trunc(avg(salary))
from employees
group by department_id;
select department_id,round(avg(salary)),trunc(avg(salary))
from employees
group by department_id;
select max(salary),min(salary) from employees;
select employee_id,first_name,salary
from employees
where salary=(select max(salary) from employees);
select employee_id,first_name,salary
from employees
where salary=(select min(salary) from employees);
select employee_id,first_name,salary
from employees
where salary=(select max(salary) from employees)
union
select employee_id,first_name,salary
from employees
where salary=(select min(salary) from employees);
select abs(6500-5400)abs_diff from dual;
select first_name,substr(first_name,1,3)as substr_name from employees;
select first_name,lower(first_name)lower_name from employees;
select first_name,last_name,first_name||' '||last_name concated_name from employees;
select first_name,length(first_name)name_length from employees;
select sysdate,current_date from dual;
---joined within last 19 years
select employee_id,first_name,hire_date from employees
where hire_date>=add_months(sysdate,-228);
select e.*,round(months_between(sysdate,hire_date))as service_months from employees e;
select e.*,round(months_between(sysdate,hire_date)/12)as service_years from employees e;
select hire_date,hire_date+30 as after30_hiredate from employees;
select to_char(12345) from dual;
select to_number('12345')from dual;
select to_date('april10,2025','monthdd,yyyy') from dual;
select employee_id,first_name,salary,commission_pct,nvl(commission_pct,0)as nvl_comm from employees;
select employee_id,first_name,salary,commission_pct,nvl2(commission_pct,0.5,0.1)as nvl2_comm from employees;
select employee_id,first_name,salary,case when salary>20000 then 'A'
                                          when salary<10000 then 'B'
                                          when salary between 10000 and 20000 then 'C'
                                          else 'other salary'
                                     end as salary_grade from employees;  