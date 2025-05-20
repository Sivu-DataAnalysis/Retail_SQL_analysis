CREATE DATABASE Retail_products;
SELECT * FROM retail;

ALTER TABLE retail 
RENAME COLUMN GEO TO Location;

ALTER TABLE retail 
DROP COLUMN UOM ;

SELECT COUNT(DISTINCT location) FROM retail ORDER BY `Year`;

SELECT `Product Category`,ROUND(SUM(`VALUE`), 2) AS Total_profit FROM retail GROUP BY `Product Category`;

SELECT `Product Category`,`Month`,ROUND(SUM(`VALUE`), 2) AS Profit 
FROM retail 
GROUP BY `Product Category`,`Month` 
HAVING `Month` = 'April';

SELECT `Product Category`,`Month`,ROUND(SUM(`VALUE`), 2) AS Profit 
FROM retail 
GROUP BY `Product Category`,`Month` 
HAVING `Product Category` = 'Vegetables';

SELECT `Month`,ROUND(SUM(`VALUE`), 2) AS Monthly_Sales FROM retail GROUP BY `Month` ORDER BY Monthly_Sales DESC;

SELECT `Product Category`,ROUND(AVG(`Value after tax`), 2) AS Avg_Value_After_Tax 
FROM retail 
GROUP BY `Product Category`
ORDER BY Avg_Value_After_Tax DESC;

SELECT `YEAR`,ROUND(SUM(`VALUE`), 2) AS Yearly_Profit FROM retail
GROUP BY `YEAR`;

SELECT `Month`,`Product Category` FROM retail WHERE `VALUE`>= 20;

SELECT `Month`,MIN(`VALUE`) AS Minimum,MAX(`VALUE`) AS Maximum FROM retail GROUP BY `Month`;

SELECT `Value after tax`,
CASE 
	WHEN `Value after tax` <=10 THEN 'EXTREMELY LOW'
	WHEN `Value after tax` >10 THEN 'VERY LOW'
    WHEN `Value after tax` >=25 THEN 'HIGH VALUE'
    WHEN `Value after tax` >=40 THEN 'VERY HIGH VALUE'
ELSE 'EXTREMELY HIGH'
END AS `LEVEL OF VALUE`
FROM retail; 



  