create database school_management ;
use school_management;
create table students(
student_id int, 
first_name varchar(50), 
last_name varchar(50), 
email varchar(50), 
phone_number int, 
date_of_birth date);
create table courses(
course_id int, 
course_name varchar(50), 
course_description varchar(100), 
credits int);
alter table students add grade varchar(2);
alter table students modify phone_number  varchar(15);
insert into students(student_id, first_name, last_name, email, phone_number, date_of_birth) values (1,"Ram","Dixit","ram@gamail.com","7425896321",'2002-03-12'),(2,"Sham","Dixit","sham@gamail.com","9425878321",'2003-03-31'),(3,"Ram","Sharma","ramsh@gamail.com","8428896321",'2001-08-19');
insert into courses(course_id, course_name, course_description, credits) values(101,"maths","Deals with calculations",10),
(105,"chemistry","Deals with study of chemicals",10),(10211,"philosopy","Deals with study of thinking",08),(10021,"arts","Deals with study of art",08),(201,"science","Deals with study of world",10);
Select first_name, last_name, email from students;
drop table students;
drop database school_management;