create database abc;
use abc;
create table employee(
EmployeeID INT Primary Key,
FirstName VARCHAR(50) Not Null,
LastName VARCHAR(50) Not Null,
Email VARCHAR(100) Not Null,
Salary INT Not Null,
Department VARCHAR(50));
insert into employee(EmployeeId, FirstName, LastName, Email, Salary, Department) values (1,"John", "Doe", "john.doe@company.com", 60000, "Marketing");
insert into employee(EmployeeId, FirstName, LastName, Email, Salary, Department) values(2, "Jane","Smith", "jane.smith@company.com",75000, "Sales"),
( 3, "Michael", "Johnson", "michael.johnson@company.com",85000, "Marketing"),
(4, "Emily", "Williams", "emily.williams@company.com", 72000, "IT"),
(5, "David", "Brown", "david.brown@company.com",65000, "Sales"),
(6, "Sarah", "Davis", "sarah.davis@company.com",90000, "IT"),
(7, "Robert", "Miller", "robert.miller@company.com",70000, "Finance"),
(8, "Jessica", "Wilson","jessica.wilson@company.com",65000, "Finance"),
(9, "Daniel", "Anderson", "daniel.anderson@company.com", 72000, "IT"),
(10, "Ashley", "Taylor", "ashley.taylor@company.com",58000, "Sales"),
(11, "William", "Brown", "william.brown@company.com",78000, "Marketing"),
(12, "Sophia", "Davis", "sophia.davis@company.com",62000, "HR");
Alter table employee add check (Salary>0);
Create table departments(
DepartmentID INT Primary Key,
DepartmentName VARCHAR(50) Not Null);
insert into departments(DepartmentID, DepartmentName) values(
1, "Marketing"),(2, "Sales");
insert into departments(DepartmentID, DepartmentName) values(
3,"IT"),(4, "Finance"),(5, "HR");

Alter table employee add departmentId int ;
ALTER TABLE employee ADD constraint FOREIGN KEY (departmentID) REFERENCES departmentS (departmentID);
Alter table employee add unique (email);

create table projects(
ProjectID INT Primary Key,
ProjectName VARCHAR(100) Not Null,
departmentID int);
ALTER TABLE projects ADD constraint FOREIGN KEY (departmentID) REFERENCES departmentS (departmentID);
insert into employee(EmployeeId, FirstName, LastName, Email, Salary, Department , departmentid) values
 (13,"Lily", "Doe", "lily.doe@company.com", 60000, "Marketing",7);
 insert into employee(EmployeeId, FirstName, LastName, Email, Salary, Department) values
 (13,"Lily", "Doe", "john.doe@company.com", 60000, "Marketing");
 
 delete from departments where DepartmentID = 3 ;
 
 Update employee set departmentID= 7 where EmployeeID = 1;
drop table employee;
drop table departments;
drop table projects;