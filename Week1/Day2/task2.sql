use abc;
create table employee(
EmployeeID INT Primary Key,
FirstName VARCHAR(50) Not Null,
LastName VARCHAR(50) Not Null,
Email VARCHAR(100) Not Null,
Salary INT Not Null,
DepartmentID int);
insert into employee(EmployeeId, FirstName, LastName, Email, Salary, DepartmentID) values
(1,"John", "Doe", "john.doe@company.com", 60000, 1);
insert into employee(EmployeeId, FirstName, LastName, Email, Salary, DepartmentID) values
(2, "Jane","Smith", "jane.smith@company.com",75000, 2),
( 3, "Michael", "Johnson", "michael.johnson@company.com",85000, 1),
(4, "Emily", "Williams", "emily.williams@company.com", 72000, 3),
(5, "David", "Brown", "david.brown@company.com",65000, 2),
(6, "Sarah", "Davis", "sarah.davis@company.com",90000, 3);
Create table departments(
DepartmentID INT Primary Key,
DepartmentName VARCHAR(50) Not Null);
insert into departments(DepartmentID, DepartmentName) values(
1, "Marketing"),(2, "Sales");
insert into departments(DepartmentID, DepartmentName) values(
3,"IT"),(4, "Finance"),(5, "HR");
create table projects(
ProjectID INT Primary Key,
ProjectName VARCHAR(100) Not Null,
DepartmentID int ,foreign KEY(DepartmentID) REFERENCES departments(DepartmentID));
 insert into projects(ProjectID,ProjectName,DepartmentID) values(
 1,"Project A" ,1),(
2, "Project B", 2),(3, "Project C",3),(4, "Project D",4),(5, "Project E", 5);

Alter table employee add check (Salary>0);

ALTER TABLE employee ADD constraint FOREIGN KEY (departmentID) REFERENCES departmentS (departmentID);

Alter table employee add unique (email);

insert into employee(EmployeeId, FirstName, LastName, Email, Salary, departmentid) values
 (13,"Lily", "Doe", "lily.doe@company.com", 60000, 7);
 
  insert into employee(EmployeeId, FirstName, LastName, Email, Salary, Departmentid) values
 (13,"Lily", "Doe", "john.doe@company.com", 60000, 1);
 
delete from departments where DepartmentID = 3 ;
  
Update employee set departmentID= 7 where EmployeeID = 1;
