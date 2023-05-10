SELECT * FROM Customers;

SELECT email FROM Customers;

SELECT DISTINCT product_type FROM products;

SELECT * FROM sklad
WHERE quanity='50';


SELECT * FROM products
WHERE product_type='Clothing' AND price='50';

SELECT * FROM sklad
WHERE NOT quanity ='20';

SELECT * FROM Customers
ORDER BY email, Customer_Name;


SELECT Customer_Name,email
FROM Customers
WHERE email IS NOT NULL;


SELECT MAX(Price) AS LargestPrice
FROM Products;

SELECT min(Price) AS minestPrice
FROM Products;

SELECT AVG(Price)
FROM Products;

SELECT SUM(Quantity)
FROM sales;

SELECT * FROM Customers
WHERE Customer_Name LIKE 'a%';


SELECT * FROM Customers
WHERE Customer_Name LIKE 'a__%';


SELECT * FROM Customers
WHERE email LIKE  'a__%';

SELECT * FROM Customers
WHERE Customer_Name NOT LIKE 'a%';

SELECT * FROM Products
WHERE Price BETWEEN 1 AND 20;

SELECT * FROM Products
WHERE Price BETWEEN 1 AND 2000
AND product_ID NOT IN (1,2,3);

SELECT Customer_ID AS ID, Customer_Name AS Customer
FROM Customers;






