begin
null;
end;
/
set serveroutput on;
begin
dbms_output.put_line('Hello World!');
end;
/
begin
dbms_output.put_line('Hello plsql!');
end;
/
declare
v_emp varchar2(30):='John';
v_sal number:=5000;
begin
dbms_output.put_line('employee_name: '||v_emp);
dbms_output.put_line('employee_salary:'||v_sal);
end;
/
declare
v_marks number:=75;
begin
if v_marks>60 then
dbms_output.put_line('pass');
else
dbms_output.put_line('fail');
end if;
end;
/
--for loop
begin
for i in 1..10 loop
dbms_output.put_line('Numbers '||i);
end loop;
end;
/
--while loop
declare
i number:=1;
begin
while i<=5 loop
dbms_output.put_line('counter '||i);
i:=i+1;
end loop;
end;
/
select * from customers1;
select * from rooms;
select * from bookings;
select * from payments;
---
-- Task 8: Cancel a Booking and Mark Room Available
--Scenario: On booking cancellation, the room status must be set to 'Available'.

--Task 9: View Customer Booking History
--Scenario: Provide a customer's full booking and payment history.
select c.customer_id,c.name,b.booking_id,b.CHECKIN_DATE,b.CHECKOUT_DATE,p.amount,p.payment_date
from customers1 c
join bookings b on c.customer_id=b.booking_id
join payments p on b.booking_id=p.booking_id
where c.customer_id=101;

----Room booking 

-- Task 10: Create a View for Daily Check-ins
--Scenario: Front desk needs an easy view of today’s check-ins.

CREATE OR REPLACE VIEW daily_check_ins1 AS
SELECT 
    b.booking_id,
    c.customer_id,
    c.name,
    r.room_type,
    b.checkin_date
FROM customers1 c
JOIN bookings b ON c.customer_id = b.customer_id
JOIN rooms r ON b.room_id = r.room_id
WHERE TRUNC(b.checkin_date) = TRUNC(SYSDATE);

--

CREATE OR REPLACE VIEW daily_check_ins AS
SELECT 
    b.booking_id,
    c.customer_id,
    c.name,
    r.room_type,
    b.checkin_date
FROM customers1 c
JOIN bookings b ON c.customer_id = b.customer_id
JOIN rooms r ON b.room_id = r.room_id
WHERE TRUNC(b.checkin_date) = TRUNC(SYSDATE);
drop view daily_check_ins;
--









