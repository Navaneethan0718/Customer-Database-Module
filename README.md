# E-Commerce Customer Database

## Week 1 - Requirement Analysis and Customer Database Module

This project is a basic database module for an E-Commerce Business Management System. It focuses on analyzing the business requirements and creating a Customer database table using MySQL.

## Objectives

- Analyze the requirements of an E-Commerce business.
- Identify the main entities involved in the system.
- Design a Customer table.
- Create the database and Customer table using MySQL.
- Insert customer records.
- Perform CRUD operations on customer data.

## Main Entities

The main entities identified for the E-Commerce system are:

- Customer
- Product
- Order
- Payment
- Seller
- Review

## Customer Table

The Customer table contains the following attributes:

| Column | Data Type | Constraint |
|---|---|---|
| Customer_ID | INT | PRIMARY KEY |
| Customer_Name | VARCHAR(100) | NOT NULL |
| Email | VARCHAR(100) | NOT NULL, UNIQUE |
| Phone | VARCHAR(15) | NOT NULL, UNIQUE |
| Address | VARCHAR(255) | NOT NULL |

## Technologies Used

- MySQL
- MySQL Workbench
- SQL

## CRUD Operations

The following CRUD operations are performed on the Customer table:

### Create

The database and Customer table are created using SQL.

### Read

Customer records are displayed using the SELECT command.

### Update

Existing customer information is modified using the UPDATE command.

### Delete

Customer records are removed using the DELETE command.

## SQL Operations

The project includes the following SQL operations:

- CREATE DATABASE
- CREATE TABLE
- INSERT
- SELECT
- UPDATE
- DELETE

## Sample Customer Records

| Customer_ID | Customer_Name | Email | Phone | Address |
|---|---|---|---|---|
| 101 | Arun Kumar | arun@gmail.com | 9876543210 | Chennai |
| 102 | Priya S | priya@gmail.com | 9876543211 | Madurai |
| 103 | Karthik R | karthik@gmail.com | 9876543212 | Coimbatore |
| 104 | Divya M | divya@gmail.com | 9876543213 | Trichy |
| 105 | Rahul Kumar | rahul@gmail.com | 9876543214 | Salem |

## Database Constraints

The Customer table uses the following constraints:

- PRIMARY KEY is used for Customer_ID.
- NOT NULL is used for required customer information.
- UNIQUE is used for Email to prevent duplicate email addresses.
- UNIQUE is used for Phone to prevent duplicate phone numbers.

## Project Structure

Week-1/

├── README.md  
├── Requirement_Analysis.docx  
├── Customer_Table_Design.docx  
├── Customer_Database.sql  
└── Screenshots/

    ├── table_structure.png
    ├── select_output.png
    ├── update_output.png
    └── delete_output.png

## Expected Outcome

The project provides an organized way to store and manage customer information for an E-Commerce system. The Customer table supports basic CRUD operations while using database constraints to maintain data accuracy and consistency.

## Conclusion

The Week 1 module covers the requirement analysis, identification of major entities, Customer table design, database creation, customer record insertion, and CRUD operations for an E-Commerce Business Management System.
