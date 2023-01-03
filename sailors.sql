-- IF recreating the tables:
drop table reserves;
drop table boats;
drop table sailors;


--creating Sailors table structure
create table sailors(sid number(10) primary key,sname char(30),rating number(5),age real);

--creating Boats table structure
 create table boats(bid number(10) primary key,bname char(30),color char(20));

--creating Reserves table structure
 create table reserves(sid number(10),bid number(10),day date,foreign key(sid) references sailors(sid),foreign key(bid) references boats(bid));

--Entering Sailors table values
insert into sailors values(22,'Dustin',7,45.0);
insert into sailors values(29,'Brutus',1,33.0);
insert into sailors values(31,'Lubber',8,55.5);
insert into sailors values(58,'Rusty',10,35.0);
insert into sailors values(64,'Horatio',7,35.0);
insert into sailors values(71,'Zorba',10,16.0);
insert into sailors values(85,'Art',3,25.5);
insert into sailors values(95,'Bob',3,63.5);

--Entering Boats table values
insert into Boats values(101,'Interlake','Blue');
insert into Boats values(102,'Interlake','Red');
insert into Boats values(103,'Clipper','Green');
insert into Boats values(104,'Marine','Red');

--Entering Reserves table values
insert into Reserves values(22,101,'10-oct-98');
insert into Reserves values(22,102,'10-oct-98');
insert into Reserves values(22,103,'10-aug-98');
insert into Reserves values(22,104,'10-jul-98');
insert into Reserves values(31,102,'11-oct-98');
insert into Reserves values(31,103,'11-jun-98');
insert into Reserves values(31,104,'11-dec-98');
insert into Reserves values(64,101,'09-may-98');
insert into Reserves values(64,102,'09-aug-98');

--describe the table
desc sailors;
desc boats;
desc reserves;

--show table
select*from sailors;
select*from boats;
select*from reserves;

/*
 * 
 * create table customer(id number(5) primary key,name varchar2(30),age float(5),address varchar2(30),salary number(7,2));
 * create table order1(oid number(5),day date,customer_id number(5),amount number(10),foreign key(customer_id) references customer(id));
 * desc customer;
 * desc order;
 * 
 * --inserting values customer
 * 
 * insert into customer values(1,'Ramesh',32,'Ahmedabad',2000.00);
 * insert into customer values(2,'Khilan',25,'Delhi',1500.00);
 * insert into customer values(3,'Kaushik',23,'Kota',2000.00);
 * insert into customer values(4,'Chaitali',25,'Mumbai',6500.00);
 * insert into customer values(5,'Hardik',27,'Bhopal',8500.00);
 * insert into customer values(6,'Komal',22,'MP',4500.00);
 * insert into customer values(7,'Muffy',24,'Indore',10000.00);
 * 
 * --inserting values of order table
 * 
 * insert into order1 values(102,'08-oct-2009',3,3000);
 * insert into order1 values(100,'08-oct-2009',3,1500);
 * insert into order1 values(101,'20-nov-2009',2,1560);
 * insert into order1 values(103,'08-may-2008',4,2060);
 * 
*/
