-- 1. Show each order with customer details
SELECT
    o.order_id,
    o.order_date,
    o.status,
    c.customer_id,
    c.first_name,
    c.last_name,
    c.city,
    c.state
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
ORDER BY o.order_date;


-- 2. Show order items with product details
SELECT
    oi.order_item_id,
    oi.order_id,
    p.product_name,
    p.category,
    oi.quantity,
    oi.unit_price,
    oi.quantity * oi.unit_price AS line_total
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
ORDER BY oi.order_id;


-- 3. Calculate total value of each order
SELECT
    o.order_id,
    o.order_date,
    o.status,
    ROUND(SUM(oi.quantity * oi.unit_price), 2) AS order_total
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY
    o.order_id,
    o.order_date,
    o.status
ORDER BY order_total DESC;


-- 4. Calculate revenue from completed orders
SELECT
    ROUND(SUM(oi.quantity * oi.unit_price), 2) AS completed_order_revenue
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.status = 'Completed';


-- 5. Calculate revenue by product category
SELECT
    p.category,
    ROUND(SUM(oi.quantity * oi.unit_price), 2) AS category_revenue
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
JOIN orders o
    ON oi.order_id = o.order_id
WHERE o.status = 'Completed'
GROUP BY p.category
ORDER BY category_revenue DESC;


-- 6. Calculate total spending by customer
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    ROUND(SUM(oi.quantity * oi.unit_price), 2) AS total_spent
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.status = 'Completed'
GROUP BY
    c.customer_id,
    c.first_name,
    c.last_name
ORDER BY total_spent DESC;


-- 7. Find customers who have not placed any orders
SELECT
    c.customer_id,
    c.first_name,
    c.last_name
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;


-- 8. Find products that have never been ordered
SELECT
    p.product_id,
    p.product_name,
    p.category
FROM products p
LEFT JOIN order_items oi
    ON p.product_id = oi.product_id
WHERE oi.order_item_id IS NULL;
