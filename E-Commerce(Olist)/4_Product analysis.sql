-- Product analysis
-- 1. Top 10 product category by orders
SELECT
    p.product_category_name AS product_category_name,
    pc.product_category_name_english AS product_category_name_English,
    COUNT(oi.product_id) AS product_orders
FROM olist.order_items oi
JOIN olist.products p
    ON oi.product_id = p.product_id
JOIN olist.product_category pc
    ON p.product_category_name = pc.product_category_name
GROUP BY p.product_category_name, pc.product_category_name_english
ORDER BY product_orders DESC
LIMIT 10;

-- 2. Top 10 product category by revenue
SELECT
    pc.product_category_name_english AS category_name_EN,
    COUNT(oi.product_id) AS product_orders,
    ROUND(SUM(oi.price),2) AS total_sales_revenue
FROM olist.order_items oi
JOIN olist.products p
    ON oi.product_id = p.product_id
JOIN olist.product_category pc
    ON p.product_category_name = pc.product_category_name
GROUP BY pc.product_category_name_english
ORDER BY total_sales_revenue DESC
LIMIT 10;



