create database restaurant;
use restaurant;

create table Custs(
	custId INT PRIMARY KEY,
    phoneNum varchar(15),
    name varchar(20));

create table hotels(
	hotelId INT PRIMARY KEY,
    name varchar(20),
    city varchar(15));

create table orders(
	orderId INT PRIMARY KEY,
    custId INT,      -- foreign key
    amount FLOAT,
    restId INT,      -- foreign key
    FOREIGN KEY (custId) references Custs(custId),
    FOREIGN KEY (restId) references hotels(hotelId));

insert into Custs values
(1, '1928', 'Jatin'),
(2, '1980', 'Sandeep'),
(3, '1945', 'Girish');

insert into hotels values
(1, 'A2B', 'Bengaluru'),
(2, 'A2Z', 'Jaipur');

insert into orders values
(1, 1, 200.0, 1),
(2, 2, 500.0, 2),
(3, 2, 500.0, 1);

select * from orders;

-- Give me customer phone number for order no 3
select phoneNum from Custs where custId=(select custId from orders where orderId=3);

 -- join in databases [Cartesian product/cross join]
 select a.*,b.* from custs a inner join orders b order by a.custId;
 
 -- join on foreign key
 select * from custs inner join orders ON custs.custId=orders.custId;
 
-- Give me hotel name for order id 2
select a.name from hotels a inner join orders b ON a.hotelId=b.restId where b.orderId=2;

-- Give me restaurant name and customer name for order id 1
select c.name from orders a inner join custs b ON a.custId=b.custId inner join hotels c ON a.restId=c.hotelId where a.orderId=3;
select b.name from orders a inner join custs b ON a.custId=b.custId inner join hotels c ON a.restId=c.hotelId where a.orderId=3;

select * from custs a left join orders b ON a.custId=b.custId;
select * from orders a right join custs b ON a.custId=b.custId;

-- Get me customers name who have not placed any orders
select a.name from custs a left join orders b ON a.custId=b.custId where b.orderId is null;

 -- Get me customer name who have placed highest orders
 
 
create table employee(
	 empId INT primary key,
	 name varchar(20),
	 phonenum varchar(15),
     mgrId INT,
     FOREIGN KEY (mgrId) REFERENCES employee(empId));
 
 insert into employee values
 (1, 'Anoop', '1234', null),
 (2, 'Jatin', '4578', 1);
  
-- Get me Jatin's manager name

-- Without join
select name from employee where empId=(select mgrId from employee where name='Jatin');

-- With join
select b.name from employee a inner join employee b ON a.mgrId=b.empId;

 


 
 
   
 