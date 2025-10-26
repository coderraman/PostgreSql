-- Create Books table
DROP TABLE IF EXISTS Books;
CREATE TABLE Books (
    Book_ID SERIAL PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(100),
    Published_Year INT,
    Price NUMERIC(10,5),
    Stock INT
);

-- Create Customers table
DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
    Customer_ID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    City VARCHAR(100),
    Country VARCHAR(100)
);
ALTER TABLE Customers
ALTER COLUMN Country TYPE VARCHAR(100);




-- Create Orders table
DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
    Order_ID SERIAL PRIMARY KEY,
    Customer_ID INT REFERENCES Customers(Customer_ID),
    Book_ID INT REFERENCES Books(Book_ID),
    Order_Date DATE,
    Quantity INT,
    Total_Amount NUMERIC(10,2)
);

SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;

-- Import Data into Tabel from Books Table
COPY Books(Book_ID, Title, Author, Genre, Published_Year, Price, Stock)
FROM 'C:\Program Files\PostgreSQL\17\data\CSV Imports\Books.csv'
CSV HEADER;

-- Import Data into Tabel from Customer Table
COPY Customers(Customer_ID, Name, Email, Phone, City, Country)
FROM 'C:\Program Files\PostgreSQL\17\data\CSV Imports\Customers.csv'
CSV HEADER;

-- Import Data into Tabel from Orders Table
COPY Orders(Order_ID, Customer_ID, Book_ID, Order_Date, Quantity, Total_Amount)
FROM 'C:\Program Files\PostgreSQL\17\data\CSV Imports\Orders.csv'
CSV HEADER;

-- Basic Questions

--1 Retrive all books in the "fiction genre":
SELECT * FROM Books
WHERE genre = 'Fiction';

-- 2 Find the Books Published After 1950
SELECT * FROM Books
WHERE published_year>1950; 

-- 3 List All canada customers
SELECT * FROM Customers;
SELECT * FROM Customers
WHERE country = 'Canada';

-- 4 Show Orders Placed in Nov. 2023
SELECT * FROM Orders;

SELECT * FROM Orders
WHERE order_date BETWEEN '2023-11-01' AND '2023-11-30'
ORDER BY order_date;

-- 5 Retrieve the Total Stock of available books
SELECT * FROM Books;
SELECT SUM(stock)
FROM Books;

-- 6 Find the Most Expensive Book
SELECT * FROM Books
ORDER BY price DESC LIMIT 1;

-- 7 Show the Customers who order more than one quantity of book
SELECT * FROM Orders
WHERE quantity>1;

-- 8 Retrieve all orders where the total_amount exceeds 20
SELECT * FROM Orders
WHERE total_amount >20;

-- 9 List all genres available in books table
SELECT DISTINCT genre FROM Books;

-- 10 Find the book with Low Stock
SELECT * FROM Books
ORDER BY stock LIMIT 20; 

-- 11 Calculate the total revenu genrated from all orders
SELECT * FROM Orders;
SELECT SUM(total_amount) AS Total_Revenue
FROM Orders;

-- Advance Questions
-- 1 Retrieve the total numbers of books to each genre
SELECT * FROM Orders;
SELECT * FROM Books;

SELECT b.genre, SUM(o.quantity) AS Total_Book_Sold
FROM Books b
JOIN
Orders o
ON o.book_id = b.book_id
GROUP BY genre;

-- 2 Finds the Average Price of Books in the Fantasy genre
SELECT AVG(price) AS Average_Price
FROM Books
WHERE genre = 'Fantasy';

-- 3 List Customers who have at least 2 orders
SELECT customer_id, COUNT(order_id) AS Order_Count
FROM Orders
GROUP BY customer_id
HAVING COUNT(order_date)>2;
-- Join for customer name
SELECT c.name,o.customer_id, COUNT(o.order_id) AS Order_Count
FROM Orders o
JOIN 
Customers c
ON 
o.customer_id = c.customer_id
GROUP BY 
c.name, o.customer_id
HAVING
COUNT(o.order_id)>2;


-- Find the most frequently order
SELECT book_id, COUNT(order_id) AS Order_count
FROM Orders
GROUP BY
book_id
ORDER BY Order_count DESC LIMIT 1;
-- Adding Book Name
SELECT o.book_id, b.title, COUNT(o.order_id) AS Order_count
FROM Orders o
JOIN 
Books b
ON
o.book_id = b.book_id
GROUP BY
o.book_id, b.title
ORDER BY Order_count DESC LIMIT 1;

-- 5. Show the top most Expensive 3 books of Fantasy genre
SELECT * FROM Books
WHERE genre = 'Fantasy'
ORDER BY price DESC LIMIT 3;

-- 	Retrieve the total quantity of books sold by each author
SELECT o.book_id, b.author, SUM(o.quantity) AS Total_sold_Books
FROM Orders o
JOIN
Books b
ON
o.book_id = b.book_id
WHERE b.author = 'Leonard Vega'
GROUP BY 
b.author, o.book_id;

-- List the Cities Where Customer spent over 300/- are located
SELECT DISTINCT c.city, o.total_amount AS Total_Spent_Amount
FROM Orders o
JOIN 
Customers c
ON
c.customer_id = o.customer_id
WHERE total_amount > 300;

-- Find the Customer spent the most on orders
SELECT c.customer_id, c.name, SUM(o.total_amount) AS Total_Spent
FROM Orders o
JOIN 
Customers c
ON 
o.customer_id = c.customer_id
GROUP BY c.name, c.customer_id
ORDER By Total_Spent DESC LIMIT 1;

-- Calcuating the stock remaining after fulllfiling all orders
SELECT b.Book_id, b.title, b.stock, COALESCE(SUM(quantity),0) AS Order_Quantity,
b.stock - COALESCE(SUM(quantity),0) AS Remaining_Stock
FROM Books b
LEFT JOIN Orders o
ON 
o.Book_id = b.Book_id
GROUP BY 
b.Book_id
ORDER  BY b.Book_id;































