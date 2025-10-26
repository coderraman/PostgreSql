-- Drop the old table
DROP TABLE IF EXISTS USERS;

-- Now create the corrected version
CREATE TABLE IF NOT EXISTS USERS (
	USER_ID INT PRIMARY KEY,
	NAME VARCHAR(50),
	EMAIL_ID VARCHAR(50) UNIQUE NOT NULL,
	AGE INT CHECK (AGE > 18),
	REG_DATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert valid data
INSERT INTO
	USERS (USER_ID, NAME, EMAIL_ID, AGE)
VALUES
	(1, 'Raman', 'ramanpal23@gmail.com', 24);

INSERT INTO
	USERS (USER_ID, NAME, EMAIL_ID, AGE)
VALUES
	(2, 'Joy', 'joy23@gmail.com', 20);

INSERT INTO
	USERS (USER_ID, NAME, EMAIL_ID, AGE)
VALUES
	(3, 'Jey', 'jey23@gmail.com', 20);

-- Retrieve the data
SELECT
	USER_ID
FROM
	USERS;

UPDATE USERS
SET
	AGE = 25
WHERE
	NAME = 'Raman';

UPDATE USERS
SET
	AGE = 27,
	NAME = 'Sql_King'
WHERE
	AGE >= 20;

UPDATE USERS
SET
	AGE = AGE + 1
WHERE
	EMAIL_ID LIKE '%gmail.com';

SELECT
	USER_ID
FROM
	USERS;

SELECT
	*
FROM
	USERS
ORDER BY
	USER_ID
	
DELETE FROM USERS
WHERE
	USER_ID = 5;

	-- TO Rename the column name 
	ALTER TABLE users
	RENAME name to User_name;

	-- To change the INT to Small INT
	ALTER TABLE users
	ALTER COLUMN age TYPE SMALLINT;

	
SELECT * FROM USERS ORDER BY USER_ID

--SET CONSTRAINT NOT NULL VALUE IN COLUMN
ALTER TABLE users
ALTER COLUMN email_id SET NOT NULL;

ALTER TABLE users
DROP CONSTRAINT age;

ALTER TABLE users
ADD CONSTRAINT age CHECK(age>=18);

ALTER TABLE users 
RENAME TO Customers;
SELECT * FROM Customers ORDER BY USER_ID


CREATE TABLE Emp(
employee_id	VARCHAR(20),
first_name	VARCHAR(20),
last_name	VARCHAR(20),
department	VARCHAR(20),
salary	NUMERIC (10,2),
joining_date DATE,
age INT
);

SELECT * FROM Emp;

COPY 
Emp(employee_id, first_name, last_name, department, salary, joining_date, age)
FROM '‪‪C:\Users\Raman\Desktop\csv\employee_data.csv'
DELIMITER','
CSV HEADER;

