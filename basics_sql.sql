create database college;
use college;

create table students(
studentid INT primary key,
name varchar(15),
gender varchar(1) not null,
department varchar(10) unique, 
sem INT );
desc students;

insert into students (studentid,name,gender,department,sem) values(1,'ankit','M','CS',4);
insert into students (studentid,name,gender,department,sem) values(4,'tanu','F','IT',2);
insert into students (studentid,name,gender,department,sem) values(7,'aditi','F','Electrical',7);
insert into students (studentid,name,gender,department,sem) values(9,'ankit','M','Civil',5);
insert into students (studentid,name,gender,department,sem) values(8,'nidhi','F','Mechanical',4);
select * from students;

insert into students (studentid,name,gender,department,sem) values(2,'nidhi','F',null,4);
delete from students where studentid=2;

alter table students modify department varchar(10) not null;

select * from students where studentid=7;
select * from students where studentid in (4,8);
select * from students where name ='ankit';

select * from students where name like 'ank%';
select * from students where name like '%i';
select * from students where name like '%it%';
select * from students where name like '%i_i%';
select * from students where name like '%i__i%';

select * from students where studentid BETWEEN 2 AND 8 ;
 
select * from students order by studentid;
select * from students order by name;
select * from students order by sem desc;

