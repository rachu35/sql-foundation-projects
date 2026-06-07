-- Customer analysis
-- 1. Total customers
SELECT
    COUNT(DISTINCT customer_id) AS total_customers
FROM olist.customers;


-- 2. Customer geographic distribution
SELECT
    customer_state,
    COUNT(DISTINCT customer_id) AS total_customers
FROM olist.customers
GROUP BY customer_state
ORDER BY total_customers DESC;


-- 3. Top 10 customer city
SELECT
    c.customer_state,
    c.customer_city,
    COUNT(DISTINCT c.customer_id) AS total_customers,
    ROUND(SUM(oi.price), 2) AS total_revenue
FROM olist.customers c
JOIN olist.orders o
    ON c.customer_id = o.customer_id
JOIN olist.order_items oi
    ON o.order_id = oi.order_id
GROUP BY c.customer_state, c.customer_city
ORDER BY total_revenue DESC
LIMIT 10;
