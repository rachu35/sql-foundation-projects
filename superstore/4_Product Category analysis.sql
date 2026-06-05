-- Product Category analysis
-- 1.Sub-category
SELECT 
    Sub_Category,
    round(SUM(Sales),2) AS total_sales,
    round(SUM(Profit),2) AS total_profit,
    round(SUM(Quantity),2) AS total_quantity
FROM superstore.superstorefixed
GROUP BY Sub_Category
ORDER BY total_sales DESC;

-- 2.Best-selling products
SELECT 
    Product_Name,
    round(SUM(Sales),2) AS total_sales,
    round(SUM(Profit),2) AS total_profit,
    round(SUM(Quantity),2) AS total_quantity
FROM superstore.superstorefixed
GROUP BY Product_Name
ORDER BY total_sales DESC
LIMIT 10;