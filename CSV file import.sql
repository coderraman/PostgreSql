CREATE TABLE employee4(
employee_id INT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
department VARCHAR(50) NOT NULL,
salary NUMERIC(10,1),
joining_date DATE,
age INT
);
SELECT * FROM employee4;


-- For Importing any csv file into sql 
COPY 
 employee4 (employee_id, first_name, last_name, dep_art, salary, joining_date, age)
 FROM 'C:\Program Files\PostgresSQL\17\data\CSV Sheet.csv'
 DELIMITER','
 CSV HEADER;


