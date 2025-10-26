select *
from employee3;
select first_name,
	last_name,
	salary,
	(salary * 0.10) as bonus
from employee3;
-- Double Bonus
select first_name,
	last_name,
	salary,
	(salary * 0.20) as double_bonus
from employee3;
select first_name,
	last_name,
	salary,
	(salary + 2000) as bonus
from employee3;
-- calculate new salary
select first_name,
	last_name,
	salary,
	(salary * 12),
	(salary * 0.05),
	(salary + salary * 0.05)
from employee3;
-- comparision operator
select *
from employee3
where age > 19;
select age < 28
from employee3;
select *
from employee3
where age != 40;

-- condition/logical operator
select *
from employee3
where age > 20
	and salary > 50000;

SELECT *
from employee3
WHERE age > 30
	AND salary > 30000;
____________________ or___
select *
from employee3
where age > 20
	OR salary > 50000;

	-- ADD EMAIL INTO TABLE
ALTER TABLE employee3;
ADD COLUMN email VARCHAR(50);
UPDATE employee3
SET email = LOWER(first_name || '.' || last_name || '@company.com');
UPDATE employee3
SET email = 'ramos123@gmail.com'
WHERE employee_id = 1;
SELECT *
FROM employee3;
____________________ NoT___
select *
from employee3
where NOT (department = 'Operator');

-- Retrive empolyees whose salary between 40,000 and 60,000 - Use Between
SELECT first_name,
	salary
FROM employee3
WHERE salary BETWEEN 40000 AND 60000;


-- Retrive empoyees whose email start with @gmail.com - Use LIKE 
SELECT first_name,
	last_name,
	salary
FROM employee3
WHERE email LIKE '%@gmail.com'
;

SELECT first_name, last_name FROM employee3
WHERE email LIKE '%@gmail.com';

-- Find name with SPecific Alpha word, like this (End of the word)
SELECT first_name, last_name FROM employee3
WHERE first_name LIKE '%a';

-- Find name with SPecific Alpha word, like this (Start of word)
SELECT first_name, last_name FROM employee3
WHERE first_name LIKE 'A%';


-- Retrive empoyees whose department either "Finance" or "IT" - Use IN Operator
SELECT first_name,
	last_name,
	department
FROM employee3
WHERE department IN ('IT', 'Finance');

