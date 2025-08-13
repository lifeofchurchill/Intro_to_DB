CREATE DATABASE Alx_book_Store;
USE alx_book_store;

CREATE TABLE Books (
book_id INT PRIMARY KEY, 
title VARCHAR(130) NOT NULL,
author_id INT,  
price DOUBLE,
publication_date DATE 
);


CREATE TABLE Authors (
author_id INT PRIMARY KEY,
author_name VARCHAR(215) NOT NULL 
);

CREATE TABLE Customers (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(215) NOT NULL,
email VARCHAR(215) UNIQUE,
address TEXT NOT NULL
);

CREATE TABLE Orders (
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE
);

CREATE TABLE order_details (
orderdetailid INT PRIMARY KEY,
order_id INT,
book_id INT,
quantity DOUBLE
);