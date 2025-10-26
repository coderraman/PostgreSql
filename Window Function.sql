SELECT * FROM products;

-- assign a unique row_number() to each products within the same category
SELECT name, price, category,
ROW_NUMBER() OVER(PARTITION BY category ORDER BY price) AS Row_Num
FROM products;

-- assign a unique Rank() number to each products within the same category - Note: it doesn't work in same value condition into data
SELECT name, price, category,
RANK() OVER(PARTITION BY category ORDER BY price) AS RANK_Num
FROM products;

-- assign a unique DENSE_Rank() number to each products within the same category - Note: it does work in same value condition into data
SELECT name, price, category,
DENSE_RANK() OVER(PARTITION BY category ORDER BY price) AS DENSE_RANK_NUM
FROM products;

-- Running Total : This will work accordingly partition of category
SELECT name,  category, price,
SUM(price) OVER(PARTITION BY category ORDER BY price) AS DENSE_RANK_NUM
FROM products;


-- Running Total 
SELECT name,  category, price,
SUM(price) OVER(ORDER BY price) AS Running_Total
FROM products;

-- Running Total OF Price Average 
SELECT name,  category, price,
AVG(price) OVER(ORDER BY price) AS Running_Total
FROM products;




