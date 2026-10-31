-- Task 22: SQL Filtering Practice (Northwind)

-- Q1. Products that cost more than 50
SELECT product_id, product_name, unit_price
FROM products
WHERE unit_price > 50;

-- Q2. Customers in Germany
SELECT customer_id, company_name, city, country
FROM customers
WHERE country = 'Germany';

-- Q3. Active products with low stock
SELECT product_id, product_name, units_in_stock
FROM products
WHERE discontinued = 0
  AND units_in_stock < 10;

-- Q4. Customers from France, Spain or Italy
SELECT customer_id, company_name, country
FROM customers
WHERE country IN ('France', 'Spain', 'Italy');

-- Q5. Products in categories 1, 2 or 3
SELECT product_id, product_name, category_id
FROM products
WHERE category_id IN (1, 2, 3);

-- Q6. Orders shipped to USA, Canada or Mexico
SELECT order_id, customer_id, ship_country
FROM orders
WHERE ship_country IN ('USA', 'Canada', 'Mexico');

-- Q7. Products priced between 20 and 40
SELECT product_id, product_name, unit_price
FROM products
WHERE unit_price BETWEEN 20 AND 40;

-- Q8. Orders placed in 1997
SELECT order_id, customer_id, order_date
FROM orders
WHERE order_date BETWEEN '1997-01-01' AND '1997-12-31';

-- Q9. Orders with freight between 50 and 100
SELECT order_id, freight
FROM orders
WHERE freight BETWEEN 50 AND 100;

-- Q10. Product names starting with 'C'
SELECT product_id, product_name
FROM products
WHERE product_name LIKE 'C%';

-- Q11. Company names containing 'Restaurant' or 'Market'
SELECT customer_id, company_name
FROM customers
WHERE company_name LIKE '%Restaurant%'
   OR company_name LIKE '%Market%';

-- Q12. Combined: IN + BETWEEN + LIKE
SELECT product_id, product_name, category_id, unit_price
FROM products
WHERE category_id IN (1, 2)
  AND unit_price BETWEEN 10 AND 30
  AND product_name LIKE '%a%';
