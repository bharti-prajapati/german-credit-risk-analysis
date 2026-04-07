
/* =====================================================
   CREDIT RISK DATA ANALYSIS USING SQL

   Project Name : Credit Risk Analysis
   Tool Used    : MySQL Workbench
   Author       : Bharti
   Description  : SQL analysis performed on German Credit
                  dataset to understand customer profile,
                  credit behavior and financial patterns.
===================================================== */



CREATE DATABASE credit_analysis;

USE credit_analysis;

SELECT * FROM german_credit_data LIMIT 10;

SHOW TABLES;

DESCRIBE german_credit_data;

-- Preview dataset
SELECT *
FROM german_credit_data
LIMIT 10;

-- Count total records
SELECT COUNT(*) AS Total_Customers
FROM german_credit_data;

-- Minimum, Maximum and Average Age
SELECT 
MIN(Age) AS Min_Age,
MAX(Age) AS Max_Age,
AVG(Age) AS Avg_Age
FROM german_credit_data;

-- Customers by gender
SELECT Sex,
COUNT(*) AS Total_Customers
FROM german_credit_data
GROUP BY Sex;

-- Customers per job category
SELECT Job,
COUNT(*) AS Total_Customers
FROM german_credit_data
GROUP BY Job;

-- Housing distribution
SELECT Housing,
COUNT(*) AS Customers
FROM german_credit_data
GROUP BY Housing;


-- Saving account distribution
SELECT `Saving accounts`,
COUNT(*) AS Customers
FROM german_credit_data
GROUP BY `Saving accounts`;

-- Checking account distribution
SELECT `Checking account`,
COUNT(*) AS Customers
FROM german_credit_data
GROUP BY `Checking account`;

-- Loan amount analysis
SELECT
MIN(`Credit amount`) AS Min_Credit,
MAX(`Credit amount`) AS Max_Credit,
AVG(`Credit amount`) AS Avg_Credit
FROM german_credit_data;

-- Loan amount by job category
SELECT Job,
AVG(`Credit amount`) AS Avg_Credit
FROM german_credit_data
GROUP BY Job;

-- Loan duration statistics
SELECT
MIN(Duration) AS Min_Duration,
MAX(Duration) AS Max_Duration,
AVG(Duration) AS Avg_Duration
FROM german_credit_data;


-- Loan purpose distribution
SELECT Purpose,
COUNT(*) AS Total_Customers
FROM german_credit_data
GROUP BY Purpose
ORDER BY Total_Customers DESC;



/* =====================================================
   KEY BUSINESS INSIGHTS
=====================================================

1. Majority customers belong to specific job categories.
2. Credit amount varies significantly across occupations.
3. Customers with higher savings accounts tend to take
   larger credit amounts.
4. Loan purposes like car and furniture dominate demand.
5. Average customer age indicates working-age borrowers.

===================================================== */