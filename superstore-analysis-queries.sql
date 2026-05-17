-- Superstore Sales Analytics SQL Queries

-- Total Sales and Profit
SELECT
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore;

-- Sales by Region
SELECT
    Region,
    ROUND(SUM(Sales), 2) AS total_sales
FROM superstore
GROUP BY Region
ORDER BY total_sales DESC;

-- Profit by Region
SELECT
    Region,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore
GROUP BY Region
ORDER BY total_profit DESC;

-- Sales by Category
SELECT
    Category,
    ROUND(SUM(Sales), 2) AS total_sales
FROM superstore
GROUP BY Category
ORDER BY total_sales DESC;

-- Profit by Category
SELECT
    Category,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore
GROUP BY Category
ORDER BY total_profit DESC;

-- Top 10 Products by Sales
SELECT
    Product_Name,
    ROUND(SUM(Sales), 2) AS total_sales
FROM superstore
GROUP BY Product_Name
ORDER BY total_sales DESC
LIMIT 10;
