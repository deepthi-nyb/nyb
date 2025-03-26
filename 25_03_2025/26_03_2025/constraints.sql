--constraints
CREATE TABLE XXNYB_CONSTRAINTS (
    SNO             NUMBER,
    CONSTRAINT_NAME VARCHAR2(30) NOT NULL,
    COMMENTS        VARCHAR2(30)
);

INSERT INTO XXNYB_CONSTRAINTS VALUES ( 1,
                                       'not null',
                                       'it wont allow null values' );

CREATE TABLE SAMPLE_TAB1 (
    ID     NUMBER PRIMARY KEY,
    NAME   VARCHAR2(30) NOT NULL,
    PHNO   NUMBER UNIQUE,
    SALARY NUMBER CHECK ( SALARY >= 5000 ),
    DOJ    DATE DEFAULT SYSDATE
);

INSERT INTO SAMPLE_TAB1 VALUES ( 1,
                                 'jenny',
                                 93981,
                                 10000,
                                 SYSDATE );
INSERT INTO SAMPLE_TAB1 VALUES ( 1,
                                 'jenny',
                                 93981,
                                 10000,
                                 SYSDATE );
SELECT
    *
FROM
    SAMPLE_TAB1;

SELECT
    *
FROM
    SAMPLE_TAB;

DROP TABLE SAMPLE_TAB;

RENAME SAMPLE_TAB1 TO SAMPLE_TAB;

INSERT INTO SAMPLE_TAB VALUES ( 1,
                                'susan',
                                93982,
                                20000,
                                SYSDATE );

INSERT INTO SAMPLE_TAB VALUES ( 2,
                                'susan',
                                93982,
                                20000,
                                SYSDATE );

SELECT
    *
FROM
    TEST_TAB5;

DROP TABLE TEST_TAB5;

SELECT
    *
FROM
    TEST_TABLE1;

ALTER TABLE TEST_TABLE1 ADD CONSTRAINT PK_ID PRIMARY KEY ( ID );
drop constraint
PK_ID;

ALTER TABLE TEST_TABLE1 ADD CONSTRAINT PK_ID_NAME PRIMARY KEY ( ID,
                                                                NAME );

SELECT
    USER_CONSTRAINT,
    CONSTRAINT_TYPE,
    STATUS
FROM
    USER_CONSTRAINTS
WHERE
    TABLE_NAME = 'test_table1';

desc test_table1;

CREATE TABLE SAMPLE_TAB1
    AS
        (
            SELECT
                *
            FROM
                SAMPLE_TAB
        );

ALTER TABLE TEST_TABLE1 ADD CONSTRAINT PK_ID_NAME PRIMARY KEY ( ID,
                                                                NAME );

SELECT
    *
FROM
    STUDENTS;

CREATE TABLE STUDENTS1
    AS
        (
            SELECT
                *
            FROM
                STUDENTS
        );

ALTER TABLE STUDENTS1 ADD CONSTRAINT PK_ID_NAME PRIMARY KEY ( STUDENT_ID,
                                                              STUDENT_NAME );

SELECT
    *
FROM
    STUDENTS;

SELECT
    *
FROM
    HR.EMPLOYEES;

desc students1;

SELECT
    *
FROM
    STUDENTS;

SELECT
    *
FROM
    STUDENTS1;

desc students1;

ALTER TABLE STUDENTS1 ADD CONSTRAINT UNI_DOB UNIQUE ( DOB );
ALTER TABLE students
MODIFY name VARCHAR2(50) NOT NULL;
