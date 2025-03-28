select * from employees;
select max(salary)from employees;
CREATE TABLE dmart_emp (
    id     NUMBER,
    fname  VARCHAR2(50),
    lname  VARCHAR2(50),
    phno   NUMBER,
    salary NUMBER
);
--not null not able to add using add constraint
alter table dmart_emp
add constraint n_null not null(phno);
alter table dmart_emp add doj date;
desc dmart_emp;
alter table dmart_emp
--deafult not able to add using add constraint
add constraint doj_default default(doj);
--primary key we can add using add constraint
alter table dmart_emp
add constraint pk_id primary key(id);
desc dmart_emp;
SELECT constraint_name, constraint_type, status
FROM user_constraints
WHERE table_name = 'dmart_emp';
--to drop constraint
alter table dmart_emp
drop constraint pk_id;
alter table dmart_emp
add constraint pk_id_fname primary key(id,fname);
alter table dmart_emp
modify doj date default;
alter table dmart_emp
modify doj date default sysdate;
---unique constraint not able to add using modify
alter table dmart_emp
modify lname uni_lname unique;
---we can add unique constraint using add constraint
alter table dmart_emp
add constraint chk_sal check(salary>5000);
desc dmart_emp;
alter table dmart_emp
add sno number;
ALTER TABLE dmart_emp
MODIFY sno number UNIQUE;
create table test_tab
(col1 number,col2 varchar2(30));

ALTER TABLE test_tab
MODIFY col1 number UNIQUE;
SELECT * FROM user_constraints WHERE constraint_type = 'U';

--inline constraints
CREATE TABLE jio_emp (
    id     NUMBER PRIMARY KEY,
    name   VARCHAR2(30) NOT NULL,
    phno   NUMBER UNIQUE,
    salary NUMBER CHECK ( salary > 5000 ),
    doj    DATE DEFAULT sysdate
);
desc jio_emp;
alter table jio_emp drop primary key;
alter table jio_emp drop  constraint SYS_C007475;
alter table jio_emp drop constraint SYS_C007473;
ALTER TABLE jio_emp MODIFY doj DEFAULT NULL;
alter table jio_emp modify name null;