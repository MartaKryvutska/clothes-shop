
SELECT customers.customer_name,zamovlenia.zamovlenia, Sum(sales.quantity*products.price) AS ZamovleniaSum
FROM (customers INNER JOIN zamovlenia ON customers.customer_id = zamovlenia.customer_id) INNER JOIN (products INNER JOIN sales ON products.product_id = sales.product_id) ON zamovlenia.zamovlenia_id = sales.zamovlenia_id
GROUP BY customers.customer_name, zamovlenia.zamovlenia
HAVING ((Month(zamovlenia.zamovlenia)=Month(curdate()))) AND Year(zamovlenia.zamovlenia)=Year(curdate());