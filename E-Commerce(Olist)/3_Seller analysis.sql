-- Seller analysis
-- 1. Total 10 sellers
SELECT
s.seller_id,
COUNT(DISTINCT oi.order_id) AS total_orders,
ROUND(SUM(oi.price),2) AS total_sales_revenue,
ROUND(SUM(oi.price),2) / COUNT(DISTINCT oi.order_id) AS Average_revenue_per_order
FROM olist.sellers s
JOIN olist.order_items oi ON s.seller_id = oi.seller_id
GROUP BY s.seller_id
ORDER BY total_sales_revenue DESC
LIMIT 10;

-- 2. Seller location
SELECT
seller_state,
seller_city,
COUNT(DISTINCT seller_id) AS total_seller_numbers
FROM olist.sellers
GROUP BY seller_state, seller_city
ORDER BY total_seller_numbers DESC
LIMIT 10;



