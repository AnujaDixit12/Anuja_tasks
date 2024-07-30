use abc;
create table t(
first_name varchar(50),
last_name varchar(50),
salary int);
insert into t(first_name,last_name,salary) values("Ram","Dixit",45000),
("Sham","Dit",44000),("Jane","Smith",65000),("Emily", "Williams",65000),("Sarah", "Davis",85000),
("David", "Brown",45000);
Select * from t order by salary desc limit 3;

Select * from t order by salary asc limit 3;

SELECT * FROM t order by salary DESC LIMIT 1,1;

SELECT * FROM t order by salary ASC LIMIT 1,1;

SELECT * FROM t order by salary DESC LIMIT 2,1;

SELECT * FROM t order by salary ASC LIMIT 2,1;

SELECT * FROM t where salary between 65000 and 80000 order by first_name ASC LIMIT 3;