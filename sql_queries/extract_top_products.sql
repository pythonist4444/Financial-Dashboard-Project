-- Query 3: Top Products by Sales
SELECT
	Product_Name,
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Quantity) AS Total_Quantity
FROM superstore
GROUP BY Product_Name, Category
ORDER BY Total_Sales DESC
LIMIT 10;