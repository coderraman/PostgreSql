SELECT * FROM employee3;

-- Select employee where the email IS NULL--
SELECT first_name, last_name, email FROM employee3
WHERE email IS NULL;

-- Shorting in Desending order 
-- BY DEFAULT IT RETURNS ASC 
SELECT first_name, last_name, salary FROM employee3
ORDER BY salary ASC;

-- Top 5 High Pay Employees
SELECT first_name, last_name, salary FROM employee3
ORDER BY salary DESC LIMIT 5;

-- How to  find unique values from column
-- This will give unique values will not count duplicate value
SELECT DISTINCT departmenT
FROM employee3;

-- Count Department
SELECT COUNT (DISTINCT department)
FROM employee3;