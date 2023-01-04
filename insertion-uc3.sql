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
insert into employee_payroll (id,name,salary,doj) values (1,'Rajesh Shukla',65000,'2020-03-20');