show user;
grant create public synonym to hr;

create public synonym XX_NYB2_psyn for XX_NYB2;

CREATE USER test_schema IDENTIFIED BY test;
GRANT CONNECT, RESOURCE TO test_schema;
grant select on XX_NYB2 to public;

grant create public synonym to hr;
create user cmr identified by nyb123;

--simple view
create view emp_v as select * from employees;
select * from emp_v;
--complex view
create view emp_dep_v as 
select e.employee_id,e.first_name,e.salary,d.department_id,department_name,location_id
from employees e
join departments d
on e.department_id=d.department_id;
select * from emp_dep_v;
create or replace view emp_dep_v as
select e.employee_id,last_name,d.department_id,department_name,location_id
from employees e
join departments d
on e.department_id=d.department_id;
select * from emp_dep_v;
