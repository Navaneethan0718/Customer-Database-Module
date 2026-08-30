DROP DATABASE IF EXISTS ecommercedb;

CREATE DATABASE EcommerceDB;

USE EcommerceDB;

CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Phone VARCHAR(15) NOT NULL UNIQUE,
    Address VARCHAR(255) NOT NULL
);

INSERT INTO Customer
(Customer_ID,Customer_Name,Email,Phone,Address)
VALUES
(101,'Arun Kumar','arun@gmail.com','9876543210','Chennai'),
(102,'Priya S','priya@gmail.com','9876543211','Madurai'),
(103,'Karthik R','karthik@gmail.com','9876543212','Coimbatore'),
(104,'Divya M','divya@gmail.com','9876543213','Trichy'),
(105,'Rahul Kumar','rahul@gmail.com','9876543214','Salem');

SELECT * FROM Customer;

UPDATE Customer
SET Address='Bangalore'
WHERE Customer_ID=103;

SELECT * FROM Customer
WHERE Customer_ID=103;

DELETE FROM Customer
WHERE Customer_ID=105;

SELECT * FROM Customer;

DESC Customer;