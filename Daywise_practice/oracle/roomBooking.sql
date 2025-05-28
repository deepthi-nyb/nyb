select  * from employees;
select * from sales;
insert into sales values(1,to_date('20-02-2004','dd-mm-yyyy'),5,20);
insert into sales values(2,to_date('22-02-2004','dd-mm-yyyy'),10,30);
insert into sales values(3,to_date('20-02-2005','dd-mm-yyyy'),5,20);
insert into sales values(2,to_date('22-03-2005','dd-mm-yyyy'),10,30);
insert into sales values(4,to_date('20-04-2005','dd-mm-yyyy'),5,20);
insert into sales values(5,to_date('12-05-2006','dd-mm-yyyy'),10,30);
insert into sales values(1,to_date('20-05-2006','dd-mm-yyyy'),5,20);
insert into sales values(2,to_date('22-04-2007','dd-mm-yyyy'),10,30);
insert into sales values(1,to_date('20-02-2007','dd-mm-yyyy'),5,20);
insert into sales values(2,to_date('22-02-2008','dd-mm-yyyy'),10,30);
insert into sales values(3,to_date('20-02-2008','dd-mm-yyyy'),5,20);
insert into sales values(2,to_date('22-03-2009','dd-mm-yyyy'),10,30);
insert into sales values(4,to_date('20-04-2010','dd-mm-yyyy'),5,20);
insert into sales values(5,to_date('12-05-2010','dd-mm-yyyy'),10,30);
insert into sales values(1,to_date('20-05-2013','dd-mm-yyyy'),5,20);
insert into sales values(2,to_date('22-04-2013','dd-mm-yyyy'),10,30);
select * from sales;
drop table customers1;
CREATE TABLE customers1 (
    customer_id     NUMBER PRIMARY KEY,
    name            VARCHAR2(100),
    email           VARCHAR2(100),
    phone           VARCHAR2(15)
);
INSERT INTO customers1 VALUES (1, 'John Doe', 'john@example.com', '1234567890');
INSERT INTO customers1 VALUES (2, 'Jane Smith', 'jane@example.com', '9876543210');
INSERT INTO customers1 VALUES (3, 'Alice Brown', 'alice@example.com', '5556677889');
INSERT INTO customers1 VALUES (4, 'Bob Martin', 'bob@example.com', '4445566778');
select * from customers1;

CREATE TABLE rooms (
    room_id         NUMBER PRIMARY KEY,
    room_type       VARCHAR2(50),
    price_per_night NUMBER,
    status          VARCHAR2(20)  -- 'Available', 'Booked'
);
INSERT INTO rooms VALUES (101, 'Single', 1000, 'Available');
INSERT INTO rooms VALUES (102, 'Double', 1500, 'Booked');
INSERT INTO rooms VALUES (103, 'Suite', 3000, 'Available');
INSERT INTO rooms VALUES (104, 'Deluxe', 2500, 'Booked');
INSERT INTO rooms VALUES (105, 'Single', 1000, 'Available');
select * from rooms;


