select * from employees;
set serveroutput on;
begin 
select * from employees;
end;
/
declare
ln_empid number;
lv_name varchar2(100):='test_name';
ld_date date;
lv_constant varchar2(100);
begin
dbms_output.put_line('lv_name: '||lv_name);
select employee_id,first_name,hire_date
into ln_empid,lv_name,ld_date
from employees
where rownum=1;
lv_constant:='constant';
dbms_output.put_line('ln_empid: '||ln_empid);
dbms_output.put_line('lv_name'||lv_name);
dbms_output.put_line('ld_date'||ld_date);
dbms_output.put_line('lv_constant: '||lv_constant);
end;
/
/*Question 1: Declare and print a local variable
Q: Write a PL/SQL block to declare a variable v_name of type VARCHAR2(20) and assign it the value 'John', then print it.*/
declare
lv_name varchar2(20):='John';
begin
dbms_output.put_line('lv_name: '||lv_name);
end;
/
/* Question 2: Arithmetic operation using local variables
Q: Declare two NUMBER variables, assign values 10 and 20, calculate their sum and display it.*/
declare
ln_num1 number:=10;
ln_num2 number:=20;
ln_sum number;
begin
ln_sum:=ln_num1+ln_num2;
dbms_output.put_line('sum of 10 and 20 is '||ln_sum);
end;
/
/* Question 3: Use of BOOLEAN variable
Q: Declare a BOOLEAN variable and use it in an IF condition.*/
declare
is_valid boolean:=true;
begin
if is_valid then
dbms_output.put_line('The value is valid');
else
dbms_output.put_line('The value is invalid');
end if;
end;
/
declare
is_valid boolean:=false;
begin
if is_valid then
dbms_output.put_line('The value is valid');
else
dbms_output.put_line('The value is invalid');
end if;
end;
/
/*Question 4: Use local DATE variable
Q: Declare a local DATE variable and assign it the current date. Display it.*/
declare
lv_date date:=sysdate;
begin
dbms_output.put_line('Today date is '||lv_date);
end;
/
/*Question 6: Local variable with initialization
Q: Declare and initialize a NUMBER variable in one line. Print its square.*/
declare
ln_num number:=2;
begin
dbms_output.put_line('Square of a number is '||ln_num*ln_num);
end;
/
declare
ln_num number:=4;
num_square number;
begin
num_square:=power(ln_num,2);
dbms_output.put_line('Square of '||ln_num||' is '||num_square);
end;
/
/* Question 7: Concatenate string variables
Q: Declare two VARCHAR2 variables with values 'Hello' and 'World', then print Hello World.*/
declare
lv_var1 varchar2(100):='Hello';
lv_var2 varchar2(100):='World!';
begin
dbms_output.put_line(lv_var1||' '||lv_var2);
end;
/
