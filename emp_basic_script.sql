-- create database 
CREATE OR REPLACE DATABASE EMPLOYEE_DB;
-- use database
USE EMPLOYEE_DB;
-- create schema under employee_db
CREATE OR REPLACE SCHEMA EMPLOYEE_SCHEMA;
-- use schema
USE SCHEMA EMPLOYEE_SCHEMA;

-- create table
CREATE OR REPLACE TABLE emp_basic (
  first_name STRING ,
  last_name STRING ,
  email STRING ,
  streetaddress STRING ,
  city STRING ,
  start_date DATE
  );
