-- 1. Total spending by each customer using a CTE
WITH customer_spending AS (
    SELECT
        c.customer_id,
        CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
        SUM(oi.quantity * oi.unit_price) AS total_spent
    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    JOIN order_items oi
        ON o.order_id = oi.order_id
    WHERE o.status = 'Completed'
    GROUP BY
        c.customer_id,
        customer_name
)

SELECT *
FROM customer_spending
ORDER BY total_spent DESC;


-- 2. Customers spending more than $200
WITH customer_spending AS (
    SELECT
        c.customer_id,
        CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
        SUM(oi.quantity * oi.unit_price) AS total_spent
    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    JOIN order_items oi
        ON o.order_id = oi.order_id
    WHERE o.status = 'Completed'
    GROUP BY
        c.customer_id,
        customer_name
)

SELECT *
FROM customer_spending
WHERE total_spent > 200
ORDER BY total_spent DESC;


-- 3. Revenue by category using a CTE
WITH category_sales AS (
    SELECT
        p.category,
        SUM(oi.quantity * oi.unit_price) AS revenue
    FROM products p
    JOIN order_items oi
        ON p.product_id = oi.product_id
    JOIN orders o
        ON oi.order_id = o.order_id
    WHERE o.status = 'Completed'
    GROUP BY p.category
)

SELECT *
FROM category_sales
ORDER BY revenue DESC;
