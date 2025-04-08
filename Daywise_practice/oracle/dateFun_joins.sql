select * from employees;
----date functions
select sysdate from dual;
select current_date from dual;
select systimestamp from dual;
select sysdate,current_date,systimestamp from dual;
select trunc(sysdate) from dual;
select sysdate+10 from dual;
select last_day(sysdate)from dual;
select round(months_between('08-4-2025','10-04-2021')) from dual;
select round(months_between('08-04-2025','10-04-2021')/12)age from dual;
select round(((sysdate-to_date('10-04-2021','dd-mm-yyyy'))/365))age from dual;
select add_months(sysdate,6) from dual;
select add_months(sysdate,-4) from dual;
select next_day(sysdate,'Monday') from dual;
select next_day(sysdate,'Tuesday')from dual;
select next_day(sysdate,'wednesday') from dual;
select to_date('2025-04-08','yyyy-mm-dd') from dual;
select to_char(12345) from dual;
select to_char(sysdate,'dd-mm-yy hh24:mi:ss')from dual;
select to_char(to_date('10-04-2021','dd-mm-yyyy'),'ddthMonth,yyyy') from dual;
select 12345+100 from dual;
select '12345'+100 from dual;
select to_number('12345')+100 from dual;
select * from (select employee_id,first_name,salary,dense_rank()over(order by salary desc)rnk from employees)
where rnk=2;
select max(salary) from employees where salary<(select max(salary)from employees);
SELECT
    *
FROM
    (
        SELECT
            employee_id,
            first_name,
            salary,
            department_id,
            DENSE_RANK()
            OVER(PARTITION BY department_id
                 ORDER BY
                     salary
            ) rnk
        FROM
            employees
    )
WHERE
    rnk <= 3;
    select * from
    (select employee_id,first_name,salary,department_id,row_number()over(partition by department_id order by salary desc) rnk from employees)
    where rnk<=3;
    select employee_id,first_name,salary,department_id,row_number()over(partition by department_id order by salary desc)row_num,dense_rank()over(partition by department_id order by salary desc)dense_rnk,
    rank()over(partition by department_id order by salary desc)rnk from employees;
   --joins
   select * from employees;
select * from departments;
--simple join or inner joins:1.equi join(=)
              2.non equi join(!=,<,>,<=,>=)
--self join
--outer joins:1.left
              2.right
              3.full outer join
---cross join or cartesian join
--inner join
select e.employee_id,e.first_name,e.salary,d.department_id,d.department_name
from employees e inner join departments d
on e.department_id=d.department_id;---106 rows
select e.employee_id,e.first_name,e.salary,d.department_id,d.department_name
from employees e left join departments d
on e.department_id=d.department_id;---107 rows
select e.employee_id,e.first_name,e.salary,d.department_id,d.department_name
from employees e right join departments d
on e.department_id=d.department_id;---122 rows
select e.employee_id,e.first_name,e.salary,d.department_id,d.department_name
from employees e full outer join departments d
on e.department_id=d.department_id;---123 rows
select e.employee_id,e.first_name,e.salary,d.department_id,d.department_name
from employees e cross join departments d;----2889 rows
select * from employees;----107 rows
select * from departments;---27 rows
select 107*27 from dual;---2889 rows
select e.employee_id,e.first_name,e.salary,d.department_id,d.department_name
from employees e inner join departments d
on e.department_id != d.department_id;---2756 rows
---self join
select e.employee_id,e.first_name,e.salary,e1.manager_id,e1.job_id,e1.department_id
from employees e inner join employees e1
on e.department_id=e1.department_id;----inner self join---3298 rows
select e.employee_id,e.first_name,e.salary,e1.manager_id,e1.job_id,e1.department_id
from employees e left join employees e1
on e.department_id=e1.department_id;---left self join--3299 rows
select e.employee_id,e.first_name,e.salary,e1.manager_id,e1.job_id,e1.department_id
from employees e right join employees e1
on e.department_id=e1.department_id;--right self join--3299 rows
select e.employee_id,e.first_name,e.salary,e1.manager_id,e1.job_id,e1.department_id
from employees e full outer join employees e1
on e.department_id=e1.department_id;----full join-3300 rows