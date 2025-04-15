--Non ANSI standard menthod
select e.*,d.*
from employees e,departments d
where e.department_id=d.department_id;----equi join---106 rows
select e.*,d.*
from employees e,departments d
where e.department_id!=d.department_id;---non equi join---2756 rows
select e.*,d.*
from employees e,departments d
where e.department_id=d.department_id (+);----left outer join ---107 rows
select e.*,d.*
from employees e,departments d
where e.department_id (+)=d.department_id;----right outer join---122 rows
select e.*,d.*
from employees e,departments d
where e.department_id=d.department_id (+)----left outer join ---107 rows
union
select e.*,d.*                           -----full outer join---123 joins
from employees e,departments d
where e.department_id (+)=d.department_id;----right outer join---122 rows