 /* 1. Scalar Data Types
Scalar data types hold a single value such as NUMBER, VARCHAR2, DATE, BOOLEAN.

Q1. Write a PL/SQL block to declare scalar variables and display them.*/
set serveroutput on;
declare
ln_empid number:=101;
lv_name varchar2(100):='John';
ld_doj date:=sysdate-180;
l_status boolean:=True;
begin
dbms_output.put_line('employee id: '||ln_empid);
dbms_output.put_line('employee Name: '||lv_name);
dbms_output.put_line('employee hire date: '||ld_doj);
if l_status then
dbms_output.put_line('Status: Active');
else
dbms_output.put_line('Status: Inactive');
end if;
end;
/
/* RECORDS
Q2. Create a record to store employee data and display it.*/
declare
type emp_record is record(empid number,
                        emp_name varchar2(100),
                        emp_salary number);
lv_emp_data emp_record;                        
begin
lv_emp_data.empid:=101;
lv_emp_data.emp_name:='Jenny';
lv_emp_data.emp_salary:=5000;
dbms_output.put_line('employee id: '||lv_emp_data.empid);
dbms_output.put_line('employee name: '||lv_emp_data.emp_name);
dbms_output.put_line('employee salary: '||lv_emp_data.emp_salary);
end;
/
/* Practice Questions on %TYPE
Q1. Declare variables using %TYPE and assign values from the table.
Table: employees(emp_id, emp_name, salary)*/
declare
ln_eid employees.employee_id%type;
lv_ename employees.first_name%type;
ln_salary employees.salary%type;
begin
select employee_id,first_name,salary
into  ln_eid,lv_ename,ln_salary
from
employees
where rownum=1;
dbms_output.put_line('employee id is '||ln_eid||'employee name is '||lv_ename||'employee salary is '||ln_salary );
end;
/
--Q2. Use %TYPE to copy values from one table to another.
select * from test_tab3;
create table test_tab3
(empid number,
emp_name varchar2(100));
declare
ln_empid employees.employee_id%type;
lv_ename employees.first_name%type;
begin
select employee_id,first_name
into ln_empid,lv_ename
from employees
where employee_id=&employee_id;
insert into test_tab3(empid,emp_name)values(ln_empid,lv_ename);
end;
/
select * from test_tab3;
--Practice Questions on %ROWTYPE
--Q3. Use %ROWTYPE to fetch all columns of a row.
declare
v_emp_rec employees%rowtype;
begin
select *
into v_emp_rec
from employees
where employee_id=145;
dbms_output.put_line('employee id is '||v_emp_rec.employee_id);
dbms_output.put_line('employee name is '||v_emp_rec.first_name);
dbms_output.put_line('employee salary is '||v_emp_rec.salary);
dbms_output.put_line('employee commission is '||v_emp_rec.commission_pct);
dbms_output.put_line('employee department id is '||v_emp_rec.department_id);
end;
/
select * from employees where commission_pct is not null;
--Q4. Use %ROWTYPE in a loop to display all employee records.
declare
lr_emp_rec employees%rowtype;
begin
for emp in (select * from employees where employee_id=108)loop
lr_emp_rec:=emp; 

dbms_output.put_line('employee_id: '||lr_emp_rec.employee_id||' employee name: '||lr_emp_rec.first_name);
end loop;
end;
/