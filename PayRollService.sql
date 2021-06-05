create database payroll_service16

select * from sys.databases

use payroll_service16

create table Employee_payroll
(
id int identity(1,1) primary key,
name varchar(50) not null,
salary money not null,
start date not null,
);

insert into Employee_payroll values
('bili',200000.0,'2019-08-14'),
('Tesrisha',150000.0,'2018-01-03'),
('Jack',50000.0,'2020-05-21');

select * from Employee_payrollselect * from employee_payroll

insert into employee_payroll values
('Ramesh', 1500000 ,'2018-8-14'),
('Suresh', 2000000, '2020-06-2');

select salary from employee_payroll where name = 'ramesh'

select getdate() Today_Date;

select * from employee_payroll where start between '2018-6-2' and GETDATE()

alter table employee_payroll add
gender char(1);

update employee_payroll set gender = 'F' where name in ('bili','Terisha')

select sum(salary) as 'Total salary',gender from employee_payroll group by gender

select min(salary) as 'Total salary',gender from employee_payroll group by gender

update employee_payroll set gender = 'M' where id in ('4', '5')

update employee_payroll set name = 'Sharath' where id in ('1')

update employee_payroll set gender = 'M' where name in ('Sharath')

select * from employee_payroll

update employee_payroll set salary = '200000' where id in ('5')

alter table employee_payroll add
phone varchar(15),
department varchar(150) not null default 'CSE',
address varchar(250) not null default 'India'

alter table employee_payroll add 
Constraint DF_address default 'india' for address;

sp_rename 'employee_payroll.salary','basic_pay'

select * from employee_payroll

sp_rename 'basic_pay','employee_payroll'

sp_rename 'employee_payroll.salary','basic_pay'

alter table employee_payroll add
deduction real,
taxable_pay money,
income_tax money,
net_pay float

set identity_insert employee_payroll off;

insert into employee_payroll values
('Terisha',150000.0,'2018-01-03','F','1234656789','Sales','India',100.0,50000.0,400.0,250500.0)

select * from employee_payroll