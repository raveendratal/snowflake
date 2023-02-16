--- create multiple empty tables
create or replace table emp10 as select * from emp where 1=2;
create or replace table emp20 as select * from emp where 1=2;
create or replace table emp30 as select * from emp where 1=2; 
create or replace table empall as select * from emp where 1=2;

--- multi table insert using condition
INSERT ALL
  WHEN deptno=10 THEN
    INTO emp10
  WHEN deptno=20 THEN
    INTO emp20
  WHEN deptno=30 THEN
    INTO emp30
  ELSE
    INTO empall
SELECT * from emp;

-- validate after completion of load
select * from emp10;
select * from emp20;
select * from emp30;
select * from empall;



