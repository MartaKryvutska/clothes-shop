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


INSERT INTO customers (customer_id, customer_name, email)
VALUES
(1, 'John Smith', 'john.smith@example.com'),
(2, 'Jane Doe', 'jane.doe@example.com'),
(3, 'Bob Johnson', 'bob.johnson@example.com'),
(4, 'Alice Brown', 'alice.brown@example.com'),
(5, 'David Lee', 'david.lee@example.com'),
(6, ' Kaly Smith', 'kaly.smith@example.com'),
(7, ' Sonie Jok', 'sonie1234@example.com'),
(8, 'Max Oliv' , 'maxov456@example.com'),
(9, ' Marta Notva', 'marnot987@example.com'),
(10, 'Volodya Weter', 'weter1998@example.com');


INSERT INTO sales (transaction_id, date, customer_id, product_id, quantity, price)
VALUES
(1, '2022-03-01', 1, 1, 2, 20.00),
(2, '2022-03-01', 2, 3, 1, 80.00),
(3, '2022-03-02', 3, 2, 1, 50.00),
(4, '2022-03-03', 4, 1, 1, 20.00),
(5, '2022-03-03', 1, 4, 3, 5.00),
(6, '2022-03-04', 2, 1, 1, 20.00),
(7, '2022-03-05', 3, 5, 1, 70.00),
(8, '2022-03-05', 5, 1, 2, 20.00),
(9, '2022-03-06', 4, 2, 2, 50.00),
(10, '2022-03-07', 1, 3, 1, 80.00);





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




