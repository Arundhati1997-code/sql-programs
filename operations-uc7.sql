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
insert into employee_payroll (id,name,salary,doj) values (2,'Amar chauhan',56000,'2021-04-11');
insert into employee_payroll (id,name,salary,doj) values (3,'Naina Chandrakant',78000,'2021-05-12');
insert into employee_payroll  (id,name,salary,doj) values (4,'Arundhati Raina',88000,'2021-03-16');
insert into employee_payroll  (id,name,salary,doj) values (5,'Sameer Maheshwari',94000,'2019-04-20');
insert into employee_payroll  (id,name,salary,doj) values (6,'Sameera Mahant',96000,'2018-04-20');
insert into employee_payroll  (id,name,salary,doj) values (7,'Saher Maheshwari',98000,'2019-04-20');
insert into employee_payroll  (id,name,salary,doj) values (8,'Sanj Malhotra',100000,'2019-06-21');
insert into employee_payroll  (id,name,salary,doj) values (9,'Sanjay Joshi',120000,'2020-06-21');
insert into employee_payroll  (id,name,salary,doj) values (10,'Sanjana Sayan',130000,'2021-06-21');
SELECT * FROM employee_payroll;
SELECT salary from employee_payroll where name='Sameer Maheshwari';
SELECT salary from employee_payroll where doj BETWEEN CAST('2018-01-01' AS DATE) AND DATE(now());
SELECT * FROM employee_payroll;
alter table employee_payroll add gender varchar(1);
SELECT * FROM employee_payroll;
UPDATE employee_payroll SET gender = 'M' WHERE id = 1;
SELECT * FROM employee_payroll;
UPDATE employee_payroll SET gender = 'M' WHERE id = 2;
SELECT * FROM employee_payroll;
UPDATE employee_payroll SET gender = 'F' WHERE id = 3;
SELECT * FROM employee_payroll;
UPDATE employee_payroll SET gender = 'F' WHERE id = 4;
SELECT * FROM employee_payroll;
UPDATE employee_payroll SET gender = 'M' WHERE id = 5;
SELECT * FROM employee_payroll;
UPDATE employee_payroll SET gender = 'F' WHERE id = 6;
SELECT * FROM employee_payroll;
UPDATE employee_payroll SET gender = 'F' WHERE id = 7;
SELECT * FROM employee_payroll;
UPDATE employee_payroll SET gender = 'F' WHERE id = 8;
SELECT * FROM employee_payroll;
UPDATE employee_payroll SET gender = 'M' WHERE id = 9;
SELECT * FROM employee_payroll;
UPDATE employee_payroll SET gender = 'F' WHERE id = 10;
SELECT * FROM employee_payroll;
SELECT SUM(salary) FROM
employee_payroll WHERE gender = 'F' GROUP
BY gender;
SELECT avg(salary) FROM
employee_payroll WHERE gender = 'F' GROUP
BY gender;
SELECT min(salary) FROM
employee_payroll WHERE gender = 'F' GROUP
BY gender;
SELECT max(salary) FROM
employee_payroll WHERE gender = 'F' GROUP
BY gender;
SELECT count(gender) FROM 
employee_payroll WHERE gender = 'F' GROUP
BY gender;
SELECT count(gender) FROM 
employee_payroll WHERE gender = 'M' GROUP
BY gender;
