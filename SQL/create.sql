CREATE DATABASE store;
USE store;
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    product_type VARCHAR(50),
    price DECIMAL(8,2),
    quantity INT
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(50),
    age INT
);

CREATE TABLE sales (
    transaction_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    date_time transaction datatype,
    quantity INT,
    zamovlenia_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE Zamovlenia ( zamovlenia_id int primary key,
Customer_id int,
DATA_DELIVERY DATEtime,
Zamovlenia  DATE,
PAYMENT_METHOD CHAR(15)
employee_id int ;


CREATE TABLE SKLAD (
 product_id int ,
quanity int
);


Create employee (employee_id int primary key,
Firstname varchar(30),
Lastname varchar(30),
Position varchar (10));




alter table Zamovlenia
add foreign key (customer_id) references customers(customer_id);
alter table Zamovlenia add foreign key (employee_id) references employee(id);

alter table Sklad
add foreign key (product_id) references products(product_id);


alter table Zamovlenia
add foreign key (customer_id) references customers(customer_id);

alter table sales
add foreign key (product_id) references products(product_id);


alter table sales
add foreign key (zamovlenia_id) references zamovlenia(zamovlenia_id);




