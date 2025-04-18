--2
CREATE TABLE departments1 (
    department_id      NUMBER PRIMARY KEY,
    department_name    VARCHAR2(50) NOT NULL,
    head_of_department VARCHAR2(50)
);
--1
CREATE TABLE students (
    student_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(30) NOT NULL,
    last_name  VARCHAR2(30),
    email      VARCHAR2(50) UNIQUE,
    dob        DATE,
    phone_number varchar2(10)check(length(phone_number)=10),
    department_id number references departments(department_id)
    );
desc students;
    desc departments1;

SELECT
    *
FROM
    students;

SELECT
    *
FROM
    departments1;

CREATE SEQUENCE departments1_seq START WITH 10 INCREMENT BY 10 MINVALUE 10 MAXVALUE 90 CACHE 30 NOCYCLE;

DROP SEQUENCE departments1_seq;

CREATE SEQUENCE students_seq START WITH 101 INCREMENT BY 1 MINVALUE 101 MAXVALUE 201 CACHE 30 NOCYCLE;
--3
INSERT INTO departments1 VALUES (
    departments1_seq.NEXTVAL,
    'Mechanical',
    'Vishnu Vardhan'
);

INSERT INTO departments1 VALUES (
    departments1_seq.NEXTVAL,
    'CSE',
    'Amith verma'
);

INSERT INTO departments1 VALUES (
    departments1_seq.NEXTVAL,
    'ECE',
    'Rama krishna'
);

INSERT INTO departments1 VALUES (
    departments1_seq.NEXTVAL,
    'EEE',
    'Surekha'
);

INSERT INTO departments1 VALUES (
    departments1_seq.NEXTVAL,
    'Civil',
    'Damodar'
);

INSERT INTO departments1 VALUES (
    departments1_seq.NEXTVAL,
    'AI',
    'Pranav'
);

INSERT INTO departments1 VALUES (
    departments1_seq.NEXTVAL,
    'RD',
    'Arjun'
);

SELECT
    *
FROM
    departments1;

INSERT INTO students VALUES (
    students_seq.NEXTVAL,
    'radha',
    'rani',
    'radha@gmail.com',
    TO_DATE('20-03-1995', 'dd-mm-yyyy'),
    '9078674523',
    20
);

INSERT INTO students VALUES (
    students_seq.NEXTVAL,
    '&first_name',
    '&last_name',
    '&first_name' || 'gmail.com',
    '&dob',
    '&phone_number',
    &department_id
);

SELECT
    *
FROM
    students;
---4a.studrents born after 2000
SELECT
    *
FROM
    students
WHERE
    dob > TO_DATE('01-01-2001', 'dd-mm-yyyy');
--4b.Display department names and total number of students in each (use GROUP BY). 
SELECT
    department_name,
    COUNT(student_id)
FROM
         departments1 d
    JOIN students s ON d.department_id = s.department_id
GROUP BY
    department_name;
---
UPDATE students
SET
    last_name = 'rajesh'
WHERE
    student_id = 102;

SELECT
    *
FROM
    students;
--4c.List students in alphabetical order by last name 
SELECT
    *
FROM
    students
ORDER BY
    last_name;