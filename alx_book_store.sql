CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

CREATE TABLE Books (
book_id INT AUTO_INCREMENT PRIMARY KEY, 
title VARCHAR(130) NOT NULL,
FOREIGN KEY (author_id) REFERENCES Customer(customer_id),  
price DOUBLE,
publication_date DATE 
);


CREATE TABLE Authors (
author_id INT AUTO_INCREMENT PRIMARY KEY,
author_name VARCHAR(215) NOT NULL 
);

CREATE TABLE Customers (
customer_id INT AUTO_INCREMENT PRIMARY KEY,
customer_name VARCHAR(215) NOT NULL,
email VARCHAR(215) UNIQUE,
address TEXT NOT NULL
);

CREATE TABLE Orders (
order_id INT AUTO_INCREMENT PRIMARY KEY,
FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
order_date DATE
);

CREATE TABLE order_details (
orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
FOREIGN KEY (book_id) REFERENCES Book(book_id),
quantity DOUBLE
);