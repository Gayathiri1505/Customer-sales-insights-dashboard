CREATE DATABASE CUSTOMER_PROJECT;
USE CUSTOMER_PROJECT;

SHOW TABLES;

DESC cleaned_customer_data;

SELECT * FROM cleaned_customer_data LIMIT 10;

SELECT `Item Purchased`, `Purchase Amount (USD)`, `Review Rating`
FROM cleaned_customer_data
WHERE Category='CLOTHING' LIMIT 5;

SELECT COUNT(*) AS Total_Orders
FROM cleaned_customer_data;

SELECT SUM(`Purchase Amount (USD)`) AS Total_Revenue
FROM cleaned_customer_data;

SELECT AVG(Age) AS Average_Customer_Age
FROM cleaned_customer_data;

SELECT Season, SUM(`Purchase Amount (USD)`) AS Revenue
FROM cleaned_customer_data
GROUP BY Season
ORDER BY Revenue DESC;

SELECT Color, COUNT(*) AS Items_Sold
FROM cleaned_customer_data
WHERE Season = 'Winter'
GROUP BY Color
ORDER BY Items_Sold DESC;

SELECT Location, AVG(`Review Rating`) AS Avg_Rating
FROM cleaned_customer_data
GROUP BY Location
HAVING AVG(`Review Rating`) > 3;

SELECT `Promo Code Used`, 
COUNT(*) AS Total_Customers
FROM cleaned_customer_data
GROUP BY `Promo Code Used`;

SELECT Location, AVG(`Purchase Amount (USD)`) AS Avg_Spend
FROM cleaned_customer_data
GROUP BY Location
HAVING Avg_Spend > 60;


