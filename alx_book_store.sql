
-- alx_book_store.sql
-- Author: Yeap that's me
-- Description: SQL schema for an online bookstore
-- Date: 2025-06-27

CREATE DATABASE IF NOT EXISTS alx_book_store
use alx_book_store;

CREATE table Authors(
author_id INT PRIMARY KEY,
author_name VARCHAR(215)

);

CREATE table Books(
book_id INT PRIMARY KEY,
title VARCHAR(130),
author_id INT,
price DOUBLE,
publication_date DATE,
FOREIGN KEY (author_id) REFERENCES Authors(author_id)

);


CREATE table Customers(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(215),
email VARCHAR(215),
address TEXT

);

CREATE table Orders(
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
Foreign Key (customer_id) REFERENCES Customers (customer_id)

);

CREATE table Orders_Details(
orderdetailid INT PRIMARY KEY,
order_id INT,
book_id INT,
quantity DOUBLE,
Foreign Key (order_id) REFERENCES Orders (order_id),
Foreign Key (book_id) REFERENCES Books (book_id)

);




