---Constraints
---parent table- customers table
create table customers
(customer_id number primary key,
customer_name varchar2(100) not null);
----child table- orders table
create table orders1
(order_id number primary key,
order_date date default sysdate,
customer_id number,
constraint custid_fk foreign key(customer_id) references customers(customer_id));
select * from hr.scott;
CREATE table  xx_NYB_sql (
    ENO NUMBER,
    ENAME VARCHAR2(100),
    DOB DATE,
    DEPARTMENT VARCHAR2(100),
    MOBNO NUMBER,
    EDUCATIONJ LONG,
    EMP_DATA CLOB,
    EMP_PICTURE BLOB
);
desc xx_NYB_sql;
--to add single column
ALTER TABLE XX_NYB_SQL ADD LOCATION VARCHAR2(100);
--to add multiple columns
ALTER TABLE XX_NYB_SQL ADD (
    TESTCOL1 VARCHAR2(30),
    TESTCOL2 VARCHAR2(30)
);
--to modify single column
ALTER TABLE XX_NYB_SQL MODIFY
    EDUCATION VARCHAR2(30);
--to modify multiple columns
ALTER TABLE XX_NYB_SQL MODIFY (
    EDUCATION VARCHAR2(30),
    EMP_DATA VARCHAR2(30)
);

SELECT
    *
FROM
    XX_NYB_SQL;
--drop
ALTER TABLE XX_NYB_SQL DROP COLUMN EMP_DATA;
--to drop multiple columns
ALTER TABLE XX_NYB_SQL DROP ( TESTCOL1,
                              TESTCOL2 );
--rename
ALTER TABLE XX_NYB_SQL RENAME COLUMN EDUCATIONJ TO EDUCATION;
--note:cant rename multiple columns with single alter statement
--drop table
CREATE TABLE TEST_TAB (
    COL  NUMBER,
    COL2 VARCHAR2(30)
);
desc Test_Tab;
desc xx_NYB_sql;

DROP TABLE TEST_TAB;
select * from XX_NYB_SQL;
INSERT INTO XX_NYB_SQL VALUES ( 1,
                                'JENNY',
                                12 - APRIL - 1998,
                                'IT',
                                98981,
                                'BTECH',
                                HEXTORAW('453D7A34'),
                                'ATP' );

ALTER TABLE XX_NYB_SQL
DROP COLUMN EMP_PICTURE;
DESC XX_NYB_SQL;
INSERT INTO XX_NYB_SQL VALUES ( 1,
                                'JENNY',
                                12 - APRIL - 1998,
                                'IT',
                                98981,
                                'BTECH',
                                'ATP' );
                            
DESC XX_NYB_SQL;        
ALTER TABLE XX_NYB_SQL
MODIFY EDUCATION VARCHAR2(100);    
   INSERT INTO XX_NYB_SQL VALUES ( 1,
                                'JENNY',
                                '12 - APRIL - 1998',
                                'IT',
                                98981,
                                'BTECH',
                                'ATP' );    
SELECT
    *
FROM
    XX_NYB_SQL;

INSERT INTO XX_NYB_SQL (
    ENO,
    ENAME,
    DEPARTMENT,
    EDUCATION
) VALUES ( 2,
           'SEN',
           'ADMIN',
           'MBA' );
SELECT * FROM XX_NYB_SQL;        
   