
-- single line comment this is my first comment
/* multi line comments */

-- how to create a database 
create database if not exists ravi_db;
-- use database ravi_db
use database ravi_db;
-- how to create schema 
create schema if not exists ravi_schema;
-- use schema ravi_schema
use schema ravi_schema;
-- drop emp table if exists
DROP TABLE IF EXISTS emp;
-- drop dept table if exists
DROP TABLE IF EXISTS dept;
-- create emp table if not exists
CREATE TABLE IF NOT EXISTS emp(EMPNO INT,ENAME STRING,JOB STRING,MGR STRING,HIREDATE DATE,SAL INT,COMM STRING,DEPTNO INT);
-- create dept table if not exists
CREATE TABLE IF NOT EXISTS dept( Deptno INT, Dname STRING, Loc STRING);
-- insert data into emp table
INSERT INTO emp VALUES (7369,'SMITH','CLERK',7902,'1980-10-12',800,NULL,20),
(7499,'ALLEN','SALESMAN',7698,'1981-10-02',1600,300,30),
(7521,'WARD','SALESMAN',7698,'1981-12-02',1250,500,30),
(7566,'JONES','MANAGER',7839,'1981-02-04',2975,NULL,20),
(7654,'MARTIN','SALESMAN',7698,'1981-08-09',1250,1400,30),
(7698,'SGR','MANAGER',7839,'1981-01-05',2850,NULL,30),
(7782,'RAVI','MANAGER',7839,'1981-09-06',2450,NULL,10),
(7788,'SCOTT','ANALYST',7566,'1987-09-04',3000,NULL,20),
(7839,'KING','PRESIDENT',NULL,'1981-07-11',5000,NULL,10),
(7844,'TURNER','SALESMAN',7698,'1981-08-09',1500,0,30),
(7876,'ADAMS','CLERK',7788,'1987-03-05',1100,NULL,20),
(7900,'JAMES','CLERK',7698,'1981-03-12',950,NULL,30),
(7902,'FORD','ANALYST',7566,'1981-03-12',3000,NULL,20),
(7934,'MILLER','CLERK',7782,'1982-03-01',1300,NULL,10),
(1234,'SEKHAR','doctor',7777,NULL,667,78,50);
-- insert data into dept table
INSERT INTO DEPT VALUES (10,'ACCOUNTING','NEW YORK'),
(20,'RESEARCH','DALLAS'),
(30,'SALES','CHICAGO'),
(40,'OPERATIONS','BOSTON');

--- Creating Table employee1
create table employee1(id int,name string,loc string);
--- insert data into employee1
insert into employee1 values (1,'Ravi','Bangalore');
insert into employee1 values (2,'Raj','Chennai');
insert into employee1 values(3,'Mahesh','Pune');
insert into employee1 values(4,'Sridhar','Mumbai');
insert into employee1 values(5,'Prasad','Hyderabad');
--- Creating table  employee2
create table employee2(id int,name string,loc string,sal int);
----insert data into employee2
insert into employee2 values (1,'Ravi','Bangalore',5000);
insert into employee2 values (2,'Raj','Chennai',6000);
insert into employee2 values(3,'Mahesh','Pune',8000);
insert into employee2 values(4,'Sindhu','Bangalore',8000);
insert into employee2 values(5,'Vikranth','Chennai',7900);
insert into employee2 values(6,'Reshwanth','Bangalore',9000);

