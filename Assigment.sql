SELECT * FROM  employee4;

-- Update the Salary 10% IT dep_art
UPDATE employee4
SET salary = salary + (salary*0.1)
WHERE dep_art = 'IT';

SELECT salary , dep_art
FROM employee4
WHERE dep_art = 'IT';
 
-- Delete Employee who older 30 years
DELETE FROM employee4
WHERE age>30;

-- Add a new column 'Email' into Table
ALTER Table employee4
ADD COLUMN IF NOT EXISTS Email VARCHAR(100) unique;

-- Rename the deapartment to dep_art
ALTER Table employee4
Rename  COLUMN dep_art TO dep_art;

-- Retrive First Name and dep_art 
-- SELECT first_name, dep_art from employee4;

-- Retrieve the name of employees who joined after 2021 januray
SELECT * FROM employee4 
WHERE joining_date > '01-01-2021'
ORDER BY joining_date;

-- Change the data type
ALTER Table employee4
ALTER COLUMN salary type INTEGER;

-- List all employee with age and salary in descending order
SELECT first_name, age, salary
FROM employee4 order BY salary DESC;

-- Insert a new employee with the following details 
-- "Raj, Singh,IT,40k,01-02-2022,30,abc@gmail.com" 
Insert into employee4 (employee_id, first_name, last_name, dep_art, salary, joining_date, age)
VALUES (01, 'Raj', 'Singh', 'IT', 40000, '01-02-2022', 32);

-- Update employee age + 1 in Every employee 
UPDATE employee4
SET age = (age + 1);