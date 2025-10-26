CREATE TABLE EMPLOYEE3 (
	EMPLOYEE_ID INT PRIMARY KEY,
	FIRST_NAME VARCHAR(20) NOT NULL,
	LAST_NAME VARCHAR(20) NOT NULL,
	DEPARTMENT VARCHAR(50),
	SALARY NUMERIC(10, 2),
	JOINING_DATE DATE,
	AGE INT
);

SELECT
	*
FROM
	EMPLOYEE3;

SELECT
	first_name,
	salary,
	(salary * 12) as AnualSalary,
	(salary + salary * 0.10) AS NEW_SALARY,
	(salary + salary * 0.10, salary * 12) As  New_Anual_Salary
FROM
	employee3;