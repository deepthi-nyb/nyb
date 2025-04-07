-----decode
select * from employees;
select translate('deepthi','e','g')from dual;
select replace('deepthi kuderu','deepthi kuderu','deep kude') from dual;
---replace wont work for all columns
select replace('AD_PRES','AD_PRES','PRESIDENT') from employees;
select employee_id,first_name,last_name,job_id,decode(job_id,'AD_PRES','president','IT_PROG','IT_PROGGRAMMER','FI_ACCOUNT','ACCOUNTANT',job_id)
as decoded_jobid from employees;
select employee_id,first_name,last_name,job_id,decode(job_id,'AD_PRES','president','IT_PROG','IT_PROGGRAMMER','FI_ACCOUNT','ACCOUNTANT','common_job')
as decoded_jobid from employees;
----relational operators cant work with decode
select employee_id,first_name,salary,decode(salary,salary<10000,'low_sal',salary>20000,'high_sal',salary between 10000 and 20000,'med_sal','other')sal_status
from employees;
----case
select employee_id,first_name,salary,case when salary<10000 then 'low_salary'
                                          when salary>20000 then 'high_salary'
                                          when salary between 10000 and 20000 then 'med_salary'
                                          else 'other'
                                          end as salarY_status from employees;
----joins                                          
select * from employees; 
select * from departments;
select e.employee_id,e.first_name,e.department_id,department_name
from employees e inner join departments d
on e.department_id=d.department_id;
select e.employee_id,e.first_name,e.department_id,d.department_name
from employees e left outer join departments d
on e.department_id=d.department_id;
select * from orders;
desc orders;
select * from customers;
desc customers;
create table orders_p
(order_id number,
customer_id number primary key
);
create table customers_p
(customer_id number,
customer_name varchar2(100) not null,
constraint cust_id_fk foreign key(customer_id)references orders_p(customer_id));
insert into orders_p values(1,101);
insert into orders_p values(2,102);
insert into orders_p values(3,103);
insert into orders_p values(4,104);
insert into orders_p values(5,105);
insert into orders_p values(6,106);
insert into customers_p values(101,'neena');
insert into customers_p values(103,'bruce');
insert into customers_p values(105,'diana');
insert into customers_p values(103,'nancy');
insert into customers_p values(104,'john');
insert into customers_p values(101,'sen');
insert into customers_p values(103,'jenny');
insert into customers_p values(105,'sara');
select * from orders_P;
select * from customers_p;
select o.order_id,o.customer_id,c.customer_name
from orders_P O right outer join customers_p c
on o.customer_id=c.customer_id;
select o.order_id,o.customer_id,c.customer_name
from orders_P O left outer join customers_p c
on o.customer_id=c.customer_id;
select o.order_id,o.customer_id,c.customer_name
from orders_P O full outer join customers_p c
on o.customer_id=c.customer_id;
select o.order_id,o.customer_id,c.customer_name
from orders_P O cross join customers_p c;
select e.employee_id,e.first_name,e.salary,d.department_id,d.department_name
from employees e inner join departments d
on e.department_id=d.department_id;
select e.employee_id,e.first_name,d.department_id,d.department_name
from employees e left join departments d
on e.department_id=d.department_id
where employee_id is null;
select * from employees where salary is null;
select e.*,d.department_name from employees e inner join departments d
on e.department_id=d.department_id;
select e.*,d.* from employees e inner join departments d
on e.department_id=d.department_id; 
SELECT e.employee_id, e.first_name, e.department_id
FROM employees e
LEFT JOIN departments d ON e.department_id = d.department_id
WHERE d.department_id IS NULL;
---wrong
select e.department_id,d.department_name,count(e.employee_id)
from employees e inner join departments d
on e.department_id=d.department_id
group by e.department_id,d.department_name;
SELECT d.department_id, d.department_name, COUNT(e.employee_id) AS total_employees
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;