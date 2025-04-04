select * from (select employee_id,first_name,salary,dense_rank()over(order by salary desc)rnk from employees)
where rnk=2
order by first_name;
select department_id,max(count(employee_id))
from employees
group by department_id
order by count(employee_id) desc;
select max(emp_count) from (select department_id,count(employee_id)as emp_count
                                                        from employees
                                                        group by department_id);                                                        
select department_id,count(employee_id)as emp_count
from employees
group by department_id
having count(employee_id)=(select max(emp_count) from (select department_id,count(employee_id)as emp_count
                                                        from employees
                                                        group by department_id));
select avg(salary)
from employees
group by department_id;
select max(salary)
from employees
group by department_id;

select employee_id,department_id,salary,(select round(avg(salary)) from employees e2
                                         where e2.department_id=e1.department_id)avg_sal,(select max(salary) from employees e3
                                         where e3.department_id=e1.department_id)max_sal 
                                         from employees e1
                                         where salary>(select round(avg(salary)) from employees e2
                                         where e2.department_id=e1.department_id)
                                         and salary<(select max(salary) from employees e3
                                         where e3.department_id=e1.department_id)
                                         ;
select employee_id,first_name,department_id,salary,(select round(avg(salary)) from employees e
                                                    where department_id=e.department_id)avg_sal,
                                                    (select max(salary) from employees e
                                                    where department_id=e.department_id)max_sal
from employees e
where salary>(select avg(salary) from employees e
             where department_id=e.department_id)
and  salary<(select max(salary) from employees e
            where department_id=e.department_id);
select * from employees;
select distinct department_id from employees;
SELECT
    department_id,
    SUM(DISTINCT salary) AS sal_sum
FROM
    hr.employees
GROUP BY
    department_id;
    select first_name,initcap(first_name)camel_case from employees;
    select first_name,upper(substr(first_name,1,1))||substr(first_name,2)title_case_first_name from employees;
    --students table(id,name,email,age,phno)
    create table students1
    (student_id number primary key,
    student_name varchar2(100) not null,
    email varchar2(100) unique,
    age number check(age>18),
    phone_no number unique,
    doj date default sysdate);
    select employee_id,first_name,department_id,salary,(select max(salary) from employees e2
                  where e2.department_id=e1.department_id)max_dep_sal
    from employees e1
    where salary=(select max(salary) from employees e2
                  where e2.department_id=e1.department_id);
           select * from employees;
    SELECT
    e.employee_id,
    e.first_name,
    e.salary,
    e.department_id,(select max(salary) from employees e1
    where e1.department_id=e.department_id)dep_max_sal
FROM
         employees e
    JOIN (
        SELECT
            department_id,
            MAX(salary)as dep_max_sal
        FROM
            employees e
        GROUP BY
            department_id
    ) d ON e.department_id = d.department_id and e.salary=d.dep_max_sal;           
    select * from employees;
    SELECT
    e.employee_id,
    e.first_name,
    e.salary,
    e.department_id
FROM
         employees e
    JOIN (
        SELECT
            department_id,
            MAX(salary)as dep_max_sal
        FROM
            employees e
        GROUP BY
            department_id
    ) d ON e.department_id = d.department_id and e.salary=d.max_sal;
    select * from employees;