CREATE TABLE sales_by_region_cleaned AS
SELECT
	Region,
    Category,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(AVG(COALESCE(Discount, 0)), 2) AS Avg_Discount
FROM superstore
WHERE Sales IS NOT NULL AND Profit IS NOT NULL
GROUP BY Region, Category;