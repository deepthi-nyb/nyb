set serveroutput on;
--1. Anonymous Block – Print Message
--Q: Write a PL/SQL block to print "Hello, PL/SQL Developer!"
begin
dbms_output.put_line('Hello,PLSQL DEveloper');
end;
/
-- 2. Variable Declaration and Arithmetic
--Q: Write a PL/SQL block that declares two numbers, adds them, and prints the result.
declare
num1 number:=10;
num2 number:=20;
result number;
begin
result:=num1+num2;
dbms_output.put_line('sum of num1 and num2 is '||result);
end;
/
--3. IF-ELSE Condition
--Q: Write a PL/SQL block that checks if a number is even or odd.
declare
num number:=&number;
begin
if mod(num,2)=0 then 
dbms_output.put_line('Number '||num||' is even number');
else
dbms_output.put_line('Number '||num||' is odd number');
end if;
end;
/
/
--4. FOR Loop
--Q: Write a PL/SQL block that prints numbers from 1 to 5.
begin
for i in  1..10 loop
dbms_output.put_line('Number '||i);
end loop;
end;
/
-- 5. WHILE Loop – Factorial
--Q: Write a PL/SQL block to calculate the factorial of 5 using a WHILE loop.
declare
num number:=&num;
fact number:=1;
begin
while num>0 loop
fact:=fact*num;
num:=num-1;
end loop;
dbms_output.put_line('The factorial of given number is '||fact);
end;
/
-- 6. Cursor – Select All Employees
--Q: Write a PL/SQL block using an explicit cursor to fetch and print all employees from the EMP table.
declare
cursor emp_cursor is select employee_id,first_name from employees;
v_empid  employees.employee_id%type;
v_empname employees.first_name%type;
begin
open emp_cursor;
loop
fetch emp_cursor into v_empid,v_empname;
exit when emp_cursor%notfound;
dbms_output.put_line('employee id is '||v_empid|| ' and '||' employee name is '||v_empname);
end loop;
close emp_cursor;
end;
/
-- 7. Exception Handling
--Q: Write a PL/SQL block that divides two numbers and handles divide-by-zero exception.
declare
a number:=&a;
b number:=&b;
result number;
begin
result:=a/b;
dbms_output.put_line('The division of two numbers is '||result);
exception 
when zero_divide then
dbms_output.put_line('Can not divide by zero');
end;
/
--8. Procedure – Print Message
--Q: Write a procedure say_hello that prints "Hello from Procedure".
create or replace procedure say_Hello is
begin
dbms_output.put_line('Hello!! Good Morning!!');
end;
/
begin
say_Hello;
end;
/
-- 9. Function – Return Square
--Q: Write a function get_square that returns the square of a number.
create or replace function get_square(n number)
return number 
is
result number;
begin
result:=n*n;
return result;
end;
/
/
declare 
res number;
begin
res:=get_square(7);
dbms_output.put_line('square of number is '||res);
end;
/