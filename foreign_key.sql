 create database university;
 use university;
 create table student(
	studentid INT primary key,
    name varchar(15),
    depid INT,
    collegeid INT,
    fOREIGN KEY (depid) references dept(depid),
    fOREIGN KEY (collegeid) references college(collegeid));

insert into student values (1,'tanu',1,1),
(2,'ankit',2,2),
(3,'arpit',3,3),
(4,'nidhi',4,4);
drop table student;
select * from student;

create table dept(
	depid INT primary key,
    name varchar(15),
    address varchar(15));
insert into dept values(1,'IT','add1'),
(2,'CS','add2'),
(3,'ECE','add3'),
(4,'Civil','add4');
select * from dept;
drop table dept;

create table college(
	collegeid INT primary key AUTO_INCREMENT,
    name varchar(15));
insert into college values(1,'ABC college'),
(2,'XYZ college'),
(3,'IIT'),
(4,'NIT');
select * from college;

select * from dept where depid =(select depid from student where studentid=2);
select * from college where collegeid=(select collegeid from student where studentid=4);    
 
    
    

    
    
    
 
 
	
 
 
 