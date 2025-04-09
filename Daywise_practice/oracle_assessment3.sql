create table employees1
(emp_id number primary key,
emp_name varchar2(100),
salary number,
doj date,
manager_id number,
dept_id number);
insert into employees1 values(1,'alexander',8000,to_date('12-05-2014','dd-mm-yyyy'),101,10);
insert into employees1 values(2,'sen',12000,to_date('22-05-2017','dd-mm-yyyy'),102,20);
insert into employees1 values(3,'jenny',20000,to_date('18-06-2018','dd-mm-yyyy'),103,30);
insert into employees1 values(4,'nancy',16000,to_date('17-08-2017','dd-mm-yyyy'),104,60);
insert into employees1 values(5,'john',9000,to_date('06-05-2021','dd-mm-yyyy'),null,60);
insert into employees1 values(6,'sony',18000,to_date('19-05-2022','dd-mm-yyyy'),null,30);
insert into employees1 values(7,'susan',16000,to_date('22-05-2024','dd-mm-yyyy'),null,30);
insert into employees1 values(8,'peter',12000,to_date('25-05-2023','dd-mm-yyyy'),105,40);
select * from employees1;
delete from employees1
where manager_id is null;
--who joined last five years
select * from employees1
where DOJ >=add_months(sysdate,-60);
---annhual salary of employees
select emp_id,emp_name,salary,(salary*12)as annual_salary from employees1;
--length of service of employees in years
select emp_id,emp_name,doj,round(months_between(sysdate,doj)/12) as length_of_service from employees1;
---updating 10% bonus to employees earning less than 30000
update employees1
set salary=(salary+salary*0.1)
where salary<30000;
select emp_id,emp_name,salary,(salary*0.1) as bonus,(salary+(salary*0.1))as hiked_salary from employees1;