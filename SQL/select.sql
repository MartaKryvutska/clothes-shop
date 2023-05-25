
SELECT customers.customer_name,zamovlenia.zamovlenia, Sum(sales.quantity*products.price) AS ZamovleniaSum
FROM (customers INNER JOIN zamovlenia ON customers.customer_id = zamovlenia.customer_id) INNER JOIN (products INNER JOIN sales ON products.product_id = sales.product_id) ON zamovlenia.zamovlenia_id = sales.zamovlenia_id
GROUP BY customers.customer_name, zamovlenia.zamovlenia
HAVING ((Month(zamovlenia.zamovlenia)=Month(curdate()))) AND Year(zamovlenia.zamovlenia)=Year(curdate());





SELECT customers.customer_name AS customer_name, 
       (SELECT SUM(products.price * sales.quantity) FROM zamovlenia INNER JOIN sales on sales.zamovlenia_id=Zamovlenia.zamovlenia_id INNER JOIN products on sales.product_id=products.product_id WHERE zamovlenia.Customer_id = customers.customer_id) AS total_spent,
       (SELECT MAX(products.price*sales.quantity) FROM zamovlenia INNER JOIN sales on sales.zamovlenia_id=Zamovlenia.zamovlenia_id INNER JOIN products on sales.product_id=products.product_id WHERE zamovlenia.Customer_id = customers.customer_id) AS most_expensive_purchase
FROM customers;



SELECT customers.customer_name, customers.age , (SELECT AVG(expr1) as "Average price" FROM( SELECT SUM(products.price*sales.quantity) as expr1
FROM 
Zamovlenia INNER JOIN sales ON sales.zamovlenia_id=zamovlenia.zamovlenia_id INNER JOIN products ON sales.product_id=products.product_id
GROUP BY Zamovlenia.zamovlenia_id, Zamovlenia.Customer_id
HAVING Zamovlenia.Customer_id=customers.customer_id) as t ) as "Average price"
FROM customers
WHERE age>=18;


SELECT products.product_name, COUNT(sales.product_id) AS "Number of purchases" 
FROM products INNER JOIN sales on sales.product_id=products.product_id
GROUP BY products.product_name;


SELECT MAX(t) AS "The most expensive order" FROM( SELECT SUM(sales.quantity*products.price) AS t, Zamovlenia.zamovlenia_id
FROM Zamovlenia INNER JOIN sales ON sales.zamovlenia_id=Zamovlenia.zamovlenia_id INNER JOIN products ON products.product_id=sales.product_id
GROUP BY Zamovlenia.zamovlenia_id) as k;




SELECT employee.Firstname, employee.Lastname, COUNT(zamovlenia.zamovlenia_id) as "Number of processed orders"
FROM Zamovlenia INNER JOIN employee ON Zamovlenia.employee_id=employee.id
GROUP BY employee.Firstname,employee.Lastname;



SELECT CASE
  WHEN age<18 THEN 'Teenager'
  WHEN age>=18 and age<40 THEN 'Adult'
  WHEN age>=40 THEN 'Old'
END as Category, products.product_type,  COUNT(products.product_id) as "Count of product types"

FROM customers inner join Zamovlenia on Zamovlenia.Customer_id = customers.customer_id inner join sales on Zamovlenia.zamovlenia_id=sales.zamovlenia_id inner join products on products.product_id=sales.product_id
GROUP BY products.product_type, (CASE
  WHEN age<18 THEN 'Teenager'
  WHEN age>=18 and age<40 THEN 'Adult'
  WHEN age>=40 THEN 'Old'
END) ;



