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



# WEEK 2 --- Product and Category Management System

## Why Are We Doing This?

In a store, there can be many products belonging to different categories. For example, a Laptop and a Mobile Phone belong to the Electronics category, while a T-Shirt and Jeans belong to the Clothing category.

If all this information is stored without proper organization, it becomes difficult to find products, count products in each category, compare prices, and analyze the data.

So, we are creating a Product and Category Management System using MySQL to store and organize this information properly.

## What Are We Doing?

In this project, we are creating a database with two tables:

1. Category
2. Product

The Category table stores the different categories available in the store.

The Product table stores the products, their prices, and the category to which they belong.

We connect these two tables using `category_id`.

For example:

Electronics
- Laptop
- Mobile Phone
- Headphones
- Keyboard
- Mouse
- Monitor
- Smart Watch

Clothing
- T-Shirt
- Jeans
- Jacket
- Shirt

This allows us to easily identify which category each product belongs to.

## How Does the Project Work?

First, we create a database called `product_category_db`.

Then, we create the `category` table to store category information.

After that, we create the `product` table to store product information.

The `category_id` in the Category table is the Primary Key. The same `category_id` is used as a Foreign Key in the Product table.

This creates a relationship between the two tables.

The relationship is:

One Category → Many Products

For example:

Electronics → Laptop, Mobile Phone, Headphones, Keyboard, Mouse, Monitor, Smart Watch

## What Data Are We Storing?

For categories, we store:

- Category ID
- Category Name

For products, we store:

- Product ID
- Product Name
- Price
- Category ID

## What Operations Are We Performing?

We perform CRUD operations on the product data.

CRUD means:

- Create – Add a new product
- Read – Display product information
- Update – Change existing product information
- Delete – Remove a product

For example, we can add a new Tablet, display it, change its price, and delete it.

## What Analysis Are We Doing?

After storing the data, we use SQL queries to analyze the products category-wise.

We perform the following analysis:

### 1. Display Products with Their Categories

We find which category each product belongs to.

### 2. Count Products in Each Category

We find how many products are available in Electronics, Clothing, Books, and Shoes.

### 3. Find the Highest-Priced Product in Each Category

We find the most expensive product in every category.

For example:

Electronics → Laptop

Clothing → Jacket

Books → Data Structures

Shoes → Sports Shoes

### 4. Find Categories Having More Than Five Products

We check which categories contain more than five products.

In our sample data, Electronics has seven products, so it will be displayed.

### 5. Find Average Product Price Category-wise

We calculate the average price of products in each category.

This helps us understand the general price level of each category.

## Why Are These Queries Useful?

These queries show how a database can be used not only to store information but also to retrieve and analyze useful information.

For example, a store owner can use the database to find:

- Which category has the most products?
- What is the most expensive product in each category?
- Which categories have more than five products?
- What is the average price of products in each category?

This makes managing and analyzing product information easier.

## Technologies Used

- MySQL
- MySQL Workbench
- SQL

## Conclusion

The Product and Category Management System is created to understand how related data can be stored and managed using a relational database.

By creating Category and Product tables and connecting them using a Primary Key and Foreign Key, we can organize product information properly.

Using CRUD operations and category-wise SQL queries, we can add, view, update, delete, and analyze product data.

This project helps us understand the practical use of SQL and relational databases in a simple product management system.
