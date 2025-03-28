select * from employees;
---decode,case
select employee_id,first_name,decode(first_name,'Steven','Stev','Neena','Nee','Bruce','Bru','common_name')changed_name from employees order by employee_id;
--case
select salary,case when salary<10000 then 'low salary'
                   when salary between 10000 and 20000 then 'medium pay'
                   when salary>20000 then 'high salary'
                   else 'common_status'
                   end as salary_status from employees;
SELECT
    salary,
    decode(salary, salary < 10000, 'low sal', salary BETWEEN 10000 AND 20000, 'med pay',
          salary > 20000, 'high pay', 'common sal') sal_status
FROM
    employees;    
    SELECT
    e.*,
    decode(e.job_id, 'IT_PROG', 'IT Programmer', 'AD_PRES', 'President',
           'ST_CLERK', 'Senior Clerk', e.job_id) decoded_job_id_value,
    --salary> 20000 --> 'High Paid Salary'
    --salary<20000 and salary > 10000 --> 'Medium Paid Salary'
    --salary< 10000 --> 'Low Paid Salary'
    decode(e.salary, e.salary>20000, 'High Paid Salary',
                   e.salary<=20000 and e.salary>10000, 'Medium Paid Salary',
                   e.salary<=10000, 'Low Paid Salary',
                   'No Salary') decoded_salary_value
FROM
    employees e;
    ---substr,instr
    select substr('meghana',1,3)from dual;
     select substr('meghana',5,3)from dual;
       select substr('meghana',-4,4)from dual;
       select * from employees;
       select first_name,substr(first_name,-4) from employees;
       select instr('meghana','a',1,2)from dual;
       select instr('meghanadgafdfgfafhgfggfhgaguygga','a',1,3)from dual;
----constraints
create table dep
(department_id number,
department_name varchar2(30));
CREATE TABLE emp (
    emp_id        NUMBER PRIMARY KEY,
    emp_name      VARCHAR2(30) NOT NULL,
    salary        NUMBER CHECK ( salary > 3000 ),
    department_id NUMBER
        REFERENCES departments ( department_id )
);
alter table emp drop constraint SYS_C007483;

    drop table dep;
    create table dep
    (department_id number primary key,
    depart_name varchar2(30));
    CREATE TABLE mart_emp (
    emp_id        NUMBER PRIMARY KEY,
    emp_name      VARCHAR2(30) NOT NULL,
    salary        NUMBER CHECK ( salary > 3000 ),
    department_id NUMBER,
    constraint fk_depid foreign key(department_id) references dep(department_id));  
    insert into dep values(1,'admin');
insert into dep values(2,'hr');
insert into dep values(3,'technical');
select * from dep;
UPDATE dep
SET
    department_id = 10
WHERE
    depart_name = 'admin';
    UPDATE dep
SET
    department_id = 30
WHERE
    depart_name = 'technical';
   UPDATE dep
SET
    department_id = 20
WHERE
    depart_name = 'hr'; 
    select * from departments;
        insert into dep values(40,'purchasing');
insert into dep values(50,'shipping');
insert into dep values(60,'it');
select * from dep;
select * from emp;
insert into emp values(&empid,'&emp_name',&salary,&departmnet_id);
alter table emp
add constraint fk_department_id foreign key(department_id) references departments(department_id);
insert into emp values(&empid,'&emp_name',&salary,&departmnet_id);
SELECT constraint_name, constraint_type, status
FROM user_constraints
WHERE table_name = 'EMP'
AND constraint_type = 'R';
SELECT constraint_name, table_name, constraint_type, status
FROM user_constraints
WHERE table_name IN ('EMP', 'DEP');
SET CONSTRAINTS ALL IMMEDIATE;
ALTER TABLE emp
DROP CONSTRAINT fk_department_id;
ALTER TABLE emp
ADD CONSTRAINT fk_department_id
FOREIGN KEY (department_id)
REFERENCES departments(department_id)
DEFERRABLE INITIALLY IMMEDIATE;
insert into emp values(&empid,'&emp_name',&salary,&departmnet_id);
create table students
(student_id number primary key,
student_name varchar2(30) not null,
email varchar2(30) unique,
age number check(age between 18 and 30 ));
insert into students values(&student_id,'&student_name','&email',&age);
insert into students values(101,'sneha','sneha@gmail.com',35);
--check constraint violated
alter table students add phno number;
alter table students
add constraint uni_phno unique(phno);
alter table students
drop constraint uni_phno;
alter table students
drop column phno;
select * from students;
----adding column with constraint
alter table students
add phno number unique;
create table orders
(order_id number primary key,
customer_name varchar2(30) not null,
order_date date default current_date,
amount number check(amount>0));
insert into orders (order_id,customer_name,amount)values(1,'roja',500);
select * from orders;
create table products
(product_id number primary key,
product_name varchar2(30),
constraint uni_product_name unique(product_name));
alter table products
drop constraint uni_product_name;
insert into products values(1,'toys');
desc students;
select * from students;
alter table students
modify email varchar2(30) not null;