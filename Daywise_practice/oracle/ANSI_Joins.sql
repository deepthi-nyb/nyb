SELECT
    *
FROM
    employees;

SELECT
    e.*,
    d.*
FROM
         employees e
    INNER JOIN departments d ON e.department_id = d.department_id;
select e.*,d.*
from employees e join join departments d
on e.department_id=d.department_id;
select e.*,d.*
from employees e left join departments d
on e.department_id=d.department_id;
select e.*,d.*
from employees e right join departments d
on e.department_id=d.department_id;
select e.*,d.*
from employees e full outer join departments d
on e.department_id=
d.department_id;

SELECT
    e1.employee_id,
    e1.first_name,
    e1.manager_id,
    e2.first_name AS manager_name
FROM
         employees e1
    JOIN employees e2 ON e1.manager_id = e2.employee_id;

SELECT
    first_name,
    department_name
FROM
         employees e
    INNER JOIN departments d ON e.department_id = d.department_id;

SELECT
    *
FROM
    employees
WHERE
    manager_id IS NULL;

SELECT
    e.first_name,
    d.department_name
FROM
         employees e
    JOIN departments d ON e.department_id = d.department_id;