-- Sales Performance Analysis
-- 1. Total Sales
SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore.superstorefixed;

-- 2. Monthly sales trend
SELECT
    YEAR(STR_TO_DATE(Order_Date, '%m/%d/%y')) AS Order_Year,
    MONTH(STR_TO_DATE(Order_Date, '%m/%d/%y')) AS Order_Month,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore.superstorefixed
GROUP BY Order_Year, Order_Month
ORDER BY Order_Year, Order_Month;

-- 3. Top 10 customers
SELECT
    Customer_ID,
    Customer_Name,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore.superstorefixed
GROUP BY Customer_ID, Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- 4. Top 10 products
SELECT
    Product_ID, Category, Sub_Category, Product_Name,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore.superstorefixed
GROUP BY Product_ID, Category, Sub_Category, Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- 5. Average order value
SELECT
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Sales)/COUNT(DISTINCT Order_ID),2) AS Average_Order_Value
FROM superstore.superstorefixed;

-- Note: 
-- *STR_TO_DATE is used to convert the Order_Date from string format to date format for proper grouping by year and month.
-- *Distinct count of Order_ID, means total number of orders
-- *Limit 10 is used to get top 10 customers and products based on total sales.