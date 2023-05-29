INSERT INTO products (product_id, product_name, product_type, price, quantity)
VALUES
(1, 'T-Shirt', 'Clothing', 20.00, 50),
(2, 'Jeans', 'Clothing', 50.00, 30),
(3, 'Sneakers', 'Footwear', 80.00, 20),
(4, 'Socks', 'Accessories', 5.00, 100),
(5, 'Dress', 'Clothing', 70.00, 15),
(6, 'Skirts', 'Clothing' ,6000,6),
(7, 'Jacket' ,' Clothing' , 9076,5),
(8, 'Flip-Flops' , 'Footwear',4000, 4),
(9, 'Hat' , 'Accessories' , 500, 1),
(10, ' Sweatpants', 'Clothing', 5677, 8); 


INSERT INTO customers (customer_id, customer_name, email,age )
VALUES
(1, 'John Smith', 'john.smith@example.com','34'),
(2, 'Jane Doe', 'jane.doe@example.com','43'),
(3, 'Bob Johnson', 'bob.johnson@example.com','18'),
(4, 'Alice Brown', 'alice.brown@example.com','24'),
(5, 'David Lee', 'david.lee@example.com','14'),
(6, ' Kaly Smith', 'kaly.smith@example.com','36'),
(7, ' Sonie Jok', 'sonie1234@example.com','14'),
(8, 'Max Oliv' , 'maxov456@example.com','20'),
(9, ' Marta Notva', 'marnot987@example.com','48'),
(10, 'Volodya Weter', 'weter1998@example.com','51');


INSERT INTO sales (transaction_id, date, customer_id, product_id, quantity, price,zamovlenia_id)
VALUES
(1, '2022-03-01', 1, 1, 2, 20.00,'1'),
(2, '2022-03-01', 2, 3, 1, 80.00,'6'),
(3, '2022-03-02', 3, 2, 1, 50.00,'7'),
(4, '2022-03-03', 4, 1, 1, 20.00,'2'),
(5, '2022-03-03', 1, 4, 3, 5.00,'4'),
(6, '2022-03-04', 2, 1, 1, 20.00,'3'),
(7, '2022-03-05', 3, 5, 1, 70.00,'5'),
(8, '2022-03-05', 5, 1, 2, 20.00,'9'),
(9, '2022-03-06', 4, 2, 2, 50.00,'8'),
(10, '2022-03-07', 1, 3, 1, 80.00,'10');





INSERT INTO SKLAD ( product_id  ,quanity) VALUES
(1, 50),
(2,  30),
(3, 20),
(4, 100),
(5,  15),
(6 ,6),
(7, 5),
(8, 4),
(9, 1),
(10, 8);


 INSERT INTO employee (id, Firstname, Lastname, Position) VALUES
('5', 'Sasha', 'Vovk', ' Marketer'),
('8', 'Sophi', 'Kryt', 'HR '),
('11', 'Marta', 'Kryv', ' Manager');





INSERT INTO  zamovlenia ( zamovlenia_id, Customer_id, DATA_DELIVERY, Zamovlenia, PAYMENT_METHOD,employee_id ) VALUES
('1', '6', '2022-03-06', '2022-07-23', 'Cash','5'),
('2', '2', '2022-01-01', '2023-02-07', 'Card','8'),
('3', '3', '2022-06-03', '2023-04-24', 'Card','11'),
('4', '1', '2023-05-21', '2022-01-10', 'Card','8'),
('5', '2', '2023-04-03', '2022-06-02', 'Cash','5'),
('6', '3', '2023-03-02', '2022-09-14', 'Cash','11'),
('7', '4', '2022-08-05', '2023-05-26', 'Cash','5'),
('8', '5', '2023-04-05', '2023-07-28', 'Card','8'),
('9', '1', '2022-03-16', '2023-05-10', 'Cash','11'),
('10', '10', '2022-02-07', '2023-01-19', 'Cash','5');







