-- creating the new database as churn_db in mysql database
CREATE DATABASE churn_db; 
-- view data 
SELECT * FROM customers LIMIT 5;
-- total number of customers in dataset
SELECT COUNT(*) FROM customers;
-- mean percentage of the churn 
SELECT ROUND(AVG(Churn)*100, 2) AS churn_rate_percent FROM customers;
-- churn rate comparison against contract 
SELECT Contract, COUNT(*) AS total_customers, ROUND(AVG(Churn)*100, 2) AS churn_rate
FROM customers
GROUP BY Contract
ORDER BY churn_rate DESC;
-- churn rate as per tenurure group 
SELECT TenureGroup, COUNT(*) AS customers,ROUND(AVG(Churn)*100, 2) AS churn_rate FROM customers
GROUP BY TenureGroup
ORDER BY churn_rate DESC;
-- churn rate as per the high charrges(yes or no)
SELECT HighCharges,COUNT(*) AS customers,ROUND(AVG(Churn)*100, 2) AS churn_rate FROM customers
GROUP BY HighCharges;


