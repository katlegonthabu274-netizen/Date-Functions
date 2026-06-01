-- Databricks notebook source
SELECT 'Csustomer ID',
        Date,
        YEAR(Date) AS trans_year,
        MONTH(Date) AS trans_month,
        DAY(Date) trans_day
FROM retail.sales.retail_sales_data
LIMIT 5;

SELECT COUNT(DISTINCT `Customer ID`) AS unique_customers,
    
            Date,

            YEAR(Date) AS trans_year, --Extracts year from date column

            MONTH(Date) AS trans_month, --Extracts month from date column
            MONTHNAME(Date) AS trans_month_name, --Extracts month name from date column

            DAY(Date) AS trans_day, --Extracts day from date column
            DAYNAME(Date) trans_day_name, --Extracts day name from date column

            SUM(`Total Amount`) AS revenue, --Calculates the total revenue

            `Product Category`

FROM `retail`.`sales`.`retail_sales_data`
GROUP BY ALL; --Grouping data based on all the columns that are not aggregated in my Select Statements
