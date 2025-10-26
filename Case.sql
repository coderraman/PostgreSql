SELECT category FROM products;

-- CASE Functin : Categorize based condition  -> Categorize products with price range
SELECT name, price,
CASE
WHEN price > 50000 THEN 'EXPENSIVE'
WHEN price >= 10000 AND price<=50000 THEN 'MODERATE'
ELSE 'AFFORDABLE'
END AS Price_Category
FROM products;

-- Assigmenet
SELECT * FROM products;
-- STOCK STATUS BY QUANTITY
SELECT name, quantity,
CASE
WHEN quantity = 20 THEN 'IN STOCK'
WHEN  quantity BETWEEN 30 AND 100 THEN 'LIMITED_STOCK'
ELSE 'OUT OF STOCK'
END AS Stock_status
FROM products;

-- Assigmenet -2
-- CATEGORY STATUS
SELECT name, category,
CASE
WHEN category LIKE 'Furniture%' THEN 'Furnitur Item'
WHEN category LIKE '%Electronics' THEN 'Electronics Item'
WHEN category LIKE '%Footwear' THEN 'Footwear Item'
ELSE 'Grocery Item'
END AS Category_Status
FROM products;



