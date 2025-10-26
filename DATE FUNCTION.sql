    SELECT * FROM products;

-- NOW () Function
SELECT NOW() AS CURRENT_Date_Time;

-- -- CURRENT DATE() Function
-- Note it use without parenthises
SELECT CURRENT_DATE AS Date;

-- For Knowing Days Differents from a column data
SELECT date_added, CURRENT_DATE, (CURRENT_DATE - date_added) AS Days_Different
FROM products;


-- Extract : Extract the year, month and day from a column
SELECT name, date_added,
EXTRACT(YEAR FROM date_added) AS SEPRATE_DATE,
EXTRACT(MONTH FROM date_added) AS SEPRATE_MONTH,
EXTRACT(DAY FROM date_added) AS SEPRATE_DAY
FROM products;

-- AGE() -- Calculate the time 	difference between (date column) date and today's date
SELECT * FROM products;

--"TO_CHAR()"-- Format Dates as String like in custom format (DD-MM-YY)
SELECT date_added,
TO_CHAR(date_added,'DD-MM-YYYY') AS Custom_date
FROM products;

-- Date part() -- 	Extract a day from a week or any specific part
SELECT name, date_added,
DATE_PART('dow', date_added) AS Specific_day
FROM products;
-- Month
SELECT NAME, date_added,
DATE_PART('month', date_added) AS Specific_day_of_month
FROM products;

-- Year
SELECT name, date_added, 
DATE_PART('year', date_added) AS Specific_year
FROM products;

-- DATE TRUNK() - Truncate the added date to start of a month
SELECT name, date_added,
DATE_TRUNC('month', date_added) AS First_day_month
-- DATE_PART('isodow', date_added) AS First_day
FROM products;


-- INTERVAL  - Add and Substract the Date
SELECT date_added,
date_added + INTERVAL '5 days' AS Day_Added,
date_added - INTERVAL '1 month' AS Substract_month
FROM products;

-- CURRENT_TIME - Show only Time
-- Note : In this we dont use ()
SELECT CURRENT_TIME AS Curr_time;

-- TO_DATE -- Convert String in Format of Date
SELECT TO_DATE('25-06-2025', 'DD-MM-YY') AS Date;

SELECT * FROM products;



 