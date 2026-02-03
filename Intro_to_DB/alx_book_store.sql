CREATE DATABASE alx_book_store;

'''Books table'''
CREATE TABLE Books (
    book_id PRIMARY KEY,
    title VARCHAR(130),
    author_id FOREIGN KEY,
    price DOUBLE,
    publication_date DATE,
);

'''Authors table'''
CREATE TABLE Authors (
    author_id PRIMARY KEY,
    author_name VARCHAR(215)
);

'''Customers table'''
CREATE TABLE Customers (
    customer_id PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

'''Orders table'''
CREATE TABLE Orders (
    order_id PRIMARY KEY,
    customer_id FOREIGN KEY,
    order_date DATE,
);

'''Order_details table'''
CREATE TABLE Order_Details (
    orderdetailid PRIMARY KEY,
    order_id INT FOREIGN KEY,
    book_id FOREIGN KEY,
    quantity DOUBLE,
);
