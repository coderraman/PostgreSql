SELECT * FROM products;

-- Uppercase 
SELECT UPPER(name) AS Capitap_name
FROM products;

-- Lowercase 
SELECT LOWER (category) AS Lower_Case
FROM products;

-- Concat hyphan as we want join our text
SELECT CONCAT (name,'-', category) AS Products_and_Category
FROM products;


 SELECT CONCAT (name,'___', quantity, '--Of Price', (price)) AS Products_and_Category
FROM products;	

-- Extract the first five characters, it Cunts from one
SELECT SUBSTRING (category, 1,4) 
FROM products;

SELECT * FROM products;

-- Count Lenght, It counts space also
SELECT name, LENGTH(name) AS Char_len
FROM products;

-- Remove Leading and Trailing Spaces from string
SELECT TRIM(    'Raman ') as Trim_Text;

-- Replace the word
SELECT REPLACE(name, 'iPhone 14', 'iPhone 15') AS Updated_name
FROM products;

-- Left and Right
SELECT RIGHT(name,6) AS right_Char
FROM products;


SELECT LEFT(name,5) AS Left_Char
FROM products;








