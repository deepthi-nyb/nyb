select * from employees;
--
select * from employees
where salary<(select max(salary) from employees);
---
select max(salary)as second_highest_salary from employees
where salary<(select max(salary) from employees);
---
select * from employees where salary=(select max(salary)as second_highest_salary from employees
where salary<(select max(salary) from employees));
---
select * from employees
where department_id = 10 or department_id= 20;
---
(select employee_id from employees where department_id=10
minus
select employee_id from employees where department_id=20)
union
(select employee_id from employees where department_id=20
minus
select employee_id from employees where department_id=10);
---
select * from employees 
where department_id in (60,90)
and first_name like 'S%'
and salary between 6000 and 25000;
---
select * from employees
where first_name like '__a%';
---or
select * from employees
where substr(first_name,3,1)='a';
---
select employee_id,first_name,salary,commission_pct,nvl(commission_pct,0) as new_nvl_commission,
nvl2(commission_pct,0.5,0) as new_nvl2_commission from employees;
---
select e.employee_id,d.department_id
from employees e 
left join departments d
on e.department_id=d.department_id;
---
select * from employees;
select * from departments;
---
select e.employee_id,d.department_id
from employees e 
right join departments d
on e.department_id=d.department_id;
---
select e.employee_id,e.department_id,d.department_id
from employees e 
left join departments d
on e.department_id=d.department_id;
---
select e.*,d.*
from employees e 
join departments d
on e.department_id=d.department_id;
---
select e.*,d.*
from employees e 
left join departments d
on e.department_id=d.department_id;
---
select e1.employee_id,e1.first_name,e2.manager_id ,e2.first_name as manager_name
from employees e1 join employees e2
on e1.manager_id=e2.employee_id;
---synonyms
create synonym XX_NYB_syn for XX_NYB; 
select * from xx_nyb1;
drop synonym xx_nyb_syn;
----
CREATE USER test_user IDENTIFIED BY password123
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP
ACCOUNT UNLOCK;

GRANT CONNECT, RESOURCE TO test_user;
CREATE USER test_user IDENTIFIED BY password123
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP
ACCOUNT UNLOCK;

GRANT CONNECT, RESOURCE TO test_user;



create public synonym xx_nyb1_pusyn for xx_nyb1;
show user;
grant select on xx_nyb1 to public;
grant create public synonym to hr;

SELECT username FROM all_users ORDER BY username;
select SYS FROM all_users;

CREATE USER test_user IDENTIFIED BY password123
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP
ACCOUNT UNLOCK;

SELECT SYS_CONTEXT('USERENV', 'ISDBA') FROM dual;
---private synonym
select * from test_tab;
create synonym test_tab_syn for test_tab;
select * from test_tab_syn;
select * from xx_nyb;