--datatypes
--number
--character datatypes-char,varchar2,long
---date
--timestamp
---lob
CREATE TABLE test_tab1 (
    sno  NUMBER,
    name VARCHAR2(30),
    phno NUMBER
);

INSERT INTO test_tab1 (
    name,
    phno
) VALUES (
    'deepthi',
    234
);

SELECT
    *
FROM
    test_tab1;
/*constraints
1. primary key
2.composite primary key
3.unique
4.not null
5.check
6.default
7.foreign key*/
--requirement-sno --not null
CREATE TABLE test_tab2 (
    sno    NUMBER NOT NULL,
    nam    VARCHAR2(30),
    salary NUMBER CHECK ( salary >= 5000 ),
    phno   NUMBER
);

INSERT INTO test_tab2 VALUES (
    2,
    'meghana',
    3000,
    123
);

SELECT
    *
FROM
    test_tab2;

INSERT INTO test_tab2 VALUES (
    3,
    'deepthi',
    5000,
    234
);
    ---dep----depid---primary key----parent table---
    ---emp-----depid---foreign key---child table
CREATE TABLE sample (
    sno  NUMBER PRIMARY KEY,
    name VARCHAR2(30),
    phno NUMBER
);

RENAME sample TO sample_p;

CREATE TABLE sample_c (
    sname VARCHAR2(30),
    sno   NUMBER,
    CONSTRAINT fk_sno FOREIGN KEY ( sno )
        REFERENCES sample_p ( sno )
);

CREATE TABLE xxnyb_constraints_desc_test (
    col_idx        NUMBER,
    constraint_sno NUMBER,
    description    VARCHAR2(500),
    comments       VARCHAR2(500),
    CONSTRAINT col_idx_pk PRIMARY KEY ( col_idx )
 --   CONSTRAINT const_sno_fk FOREIGN KEY ( constraint_sno )
   --     REFERENCES xxnyb_constraints_test ( sno )
);

CREATE TABLE xxnyb_constraints_desc_test1 (
    col_idx        NUMBER,
    constraint_sno NUMBER,
    description    VARCHAR2(500),
    comments       VARCHAR2(500),
    CONSTRAINT col_idx_pk PRIMARY KEY ( col_idx )
  CONSTRAINT const_sno_fk FOREIGN KEY ( constraint_sno )
   
   
   REFERENCES xxnyb_constraints_test ( sno )
);
SELECT
    *
FROM
    sample_p;

SELECT
    *
FROM
    sample_c;

desc test_tab1;

ALTER TABLE test_tab1 ADD CONSTRAINT pk_sno PRIMARY KEY ( sno );

SELECT
    *
FROM
    test_tab1;

UPDATE test_tab1
SET
    sno = 1
WHERE
    name = 'deepthi';

ALTER TABLE test_tab1 ADD CONSTRAINT pk_sno PRIMARY KEY ( sno );

ALTER TABLE test_tab1 MODIFY
    name VARCHAR2(30) NOT NULL;

ALTER TABLE test_tab1 ADD CONSTRAINT uni_phno UNIQUE ( phno );