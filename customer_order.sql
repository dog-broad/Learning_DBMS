create table customer(id number(5) primary key,name varchar2(30),age float(5),address varchar2(30),salary number(7,2));
create table order1(oid number(5),day date,customer_id number(5),amount number(10),foreign key(customer_id) references customer(id));
desc customer;
desc order1;

--inserting values customer

insert into customer values(1,'Ramesh',32,'Ahmedabad',2000.00);
insert into customer values(2,'Khilan',25,'Delhi',1500.00);
insert into customer values(3,'Kaushik',23,'Kota',2000.00);
insert into customer values(4,'Chaitali',25,'Mumbai',6500.00);
insert into customer values(5,'Hardik',27,'Bhopal',8500.00);
insert into customer values(6,'Komal',22,'MP',4500.00);
insert into customer values(7,'Muffy',24,'Indore',10000.00);

--inserting values of order table

insert into order1 values(102,'08-oct-2009',3,3000);
insert into order1 values(100,'08-oct-2009',3,1500);
insert into order1 values(101,'20-nov-2009',2,1560);
insert into order1 values(103,'08-may-2008',4,2060);


select * from customer;
select * from order1;