CREATE TABLE bookings (
    booking_id      NUMBER PRIMARY KEY,
    customer_id     NUMBER REFERENCES customers(customer_id),
    room_id         NUMBER REFERENCES rooms(room_id),
    checkin_date    DATE,
    checkout_date   DATE,
    booking_date    DATE
);
INSERT INTO bookings VALUES (201, 1, 102, TO_DATE('2025-05-25', 'YYYY-MM-DD'), TO_DATE('2025-05-28', 'YYYY-MM-DD'), TO_DATE('2025-05-20', 'YYYY-MM-DD'));
INSERT INTO bookings VALUES (202, 2, 104, TO_DATE('2025-05-26', 'YYYY-MM-DD'), TO_DATE('2025-05-29', 'YYYY-MM-DD'), TO_DATE('2025-05-22', 'YYYY-MM-DD'));
INSERT INTO bookings VALUES (203, 3, 101, TO_DATE('2025-05-30', 'YYYY-MM-DD'), TO_DATE('2025-06-02', 'YYYY-MM-DD'), TO_DATE('2025-05-25', 'YYYY-MM-DD'));
INSERT INTO bookings VALUES (204, 1, 102, TO_DATE('2025-05-25', 'YYYY-MM-DD'), TO_DATE('2025-05-28', 'YYYY-MM-DD'), TO_DATE('2025-05-20', 'YYYY-MM-DD'));
INSERT INTO bookings VALUES (205, 2, 104, TO_DATE('2025-05-26', 'YYYY-MM-DD'), TO_DATE('2025-05-29', 'YYYY-MM-DD'), TO_DATE('2025-05-22', 'YYYY-MM-DD'));
INSERT INTO bookings VALUES (206, 1, 101, TO_DATE('2025-05-30', 'YYYY-MM-DD'), TO_DATE('2025-06-02', 'YYYY-MM-DD'), TO_DATE('2025-05-25', 'YYYY-MM-DD'));
INSERT INTO bookings VALUES (207, 1, 102, TO_DATE('2025-05-25', 'YYYY-MM-DD'), TO_DATE('2025-05-28', 'YYYY-MM-DD'), TO_DATE('2025-05-20', 'YYYY-MM-DD'));
INSERT INTO bookings VALUES (208, 2, 104, TO_DATE('2025-05-26', 'YYYY-MM-DD'), TO_DATE('2025-05-29', 'YYYY-MM-DD'), TO_DATE('2025-05-22', 'YYYY-MM-DD'));
INSERT INTO bookings VALUES (209, 2, 101, TO_DATE('2025-05-30', 'YYYY-MM-DD'), TO_DATE('2025-06-02', 'YYYY-MM-DD'), TO_DATE('2025-05-25', 'YYYY-MM-DD'));
INSERT INTO bookings VALUES (210, 1, 102, TO_DATE('2025-05-25', 'YYYY-MM-DD'), TO_DATE('2025-05-28', 'YYYY-MM-DD'), TO_DATE('2025-05-20', 'YYYY-MM-DD'));
INSERT INTO bookings VALUES (211, 2, 104, TO_DATE('2025-05-26', 'YYYY-MM-DD'), TO_DATE('2025-05-29', 'YYYY-MM-DD'), TO_DATE('2025-05-22', 'YYYY-MM-DD'));
INSERT INTO bookings VALUES (212, 1, 101, TO_DATE('2025-06-03', 'YYYY-MM-DD'), TO_DATE('2025-06-09', 'YYYY-MM-DD'), TO_DATE('2025-05-25', 'YYYY-MM-DD'));
INSERT INTO bookings VALUES (213, 1, 102, TO_DATE('2025-06-04', 'YYYY-MM-DD'), TO_DATE('2025-06-08', 'YYYY-MM-DD'), TO_DATE('2025-05-20', 'YYYY-MM-DD'));
INSERT INTO bookings VALUES (214, 2, 104, TO_DATE('2025-06-26', 'YYYY-MM-DD'), TO_DATE('2025-06-29', 'YYYY-MM-DD'), TO_DATE('2025-05-22', 'YYYY-MM-DD'));
INSERT INTO bookings VALUES (215, 2, 101, TO_DATE('2025-05-30', 'YYYY-MM-DD'), TO_DATE('2025-06-02', 'YYYY-MM-DD'), TO_DATE('2025-05-25', 'YYYY-MM-DD'));
INSERT INTO bookings VALUES (216, 1, 102, TO_DATE('2025-06-25', 'YYYY-MM-DD'), TO_DATE('2025-06-28', 'YYYY-MM-DD'), TO_DATE('2025-05-20', 'YYYY-MM-DD'));
INSERT INTO bookings VALUES (217, 2, 104, TO_DATE('2025-06-26', 'YYYY-MM-DD'), TO_DATE('2025-06-29', 'YYYY-MM-DD'), TO_DATE('2025-05-22', 'YYYY-MM-DD'));

select * from bookings;
delete from bookings;


