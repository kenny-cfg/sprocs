-- New Database
DROP DATABASE IF EXISTS CodingExample;
CREATE DATABASE CodingExample;

-- Use Database
USE CodingExample;

-- Students
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    age INT,
    subject VARCHAR(100),
    grade INT
);


INSERT INTO Students (
    student_id,
    full_name,
    age,
    subject,
    grade
)
VALUES
    (1, 'Emily Davis', 19, 'Computer Science', 85),
    (2, 'Jane Smith', 20, 'Computer Science', 78),
    (3, 'John Doe', 22, 'Business', 65),
    (4, 'Mark Johnson', 19, 'Business', 90),
    (5, 'Michael Brown', 21, 'Design', 72),
    (6, 'Sarah Lee', 20, 'Design', 88),
    (7, 'Tom Wilson', 23, 'Computer Science', 91),
    (8, 'Anna Clark', 18, 'Business', 55),
    (9, 'James Patel', 22, 'Design', 60),
    (10, 'Olivia Reed', 19, 'Computer Science', 74);

-- Menu Items
CREATE TABLE MenuItems (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(100),
    price DECIMAL(5,2),
    available BOOLEAN
);

INSERT INTO MenuItems (
    item_id,
    item_name,
    price,
    available
)
VALUES
    (1, 'Pizza', 8.99, TRUE),
    (2, 'Burger', 6.50, TRUE),
    (3, 'Fries', 3.00, TRUE),
    (4, 'Salad', 4.50, FALSE),
    (5, 'Soda', 1.50, TRUE),
    (6, 'Pasta', 7.25, TRUE),
    (7, 'Ice Cream', 2.75, FALSE),
    (8, 'Sandwich', 4.99, TRUE);

-- Orders
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE
);

INSERT INTO Orders (
    order_id,
    customer_id,
    order_date
)
VALUES
    (1, 101, '2024-07-01'),
    (2, 102, '2024-07-01'),
    (3, 103, '2024-07-02'),
    (4, 101, '2024-07-03'),
    (5, 104, '2024-07-03'),
    (6, 102, '2024-07-03'),
    (7, 105, '2024-07-04'),
    (8, 101, '2024-07-05');

-- Order Items
CREATE TABLE OrderItems (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    item_id INT,
    quantity INT
);

INSERT INTO OrderItems (
    order_item_id,
    order_id,
    item_id,
    quantity
)
VALUES
    (1, 1, 1, 2),
    (2, 1, 3, 1),
    (3, 2, 2, 1),
    (4, 3, 1, 3),
    (5, 3, 5, 4),
    (6, 4, 6, 2),
    (7, 5, 2, 2),
    (8, 6, 1, 1),
    (9, 7, 4, 1),
    (10, 8, 3, 2);