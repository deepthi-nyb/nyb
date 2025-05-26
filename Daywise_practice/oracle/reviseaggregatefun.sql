select * from employees;
create table sales
(product_id Number,
sale_date date,
quantity_sold number,
unit_price number);
insert into sales values(1,to_date('20-02-2003','dd-mm-yyyy'),5,20);
insert into sales values(2,to_date('22-02-2003','dd-mm-yyyy'),10,30);
insert into sales values(3,to_date('20-02-2003','dd-mm-yyyy'),5,20);
insert into sales values(2,to_date('22-03-2003','dd-mm-yyyy'),10,30);
insert into sales values(4,to_date('20-04-2003','dd-mm-yyyy'),5,20);
insert into sales values(5,to_date('12-05-2003','dd-mm-yyyy'),10,30);
insert into sales values(1,to_date('20-05-2003','dd-mm-yyyy'),5,20);
insert into sales values(2,to_date('22-04-2003','dd-mm-yyyy'),10,30);
insert into sales values(1,to_date('20-02-2003','dd-mm-yyyy'),5,20);
insert into sales values(2,to_date('22-02-2003','dd-mm-yyyy'),10,30);
insert into sales values(3,to_date('20-02-2003','dd-mm-yyyy'),5,20);
insert into sales values(2,to_date('22-03-2003','dd-mm-yyyy'),10,30);
insert into sales values(4,to_date('20-04-2003','dd-mm-yyyy'),5,20);
insert into sales values(5,to_date('12-05-2003','dd-mm-yyyy'),10,30);
insert into sales values(1,to_date('20-05-2003','dd-mm-yyyy'),5,20);
insert into sales values(2,to_date('22-04-2003','dd-mm-yyyy'),10,30);
select * from sales;
/*Task 1: Generate Monthly Sales Report
Scenario: A retail company stores all sales in the SALES table. Management
wants a summary report showing monthly total sales for each product.
Requirement:
Display: PRODUCT_ID, MONTH, TOTAL_SALES
Group by month and product*/
SELECT 
    PRODUCT_ID,
    TO_CHAR(SALE_DATE, 'YYYY-MM') AS MONTH,
    SUM(QUANTITY_SOLD * UNIT_PRICE) AS TOTAL_SALES
FROM 
    SALES
GROUP BY 
    PRODUCT_ID, TO_CHAR(SALE_DATE, 'YYYY-MM')
ORDER BY 
    PRODUCT_ID, MONTH;
---create customers and orders table
create table customers1
(customer_id number,
customer_name varchar2(100));
select * from customers1;
drop table customers;
select * from orders;
drop table orders;
select * from user_constraints where table_name ='orders';
alter table customers
drop constraint SYS_C007528;
insert into customers values(1,'sujatha');
insert into customers values(2,'sunitha');
insert into customers values(3,'geetha');
insert into customers values(4,'sitha');
insert into customers values(5,'mamatha');
insert into customers values(6,'kavitha');
select * from orders;
create table orders
(order_id number,
customer_id number,
order_date date);
insert into orders values(101,1,to_date('22-05-2005','dd-mm-yyyy'));
insert into orders values(102,2,to_date('20-06-2005','dd-mm-yyyy'));
insert into orders values(105,5,to_date('12-08-2005','dd-mm-yyyy'));
insert into orders values(103,6,to_date('16-05-2005','dd-mm-yyyy'));
insert into orders values(104,3,to_date('22-09-2005','dd-mm-yyyy'));
insert into orders values(106,2,to_date('28-02-2005','dd-mm-yyyy'));
select * from orders;
select c.customer_id,c.customer_name
from customers c
where not exists
(select 1 from orders o
where o.customer_id=c.customer_id
and order_date>add_months(sysdate,-6));
----------------------------
select * from customers;
select customer_id,customer_name
from customers
where customer_id not in (select customer_id from orders
                          where order_date>=add_months(sysdate,-6));
                          ---use not in only when subquery returns not null
 --Task 3: Find Top 3 Highest Paid Employees by Department
 select * from(select employee_id,first_name,salary,dense_rank()over(order by salary desc) as rnks from employees)
 where rnks<=3;
 update table_name
 set appointment_id=case patient_id
                    when 121 then 10001
                    when 122 then 10002
                    when 123 then 10003
                    else patient_id
                    end 
                    where patient_id in (121,122,123);
                    select * from employees1;
                    update employees1
                    set manager_id=106
                    where emp_id in (5,6,7);
---     Task 4: Create View for Active Orders
--Scenario: Developers frequently need data for only “Active” orders.    
--ORDERS(ORDER_ID, STATUS, ORDER_DATE)

create or replace view active_orders
as
select * from orders
where status='Active';
--Task 5: Detect Duplicate Email Addresses
--Scenario: In the USERS table, detect if any emails are used more than once.
SELECT EMAIL, COUNT(*) AS OCCURRENCES
FROM USERS
GROUP BY EMAIL
HAVING COUNT(*) > 1;

select * from employees1;
insert into employees1
select emp_id,emp_name,salary,doj,manager_id,dept_id
from employees1
where emp_id in (1,2,5);------cant ionsert due to having uniqueconstraint so genearte new id
---
insert into employees1
select emp_id+10,emp_name,salary,doj,manager_id,dept_id
from employees1
where emp_id in (1,2,5);
INSERT INTO employees1 (id, name, salary)
SELECT id + 1000, name, salary
FROM employees
WHERE id IN (101, 102);

select * from dup_tab;
create table dup_tab
(eid number,
ename varchar(100),
esal number,
edepid number);
-----inserting duplicate records
insert into dup_tab values(1,'sen',1000,10);
insert into dup_tab values(1,'sen',1000,10);
insert into dup_tab values(2,'susan',2000,20);
insert into dup_tab values(3,'set',3000,30);
select * from dup_tab;
---another way
insert into dup_tab
select eid,ename,esal,edepid
from dup_tab
where eid in(1,2);
insert into dup_tab
select eid,ename,null,null
from dup_tab
where eid =3;
---
select * from employees;
select email,count(email)
from employees
group by email
having count(email)>1;
select * from employees1;
select emp_id,count(emp_id)
from employees1
group by emp_id
having count(emp_id)>1;
select eid,count(eid)as duplicate
from dup_tab
group by eid
having count(eid)>1;