-- Databricks notebook source
--CURRENT DATE
--This function gives us todays's date
SELECT current_date() As today_dt;

--This function gives me yesterday's date because I put a minus 1
SELECT current_date()-1

--CURRENT TIMESTAMP()
-- This function is used to get the current date and time
SELECT current_timestamp() AS datetime;

--TO_DATE(string, format)
--It converts a string(text/words) to a date
SELECT to_date('20260603', 'yyyyMMdd') AS dt;

SELECT to_date('03 June 2026', 'dd MMMM yyyy') AS dt;

--TO_CHAR(expr,fmt)/date_format():Convert a date into a string/text

SELECT current_date() AS today_dt,
       year(current_date()) as year,
       month(current_date()) AS month,
       monthname(current_date()) as month_name,
       date_format(current_date(), 'yyyyMM') AS month_id;

--CONVERTING to your TIME-ZONE
SELECT convert_timezone('UTC', 'GMT+2', current_timestamp()) AS datetime;

--DATEDIFF(end_date, start_date)
--We use this function to calculate the difference betyween two dates
SELECT datediff(current_date(), current_date()-3);

--Date_sub(date, number of days)
--Is subtracts the number of days from the date of column

SELECT date_sub(current_date(),2) AS trans_dt;

--Date add(date, number of days)
--It adds the number of days from the date of column
SELECT date_add(to_date('2026-01-01'),5) AS break_up_dt;
