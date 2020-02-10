
create database if not exists custdb;
use custdb;

create table customers(
customerID int auto_increment NOT NULL,
Name varchar(50) NOT NULL,
Address varchar(50),
PRIMARY KEY (customerID)
);
create table orders(
orderID int NOT NULL auto_increment,
customerID int NOT NULL,
order_date date NOT NULL,
order_total int NOT NULL,
PRIMARY KEY (orderID),
FOREIGN KEY(CustomerID) references customers(customerID)
);

create table items(
itemID int NOT NULL auto_increment,
name varchar(50) NOT NULL,
qty  int NOT NULL,
price dec(7,2) NOT NULL,
PRIMARY KEY (itemID)
);
create table order_itemline(
orderID int NOT NULL,
itemID int NOT NULL,
price  dec(7,2),
foreign key (orderID) references orders(orderID),
foreign key (itemID) references items(itemID)
);

describe customers;
insert into customers(customerID,Name,Address) values(1025,'Nisha Patel','5 Wooside Close Wembley');
insert into customers(Name,Address) values('Chetna Amin','58 Woodland avenue,Wembley');
insert into customers(Name,Address) values('Alpesh Patel','8 Green Street, Manchester');
insert into customers(Name,Address) values('Surely Pagal',' 12 Crish Rad,Alperton');
insert into customers(Name,Address) values('Kapila Jay',' 32 Wembley avenue, Middlesex');
insert into customers(Name,Address) values('Jay Patel',' 21 London Road, Alperton');
insert into customers(Name,Address) values('Paul Gibbs',' 45 Violet Road, London');
insert into customers(Name,Address) values('Andy Peatling ','67 Water lane, London');
insert into customers(Name,Address) values('Mike Pratt','25 Hatfield, Hertfordshire, London');

describe orders;
insert into items(itemID,name,qty,price) values(5001,'Green Labal',1,'30.99');
insert into items(name,qty,price) values('The Henley',3,'40.00');
insert into items(name,qty,price) values('The Scoop',1,'38.00');
insert into items(name,qty,price) values('Sleeveless Brown',3,'33.00');
insert into items(name,qty,price) values(' Chambray shirts',2,'60.00');
insert into items(name,qty,price) values('shortleeve black shirt',5,'35.00');

select concat (items.itemID, orders.orderID) from 
items, orders;
select * from items;

use custdb;
show tables;

describe orders;
select * from customers;
insert into orders(orderID,customerID,order_date,order_total) values(2,2000,'2020-01-10',1);
insert into orders(customerID,order_date,order_total) values(6,1001,'2020-01-13',2);
insert into orders(customerID,order_date,order_total) values(1002,'2020-01-01',3);
insert into orders(customerID,order_date,order_total) values(1234,'2020-01-16',4);
insert into orders(customerID,order_date,order_total) values(1111,'2020-01-25',2);
insert into orders(customerID,order_date,order_total) values(1000,'2020-01-08',1);
insert into orders(customerID,order_date,order_total) values(1805,'2020-01-05',5);

describe order_itemline;
insert into order_itemline(orderID,itemID,price) values(2,2000,20.99);
insert into order_itemline(orderID,itemID,price) values(1,1003,40.00);

select * from order_itemline;



select * from customers;




