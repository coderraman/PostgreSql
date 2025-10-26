CREATE TABLE customers_info (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO customers_info (name, city) VALUES
('Raman', 'Delhi'),
('Alex', 'Mumbai'),
('Sara', 'Delhi'),
('John', 'Bangalore');

SELECT * FROM customers_info;

CREATE TABLE orders_info (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50)
);

INSERT INTO orders_info (customer_id, product) VALUES
(1, 'Laptop'),
(2, 'Phone'),
(2, 'Charger'),
(4, 'Tablet'),
(5, 'Monitor');
SELECT * FROM orders_info;

-- INNER JOIN
SELECT 
C.customer_id, c.name, c.city,
o.order_id, o.customer_id, o.product
FROM customers_info c
INNER JOIN
orders_info o
ON c.customer_id = o.customer_id;

-- LEFT JOIN
SELECT 
C.customer_id, c.name, c.city,
o.order_id, o.customer_id, o.product
FROM customers_info c
LEFT JOIN
orders_info o
ON c.customer_id = o.customer_id;

-- RIGHT JOIN
SELECT 
C.customer_id, c.name, c.city,
o.order_id, o.customer_id, o.product
FROM customers_info c
LEFT JOIN
orders_info o
ON c.customer_id = o.customer_id;

-- FULL OUTER JOIN
SELECT 
C.customer_id, c.name, c.city,
o.order_id, o.customer_id, o.product
FROM customers_info c
FULL OUTER JOIN
orders_info o
ON c.customer_id = o.customer_id;

-- CROSS JOIN
SELECT 
C.customer_id, c.name, c.city,
o.order_id, o.customer_id, o.product
FROM customers_info c
CROSS JOIN
orders_info O;

-- SELF JOIN  - With Two Tables and find same city customers
SELECT 
    c1.name AS customer_1,
    c2.name AS customer_2,
    c1.city,
    o.product
FROM customers_info c1
JOIN customers_info c2
    ON c1.city = c2.city AND c1.customer_id < c2.customer_id
JOIN orders_info o
    ON c1.customer_id = o.customer_id;



SELECT * FROM customers_info;
SELECT * FROM orders_info;

SELECT city
FROM customers_info
GROUP BY citY;

-- ✅ 3. To show full rows, but exclude duplicates based on one column (city) and keep only the first:

SELECT DISTINCT ON (city) *
FROM customers_info
ORDER BY city, customer_id;