CREATE TABLE payments (
    payment_id      NUMBER PRIMARY KEY,
    booking_id      NUMBER REFERENCES bookings(booking_id),
    amount          NUMBER,
    payment_date    DATE,
    payment_mode    VARCHAR2(20)  -- e.g., 'Cash', 'Credit Card', 'UPI'
);
INSERT INTO payments VALUES (301, 201, 4500, TO_DATE('2025-05-25', 'YYYY-MM-DD'), 'Credit Card');
INSERT INTO payments VALUES (302, 202, 7500, TO_DATE('2025-05-26', 'YYYY-MM-DD'), 'UPI');
INSERT INTO payments VALUES (303, 203, 3000, TO_DATE('2025-05-30', 'YYYY-MM-DD'), 'Cash');
INSERT INTO payments VALUES (304, 201, 4500, TO_DATE('2025-02-25', 'YYYY-MM-DD'), 'Credit Card');
INSERT INTO payments VALUES (305, 202, 7500, TO_DATE('2025-02-26', 'YYYY-MM-DD'), 'UPI');
INSERT INTO payments VALUES (306, 203, 3000, TO_DATE('2025-03-30', 'YYYY-MM-DD'), 'Cash');
INSERT INTO payments VALUES (307, 201, 4500, TO_DATE('2025-03-25', 'YYYY-MM-DD'), 'Credit Card');
INSERT INTO payments VALUES (308, 202, 7500, TO_DATE('2025-04-26', 'YYYY-MM-DD'), 'UPI');
INSERT INTO payments VALUES (309, 203, 3000, TO_DATE('2025-04-30', 'YYYY-MM-DD'), 'Cash');
select * from payments;

-- Task 1: List All Currently Booked Rooms
--Scenario: Hotel staff wants to see which rooms are currently occupied.
select b.room_id
from bookings b
where sysdate between CHECKIN_DATE and CHECKOUT_DATE;
--
select b.room_id
from bookings b
where sysdate not between CHECKIN_DATE and CHECKOUT_DATE;
--
select * from bookings;
-- Task 2: Find Available Rooms for Given Dates
--Scenario: A customer wants to book a room from '2025-06-01' to '2025-06-05'. Find rooms not booked in that period.
select * from rooms;
select r.*
from rooms r
where status='Available'
and r.room_id not in(select b.room_id
                     from bookings b
                     where CHECKIN_DATE> to_date('2025-06-01','yyyy-mm-dd')and
                           CHECKOUT_DATE< to_date('2025-06-05','yyyy-mm-dd'));
 --Task 3: Calculate Total Revenue Per Month
--Scenario: Management wants monthly revenue from all room bookings. 
select * from payments;

select  to_char(payment_date,'yyyy-mm')as Month,sum(amount) as monthly_revenue
from payments
group by to_char(payment_date,'yyyy-mm')
order by month;
-- Task 4: List Frequent Customers (More Than 3 Bookings)
--Scenario: Identify loyal customers for special offers.
select * from bookings;

select c.name,count(b.booking_id)as total_bookings
from customers1 c
join bookings b
on c.customer_id= b.customer_id
group by c.name;
--
select c.name,count(b.booking_id)as total_bookings
from customers1 c
join bookings b
on c.customer_id= b.customer_id
group by c.name
having count(b.booking_id)>3;
--Task 5: Booking Conflict Check
--Scenario: Prevent booking the same room for overlapping dates.
--Solution: Check if a room is already booked for a given period.
select * from bookings;
select * from bookings
where room_id=104
and CHECKIN_DATE>to_date('22-05-2025','dd-mm-yyyy')
and CHECKOUT_DATE<to_date('30-05-2025','dd-mm-yyyy');

--Task 6: Generate Bill for a Booking
--Scenario: Calculate total stay cost for a specific booking.
select * from payments;
select * from bookings;
select * from rooms;
select (CHECKOUT_DATE-CHECKIN_DATE) as days from bookings;
select r.room_id,r.room_type,b.booking_id,
b.customer_id,r.price_per_night,(CHECKOUT_DATE-CHECKIN_DATE) as total_nights
,r.price_per_night*(CHECKOUT_DATE-CHECKIN_DATE)as total_bill
from rooms r
join
bookings b
on r.room_id=b.room_id
where b.booking_id=201;
---
SELECT 
    b.booking_id,
    r.price_per_night,
    (b.checkout_date - b.checkin_date) AS total_nights,
    (b.checkout_date - b.checkin_date) * r.price_per_night AS total_amount
FROM bookings b
JOIN rooms r ON b.room_id = r.room_id
WHERE b.booking_id = 201;

-- Task 7: Room Occupancy Rate
--Scenario: Calculate how many days each room was booked in the last 30 days.
select b.room_id,sum((CHECKOUT_DATE-CHECKIN_DATE)) as total_days 
from bookings b
where booking_date>sysdate-30
group by room_id;
--
SELECT room_id,
       SUM(LEAST(checkout_date, SYSDATE) - GREATEST(checkin_date, SYSDATE - 30)) AS booked_days
FROM bookings
WHERE checkout_date >= SYSDATE - 30
  AND checkin_date <= SYSDATE
GROUP BY room_id;
