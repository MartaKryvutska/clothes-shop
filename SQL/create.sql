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
    agt INT
);

CREATE TABLE sales (
    transaction_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    zamovlenia_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE Zamovlenia ( zamovlenia_id int primary key,
Customer_id int,
DATA_DELIVERY DATEtime,
Zamovlenia  DATE,
PAYMENT_METHOD CHAR(15));


CREATE TABLE SKLAD (
 product_id int ,
quanity int
);


Create employee (id int primary key,
Firstname varchar(30),
Lastname varchar(30),
Position varchar (10));
