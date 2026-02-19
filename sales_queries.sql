-- Total Sales
SELECT SUM(sales) FROM sales;

-- Top 5 States
SELECT state, SUM(sales)
FROM sales
GROUP BY state
ORDER BY SUM(sales) DESC
LIMIT 5;
