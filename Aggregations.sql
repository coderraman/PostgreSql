
DROP TABLE IF EXISTS products
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,       -- Auto-incremented ID
    name VARCHAR(100) NOT NULL,
    quantity INT CHECK (quantity >= 0),
    category VARCHAR(50),
    price NUMERIC(10, 2) CHECK (price >= 0),
    date_added DATE DEFAULT CURRENT_DATE,
    discount_rate NUMERIC(5, 2) CHECK (discount_rate >= 0 AND discount_rate <= 100)
);

INSERT INTO products (name, quantity, category, price, discount_rate) VALUES
('iPhone 14', 50, 'Electronics', 79999.00, 10.00),
('Nike Running Shoes', 120, 'Footwear', 4999.50, 15.00),
('Organic Almonds - 1kg', 75, 'Grocery', 999.00, 5.00),
('Wooden Study Table', 20, 'Furniture', 8499.99, 12.50),
('Samsung 55" Smart TV', 30, 'Electronics', 55999.00, 8.00);

SELECT * FROM products

-- Total Quantity
SELECT SUM (quantity) FROM products;

-- Total Quantity of Category
SELECT SUM (quantity), name
FROM products
WHERE category = 'Electronics' AND price >= 50000;

-- Total Quantity by COUNT
SELECT COUNT (*) FROM products;

-- Count with condition
SELECT COUNT (*) AS total_products
FROM products
WHERE name LIKE '%iPhone 14'
-- WHERE name = 'iPhone 14'


-- Average Price of Products
SELECT AVG(price) AS Average_Price
FROM products
WHERE category ='Footwear' OR discount_rate > 10 ;



-- Maximum and Minimum Price
SELECT MAX (price) AS Max_Price,
MIN (price) AS Min_Price
FROM products
WHERE category = 'Electronics';

SELECT MAX(Price),
MIN (Price)
FROM Products
WHERE date_added = '2025-06-05'; 

SELECT * FROM products;

