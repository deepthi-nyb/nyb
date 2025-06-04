/*1. Declare and print scalar variables
Q1: Write a PL/SQL block to declare and print the following:

An integer variable v_id

A varchar2 variable v_name of length 20

A date variable v_join_date*/
set serveroutput on;
declare
ln_id number:=101;
lv_name varchar2(20):='Neena';
ld_join_date varchar2(20):=sysdate-190;
begin
dbms_output.put_line('id: '||ln_id||' Name: '||lv_name||' hire_date'||ld_join_date);
end;
/
/*2. Use of %TYPE for variable declaration
Q2: Declare a variable with the same data type as employee.salary. Print the salary using that variable.*/
declare
ln_salary employees.salary%type;
begin
select salary
into ln_salary
from employees
where employee_id=142;
dbms_output.put_line('salary is '||ln_salary);
end;
/
/* 3. Use of %ROWTYPE
Q3: Declare a variable using %ROWTYPE for the employees table. Fetch and print employee details for employee_id = 101.*/
declare
l_emp employees%rowtype;
begin
select *
into l_emp
from employees
where employee_id=101;
dbms_output.put_line('employee id is '||l_emp.employee_id);
dbms_output.put_line('employee name is '||l_emp.first_name);
dbms_output.put_line('salary is '||l_emp.salary);
dbms_output.put_line('comission percentage is'||l_emp.commission_pct);
dbms_output.put_line('employee department is '||l_emp.department_id);
end;
/
/*4. Composite datatype: Record
Q4: Declare a record manually with fields: id NUMBER, name VARCHAR2(20). Assign and print values.*/
declare
type emp_rec is record(id number,
                       name varchar2(100));
l_emp emp_rec;
begin
l_emp.id:=140;
l_emp.name:='Kate';
dbms_output.put_line('employee id is '||l_emp.id);
dbms_output.put_line('employee name is '||l_emp.name);
end;
/
/* . Declare and initialize multiple variables in one line
 Declare 3 number variables and initialize them with different values in a single block..*/
 declare
 ln_a number:=10;
 ln_b number:=20;
 ln_c number:=30;
 begin
 dbms_output.put_line('a:'||ln_a||' b:'||ln_b||' c:'||ln_c);
 end;
 /
 -----------------------------

  declare
 lc_text clob;
 begin
 lc_text:='This is clob data type.abbreviation is chacter large object data type.it is one of
           the large object data type used store large objects like image,video,text,audio...etc';
           dbms_output.put_line('CLOB TEST: '||lc_text);
 end;
 /
  declare
 lc_text clob;
 begin
 lc_text:=rpad('This is clob data type.abbreviation is chacter large object data type.it is one of
           the large object data type used store large objects like image,video,text,audio...etc',10000,'*');
           dbms_output.put_line('CLOB TEST: '||lc_text);
 end;
 /
   declare
 lc_text clob;
 begin
 lc_text:=rpad('This is clob data type.abbreviation is chacter large object data type.it is one of
           the large object data type used store large objects like image,video,text,audio...etc',100000,'*');
           dbms_output.put_line('CLOB TEST: '||lc_text);
 end;
 /
---got error to fix error use DBMS_LOB.SUBSTR
----Boolean
create table xxnyb_boolean_test
(emp_id number,
emp_name varchar2(100),
ls_status boolean);
/*1. IF Statement
Question:
Write a PL/SQL block to check whether a number is positive.*/
declare
ln_num number:=&ln_num;
begin
if ln_num>0 then
dbms_output.put_line('Number is positive');
elsif ln_num<0 then 
dbms_output.put_line('Number is negative');
elsif ln_num=0 then
dbms_output.put_line('Number is equal to zero');
else
dbms_output.put_line('Not a number');
end if;
end;
/
/*2. IF-ELSE Statement
Question:
Write a block to check if a number is even or odd.*/
declare
ln_num number:=&ln_num;
begin
if mod(ln_num,2)=0 then
dbms_output.put_line('NUmber is Even');
else
dbms_output.put_line('Number is odd');
end if;
end;
/
/* 3. IF-ELSIF-ELSE Statement
Question:
Write a block to print grade based on marks:

≥ 90: 'A'

≥ 75 and < 90: 'B'

≥ 60 and < 75: 'C'

< 60: 'Fail'*/
declare
ln_marks number:=&ln_marks;
begin
if ln_marks>90 then 
dbms_output.put_line('Grade : A');
elsif ln_marks>=75 then 
dbms_output.put_line('Grade : B');
elsif ln_marks>=60 then
dbms_output.put_line('Grade : C');
else
dbms_output.put_line('Fail');
end if;
end;
/