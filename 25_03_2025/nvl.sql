SELECT
    *
FROM
    HR.EMPLOYEES;

SELECT
    EMPLOYEE_ID,
    FIRST_NAME,
    SALARY,
    NVL(COMMISSION_PCT, 0) NVL_COMM
FROM
    HR.EMPLOYEES;

SELECT
    EMPLOYEE_ID,
    FIRST_NAME,
    SALARY,
    NVL2(COMMISSION_PCT, 0.5, 0) NVL2_COMM
FROM
    HR.EMPLOYEES;
SELECT
    E.EMPLOYEE_ID,
    E.FIRST_NAME,
    E.LAST_NAME,
    E.SALARY,
    E.COMMISSION_PCT,
    E.SALARY * e.COMMISSION_PCT sal_commissionpct
FROM
    HR.EMPLOYEES e;
SELECT
    E.DEPARTMENT_ID,
    SUM(E.SALARY * E.COMMISSION_PCT)
FROM
    HR.EMPLOYEES E
GROUP BY
    E.DEPARTMENT_ID;
  SELECT
    NULL + 2600
FROM
    DUAL;
  SELECT
    SUM(COMMISSION_PCT)
FROM
    HR.EMPLOYEES;
SELECT
    SUM(SALARY)
FROM
    HR.EMPLOYEES;
SELECT
    SUM(SALARY * COMMISSION_PCT)
FROM
    HR.EMPLOYEES;

SELECT
    DEPARTMENT_ID,
    SUM(SALARY * COMMISSION_PCT)
FROM
    HR.EMPLOYEES
GROUP BY
    DEPARTMENT_ID;


select * from ( SELECT
                    EMPLOYEE_ID,
                    FIRST_NAME,
                    DEPARTMENT_ID,
                    SALARY,
                    DENSE_RANK()over(partition by department_id order by salary)
    TOP3_RNKS
    FROM
    HR.EMPLOYEES)
    WHERE
        TOP3_RNKS <= 3;
        select * from hr.departments;
        select department_id,department_name
        from hr.DEPARTMENTS
        where department_id in(select department_id
                                from hr.EMPLOYEES
                                group by DEPARTMENT_ID
                                having sum(salary)>20000);