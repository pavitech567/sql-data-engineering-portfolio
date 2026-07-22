-- 1. View all customers
SELECT *
FROM customers;

-- 2. View all products ordered by price
SELECT
    product_id,
    product_name,
    category,
    price
FROM products
ORDER BY price DESC;

-- 3. Find customers located in Texas
SELECT
    customer_id,
    first_name,
    last_name,
    city,
    state
FROM customers
WHERE state = 'TX';

-- 4. Find completed orders
SELECT
    order_id,
    customer_id,
    order_date,
    status
FROM orders
WHERE status = 'Completed'
ORDER BY order_date;

-- 5. Count customers by state
SELECT
    state,
    COUNT(*) AS customer_count
FROM customers
GROUP BY state
ORDER BY customer_count DESC, state;

-- 6. Find the average product price
SELECT
    ROUND(AVG(price), 2) AS average_product_price
FROM products;

-- 7. Find the most expensive product
SELECT
    product_id,
    product_name,
    category,
    price
FROM products
ORDER BY price DESC
LIMIT 1;

-- 8. Count orders by status
SELECT
    status,
    COUNT(*) AS order_count
FROM orders
GROUP BY status
ORDER BY order_count DESC;
