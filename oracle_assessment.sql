CREATE TABLE STUDENTS (
    STUDENT_ID   NUMBER PRIMARY KEY,
    STUDENT_NAME VARCHAR2(30) UNIQUE,
    GENDER       CHAR(1),
    DOM          DATE
);
desc students;
INSERT INTO STUDENTS VALUES (1, 'Aarav Kumar', 'M', TO_DATE('2002-05-10', 'YYYY-MM-DD'));
INSERT INTO STUDENTS VALUES (2, 'Sneha Reddy', 'F', TO_DATE('2001-12-15', 'YYYY-MM-DD'));
INSERT INTO STUDENTS VALUES (3, 'Rohan Mehta', 'M', TO_DATE('2003-021-20', 'YYYY-MM-DD'));
INSERT INTO STUDENTS VALUES (4, 'Priya Shah', 'F', TO_DATE('2000-09-25', 'YYYY-MM-DD'));
INSERT INTO STUDENTS VALUES (5, 'Vikram Singh', 'M', TO_DATE('2002-07-14', 'YYYY-MM-DD'));
INSERT INTO STUDENTS VALUES (6, 'Kavya Nair', 'F', TO_DATE('2001-11-01', 'YYYY-MM-DD'));
INSERT INTO STUDENTS VALUES (7, 'Manoj Yadav', 'M', TO_DATE('2003-04-10', 'YYYY-MM-DD'));
INSERT INTO STUDENTS VALUES (8, 'Divya Patel', 'F', TO_DATE('2002-06-18', 'YYYY-MM-DD'));
select * from students order by student_id;
Select * from students
           where DOM> to_date('Jan 1,2002','Mon dd,yyyy');

Select * from students;
Select student_name, gender from students;
Select * from students
           where DOB> to_date('Jan 1,2002','Mon dd,yyyy');

select * from students order by DOB;
select * from students order by DOM;
alter table students rename column dom to dob;
select gender, count(student_id)
      From students
     Group by gender;
    select * from students where student_name like 'S%' ; 
    Select  to_char(dom,'DD-MON-YYYY');
    select * from students;
    select * from students
    Where gender='F'
    Order by student_name;

select months_between(sysdate,dob)/12 as age from students;

      
    Select DOB,count(DOB)
    From students
   Group by DOB;
   Select  to_char(dob,'DD-MON-YYYY') from students;
   Select DOB,count(DOB)
From students
Group by DOB;