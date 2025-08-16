USE alx_book_store;

CREATE TABLE IF NOT EXISTS Books (
book_id INT AUTO_INCREMENT PRIMARY KEY, 
title VARCHAR(130) NOT NULL,
FOREIGN KEY (author_id) REFERENCES Customer(customer_id),  
price DOUBLE,
publication_date DATE 
);

CREATE TABLE IF NOT EXISTS Authors (
author_id INT AUTO_INCREMENT PRIMARY KEY,
author_name VARCHAR(215) NOT NULL 
);

CREATE TABLE IF NOT EXISTS Customers (
customer_id INT AUTO_INCREMENT PRIMARY KEY,
customer_name VARCHAR(215) NOT NULL,
email VARCHAR(215) UNIQUE,
address TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Orders (
order_id INT AUTO_INCREMENT PRIMARY KEY,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
order_date DATE
);

CREATE TABLE IF NOT EXISTS Order_Details (
orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
FOREIGN KEY (book_id) REFERENCES Books(book_id),
quantity DOUBLE
);