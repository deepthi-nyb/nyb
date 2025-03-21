select sysdate from dual;
select current_date from dual;
select to_char(sysdate,'mm') from dual;
select to_char(sysdate,'d') from dual;
select to_char(sysdate,'dd') from dual;
select to_char(sysdate,'ddd') from dual;
select to_char(sysdate,'y') from dual;
select to_char(sysdate,'yy') from dual;
select to_char(sysdate,'yyy') from dual;
select to_char(sysdate,'yyyy') from dual;
select to_char(sysdate,'dy') from dual;
select to_char(sysdate,'day') from dual;
select to_char(sysdate,'Day') from dual;
select to_char(sysdate,'mon') from dual;
select to_char(sysdate,'month') from dual;
select to_char(sysdate,'year') from dual;
select to_char(sysdate,'dd-mm-yy') from dual;
select to_char(sysdate,'Day-Month-Year') from dual;
select to_char(to_date('18/03/2025','dd/mm/yyyy'),'day-month-year') from dual;
select to_date('18/03/2025','dd/mm/yyyy') from dual;
select to_date('18.03.2025','dd.mm.yyyy') from dual;
select to_date('03-18-2025','mm-dd-yyyy') from dual;
select to_date('18.03.2025','dd.mm.yyyy') from dual;
select to_date('20-03-2025','dd-mm-yyyy') from dual;
select to_date('20-03-2025','dd-mm-yyyy') from dual;
select to_date('2025-03-20','yyyy-mm-dd') from dual;
select to_date('20-03-2025 19:21:55','dd-mm-yyyy HH24:MI:SS') from dual;
select to_number('200656.8776') from dual;
select to_number('200656.8776','999999.9000') from dual;
select to_number('1200.98','9999.99') from dual;
---practice questions
--Convert the current system date to the format DD-MON-YYYY HH24:MI:SS.
select to_char(sysdate,'DD-MON-YYYY HH24:MI:SS') from dual;
--Format the number 12345.678 to show with 2 decimal places and a comma separator.
select to_char('12345.678','99,999') from dual;
--Display the first day of the current year using the TO_CHAR function.
select last_day(add_months(sysdate,-3))+1 from dual;
--Convert the date 15-MAR-2025 to day and month format (DAY, MONTH YYYY).
select to_char(to_date( '15-MAR-2025','dd-MON-yyyy'),'DAY, MONTH YYYY') as formatted_date from dual;
--Display the current system date in Month-DD-YYYY format with the first letter of the month capitalized.
select Initcap(to_char(sysdate,'Month-DD-YYYY')) from dual;
--Convert the string 25-DEC-2025 to a date format.
select to_date('25-DEC-2025','dd-MON-yyyy')as converted_date from dual;
--Convert the string 2025-03-15 14:30:00 to a date with timestamp format.
select to_date('2025-03-15 14:30:00','yyyy-mm-dd HH24:MI:SS')as date_timeval from dual;
---Convert the string 03/20/2025 to a date format (MM/DD/YYYY).
select to_char(to_date('03/20/2025','mm/dd/yyyy'),'MM/DD/YYYY')as converted_date from dual;
SELECT TO_DATE('03/20/2025', 'MM/DD/YYYY') AS converted_date FROM dual;
--Find the number of days between 15-FEB-2025 and 20-MAR-2025 using TO_DATE.
select to_date( '20-MAR-2025','dd-MON-yyyy')-to_date('15-FEB-2025','dd-mon-yyyy')as days_between from dual;
--Convert the string Friday, 25-Mar-2025 to a date format.
select to_date('25-Mar-2025','dd-mon-yyyy')as converted_string from dual;
SELECT TO_DATE( '25-Mar-2025', 'DD-MON-YYYY') AS converted_date FROM dual;
--to_number
--Convert the string '12345.67' to a number format.
select to_number('12345.67','99999.99') as num from dual;
--Convert the string '1,23,456.78' to a number format.
select to_number('1,23,456.78','9,99,999.99')as num from dual;
select to_number('123456.78')as num from dual;
select to_char(12345,'999,999.99')from dual;
select to_char(12345,'888,888.88')from dual;
--Convert the string '1,23,456.78' to a number format.
select to_number('1,23,456.78','9,99,999.99') as num_form from dual;
SELECT TO_NUMBER('1,23,456.78', '99,99,999.99') AS number_value FROM dual;
SELECT TO_char('123456.78', '99,99,999.99') AS number_value FROM dual;