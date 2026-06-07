-- Sales analysis
-- 1. Total Revenue
SELECT
    ROUND(SUM(oi.price), 2) AS total_revenue
FROM olist.orders o
JOIN olist.order_items oi ON o.order_id = oi.order_id;

-- 2. Yearly revenue trend
SELECT
    DATE_FORMAT(o.order_purchase_timestamp, '%Y') AS order_year,
    ROUND(SUM(oi.price), 2) AS yearly_revenue
FROM olist.orders o
JOIN olist.order_items oi ON o.order_id = oi.order_id
GROUP BY order_year
ORDER BY order_year ASC;

-- 3. Monthly revenue trend
SELECT
    DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS order_month,
    ROUND(SUM(oi.price), 2) AS monthly_revenue
FROM olist.orders o
JOIN olist.order_items oi ON o.order_id = oi.order_id
GROUP BY order_month
ORDER BY order_month ASC;

-- 4. Average Order Value
SELECT
    ROUND(SUM(oi.price), 2) AS total_revenue,
    COUNT(DISTINCT o.order_id) AS order_number,
    ROUND(SUM(oi.price), 2) / COUNT(DISTINCT o.order_id) AS Average_order_value
FROM olist.orders o
JOIN olist.order_items oi ON o.order_id = oi.order_id;



