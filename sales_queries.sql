
Project : Sales Performance Analysis
Author  : Nagashree M
Tools   : SQL | Excel | Power BI

Business Questions Solved

1. What is the total sales?
2. What is the total profit?
3. Which region generates maximum sales?
4. Which category is most profitable?
5. Who are the top customers?
6. Which products generate losses?
7. Monthly sales trend
8. Monthly profit trend
9. Customer segmentation
10. Regional performance analysis

SELECT * FROM Superstore;

-- Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM Superstore;

-- Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM Superstore;

-- Total Orders
SELECT COUNT(Order_ID) AS Total_Orders
FROM Superstore;

-- Total Customers
SELECT COUNT(DISTINCT Customer_ID) AS Total_Customers
FROM Superstore;

-- Sales by Region
SELECT Region,
SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Profit by Region
SELECT Region,
SUM(Profit) AS Total_Profit
FROM Superstore
GROUP BY Region
ORDER BY Total_Profit DESC;

-- Sales by Category
SELECT Category,
SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Profit by Category
SELECT Category,
SUM(Profit) AS Total_Profit
FROM Superstore
GROUP BY Category
ORDER BY Total_Profit DESC;

-- Sales by Sub Category
SELECT Sub_Category,
SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Sub_Category
ORDER BY Total_Sales DESC;

-- Top 10 Customers by Sales
SELECT Customer_Name,
SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- Top 10 Products by Sales
SELECT Product_Name,
SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- Average Sales
SELECT ROUND(AVG(Sales),2) AS Average_Sales
FROM Superstore;

-- Average Profit
SELECT ROUND(AVG(Profit),2) AS Average_Profit
FROM Superstore;

-- Highest Sales Order
SELECT *
FROM Superstore
ORDER BY Sales DESC
LIMIT 1;

-- Highest Profit Order
SELECT *
FROM Superstore
ORDER BY Profit DESC
LIMIT 1;

-- Lowest Profit Order
SELECT *
FROM Superstore
ORDER BY Profit
LIMIT 1;

-- Monthly Sales Trend
SELECT
MONTH(Order_Date) AS Month,
SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY MONTH(Order_Date)
ORDER BY Month;

-- Monthly Profit Trend
SELECT
MONTH(Order_Date) AS Month,
SUM(Profit) AS Total_Profit
FROM Superstore
GROUP BY MONTH(Order_Date)
ORDER BY Month;

-- State Wise Sales
SELECT State,
SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY State
ORDER BY Total_Sales DESC;

-- Segment Wise Sales
SELECT Segment,
SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Segment
ORDER BY Total_Sales DESC;

-- Segment Wise Profit
SELECT Segment,
SUM(Profit) AS Total_Profit
FROM Superstore
GROUP BY Segment
ORDER BY Total_Profit DESC;

-- Category with Maximum Profit
SELECT Category,
SUM(Profit) AS Total_Profit
FROM Superstore
GROUP BY Category
ORDER BY Total_Profit DESC
LIMIT 1;

-- Products with Negative Profit
SELECT Product_Name,
SUM(Profit) AS Total_Profit
FROM Superstore
GROUP BY Product_Name
HAVING SUM(Profit) < 0
ORDER BY Total_Profit;

-- Customer Count by Region
SELECT Region,
COUNT(DISTINCT Customer_ID) AS Customer_Count
FROM Superstore
GROUP BY Region;
