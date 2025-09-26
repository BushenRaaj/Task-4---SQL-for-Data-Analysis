create database ecom;
show databases;
use ecom;
SHOW TABLES;

-- [ SELECT, WHERE, ORDER BY, GROUP BY ]

SELECT * 
FROM customers
WHERE region = 'North';

-- Orders sorted by highest total amount

SELECT order_id, customer_id, total_amount
FROM orders
WHERE status = 'Completed'
ORDER BY total_amount DESC;

-- Total sales by region

SELECT c.region, SUM(o.total_amount) AS total_sales
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.region
ORDER BY total_sales DESC;

-- [ JOINS (INNER, LEFT, RIGHT) ]

-- INNER JOIN: show orders with customer names

SELECT o.order_id, c.name AS customer_name, o.total_amount
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id;

-- LEFT JOIN: list all customers and their orders (even if no order placed)

SELECT c.name, o.order_id, o.total_amount
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

-- RIGHT JOIN: all orders and customer info (if any missing, still show order)

SELECT c.name, o.order_id, o.total_amount
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;

-- [ Subqueries ]

-- Customers who spent above average

SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(total_amount) > (
    SELECT AVG(total_amount)
    FROM orders
);

-- Products more expensive than average price

SELECT product_id, name, price
FROM products
WHERE price > (SELECT AVG(price) FROM products);

-- [ Aggregate Functions (SUM, AVG, COUNT, MAX, MIN) ]

-- Total revenue

SELECT SUM(total_amount) AS total_revenue
FROM orders;

-- Average revenue per user (ARPU)

SELECT SUM(total_amount) / COUNT(DISTINCT customer_id) AS avg_revenue_per_user
FROM orders;

-- Order counts by status

SELECT status, COUNT(*) AS order_count
FROM orders
GROUP BY status;

-- Most expensive product

SELECT name, price
FROM products
WHERE price = (SELECT MAX(price) FROM products);

-- [ Views for Analysis ]

-- Create a view: customer total spending

CREATE OR REPLACE VIEW customer_sales AS
SELECT c.customer_id, c.name, SUM(o.total_amount) AS total_sales
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;

-- Use the view
SELECT * FROM customer_sales ORDER BY total_sales DESC LIMIT 5;

-- [ Optimization with Indexes ]

-- Index on customer_id in orders (for faster joins)
CREATE INDEX idx_orders_customer ON orders(customer_id);

-- Check query plan (to verify optimization)
EXPLAIN SELECT customer_id, SUM(total_amount) 
FROM orders 
GROUP BY customer_id;

