SELECT
    *
FROM
    employees;

SELECT
    e.first_name,
    d.department_name
FROM
         employees e
    JOIN departments d ON e.department_id = e.department_id;

SELECT
    e.*,
    d.*
FROM
    employees   e
    LEFT JOIN departments d ON e.department_id = d.department_id;

SELECT
    e1.employee_id,
    e1.first_name,
    e2.employee_id AS manager_id,
    e2.first_name  AS manager_name
FROM
         employees e1
    JOIN employees e2 ON e1.manager_id = e2.employee_id;

SELECT
    *
FROM
    emp;

SELECT
    *
FROM
    emp1;

SELECT
    *
FROM
    emp2;

CREATE TABLE emp2 (
    empid    NUMBER,
    empname  VARCHAR2(30),
    phno     NUMBER,
    location VARCHAR2(30),
    doj      DATE
);
          ---adding constraints explicitly
ALTER TABLE emp2 ADD CONSTRAINT empid_pk PRIMARY KEY ( empid );--primary key
ALTER TABLE emp2 MODIFY
    empname NOT NULL;

ALTER TABLE emp2 ADD CONSTRAINT phno_uni UNIQUE ( phno );

ALTER TABLE emp2 ADD salary NUMBER;

desc emp2;

ALTER TABLE emp2 MODIFY
    doj DEFAULT sysdate;

ALTER TABLE emp2 ADD CONSTRAINT salary_chk CHECK ( salary >= 500 );

SELECT
    *
FROM
    emp;

UPDATE emp
SET
    salary = salary + salary * 0.1
WHERE
    department_id = 50;

SELECT
    *
FROM
    employees
WHERE
    salary BETWEEN 5000 AND 8000;

SELECT
    *
FROM
    employees
WHERE
    department_id IN ( 10, 20, 30 );

SELECT
    employee_id,
    upper(first_name
          || ' '
          || last_name) AS full_name
FROM
    employees;

SELECT
    employee_id,
    first_name,
    salary,
    round(salary, - 3) AS rounded_sal
FROM
    employees;

SELECT
    employee_id,
    first_name,
    hire_date
FROM
    employees
WHERE
    hire_date > ( add_months(sysdate, 60) );
SELECT
    *
FROM
    employees;

SELECT
    employee_id,
    first_name,
    hire_date,
    to_char(hire_date, 'DD-Mon-YYYY') AS conv_date
FROM
    employees;
        