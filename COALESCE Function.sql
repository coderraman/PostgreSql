-- COALESCE Function : To handl null Values

SELECT * FROM products;

ALTER TABLE products
ADD COLUMN Discount_Price NUMERIC(10,1);

-- Update with IN Operator
UPDATE products
SET discount_price = null
WHERE name IN ('iPhone 14', 'Nike Running Shoes');


-- Update with NOT IN Operator
UPDATE products
SET discount_price = price*0.9
WHERE name NOT IN ('iPhone 14', 'Nike Running Shoes');

SELECT name, price, discount_price
FROM products;

SELECT name,
COALESCE (discount_price, price) AS Final_price
FROM products;
