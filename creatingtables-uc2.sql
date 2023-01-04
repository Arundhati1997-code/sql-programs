create database payroll_service;
show databases;
use payroll_service;
create table employee_payroll(
id int NOT NULL AUTO_INCREMENT,
name varchar(30) NOT NULL,
salary decimal(50,3) NOT NULL,
doj DATE,
primary key(id)
);