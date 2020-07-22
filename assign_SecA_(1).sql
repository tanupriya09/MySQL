create database college;
use  college;

create table department(
  department varchar(30) primary key,
  budget INT(11));
  
create table instructor(
INSTRUCTORID INT(11),
NAME Varchar(30),
DEPARTMENT Varchar(30),
SALARY int(11),
foreign key (DEPARTMENT) references department(department));

insert into department values 
("computer science" ,100000),
("Electrical",80000),
("Humanities",50000),
("Mechanical",40000),
("Information Technology",90000),
("Civil",60000);
select * from department;

insert into instructor values 
(44547,"smith","Computer Science",95000),
(44541,"bill","electrical",55000),
(47778,"sam","humanities",44000),
(48147,"erik","Mechanical",80000),
(441547,"melisa","Information Technology",65000),
(48898,"jena","civil",50000);
select * from instructor;

-- SECTION A 

-- Ques(1)

-- 1(A)
select a.name from instructor a inner join department b ON 
a.DEPARTMENT=b.department where
 a.salary>(select AVG(budget) from department);
 
 -- 1(B)
 select * from department where budget>50000;
 
 -- 1(C)
select  INSTRUCTORID from instructor where INSTRUCTORID>99999 and INSTRUCTORID<1000000;

-- 1(D)
select a.name,a.DEPARTMENT,b.budget from instructor a inner join department b ON a.DEPARTMENT=b.department;

-- 1(E)
select * from instructor where DEPARTMENT like '%science';