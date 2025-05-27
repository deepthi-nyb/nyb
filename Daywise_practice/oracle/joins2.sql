select e.employee_id,e.first_name,e.salary,d.department_id,d.department_name
from employees e inner join departments d
on e.department_id=d.department_id;
select e.employee_id,e.first_name,e.salary,d.department_id,d.department_name
from employees e left join departments d
on e.department_id=d.department_id;
select e.employee_id,e.first_name,e.salary,d.department_id,d.department_name
from employees e right join departments d
on e.department_id=d.department_id;
select e.employee_id,e.first_name,e.salary,d.department_id,d.department_name
from employees e full outer join departments d
on e.department_id=d.department_id;
select e.employee_id,e.first_name,e.salary,d.department_id,d.department_name
from employees e cross join departments d;
select e.*,d.*
from employees e,departments d
where e.department_id = d.department_id;
select e.*,d.*
from employees e,departments d
where e.department_id!=d.department_id;
select e.*,d.*
from employees e,departments d
where e.department_id=d.department_id (+);
select e.*,d.*
from employees e,departments d
where e.department_id (+)=d.department_id;
select e.*,d.*
from employees e,departments d
where e.department_id=d.department_id (+)
union
select e.*,d.*                          
from employees e,departments d
where e.department_id (+)=d.department_id;
select * from employees where department_id is null; 