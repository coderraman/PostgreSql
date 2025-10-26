CREATE TABLE users (
    ID SERIAL PRIMARY KEY,
    NAME VARCHAR(50) NOT NULL,
    EMAIL VARCHAR(50) UNIQUE,
    AGE INTEGER CHECK (AGE > 18),
    ADDMISSION_DATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM users ORDER BY ID;

INSERT INTO users(NAME, EMAIL, AGE)
VALUES('RAM JI', 'ramji234@gmail.com', 22),
('LAXMAN JI', 'laxmanji34@gmail.com', 19),
('SITA JI', 'sita67@gmail.com', 20);

UPDATE users 
SET AGE = 23
WHERE NAME = 'RAM JI';

UPDATE users 
SET NAME = 'HANUMAN JI'
WHERE AGE = 19;

UPDATE users 
SET NAME = 'HANUMAN JI', AGE = 25
WHERE NAME = 'RAM JI';

DELETE FROM users
WHERE AGE = 19;


-- TO Rename Column Name
ALTER TABLE users
RENAME COLUMN name TO full_Name;

-- TO Change DATA TYPE
ALTER TABLE users
ALTER COLUMN age TYPE SMALLINT;

-- Add Constaint
ALTER TABLE users
ALTER COLUMN full_name SET NOT NULL;

-- Check Constraint age 
	ALTER TABLE users
    ADD CONSTRAINT age_check CHECK (age >= 18);


SELECT * FROM users ORDER BY ID;
