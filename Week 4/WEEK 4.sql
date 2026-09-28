-- WEEK 4: ORDER MANAGEMENT SYSTEM
-- Based on the Week 4 assignment document.
-- Assumption from the sample SQL in the assignment:
-- Customer(Customer_ID, Customer_Name)
-- Product(Product_ID, Product_Name)
-- Product price is stored in Order_Details.Price as required by the assignment.

CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT NOT NULL,
    Order_Date DATE NOT NULL,
    Total_Amount DECIMAL(10,2) NOT NULL CHECK (Total_Amount >= 0),
    Order_Status VARCHAR(20) NOT NULL CHECK (Order_Status IN ('Pending','Shipped','Delivered')),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

CREATE TABLE Order_Details (
    Order_Detail_ID INT PRIMARY KEY,
    Order_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    Quantity INT NOT NULL CHECK (Quantity > 0),
    Price DECIMAL(10,2) NOT NULL CHECK (Price >= 0),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

-- SAMPLE INSERT: customer places an order for a laptop and mouse
INSERT INTO Orders
(Order_ID, Customer_ID, Order_Date, Total_Amount, Order_Status)
VALUES
(5001, 101, '2026-09-27', 56000.00, 'Pending');

INSERT INTO Order_Details
(Order_Detail_ID, Order_ID, Product_ID, Quantity, Price)
VALUES
(1, 5001, 201, 1, 55000.00),
(2, 5001, 202, 2, 500.00);

-- Another sample order
INSERT INTO Orders
(Order_ID, Customer_ID, Order_Date, Total_Amount, Order_Status)
VALUES
(5002, 102, '2026-09-27', 25000.00, 'Pending');

INSERT INTO Order_Details
(Order_Detail_ID, Order_ID, Product_ID, Quantity, Price)
VALUES
(3, 5002, 203, 1, 25000.00);

-- UPDATE OPERATIONS

-- Change order status
UPDATE Orders
SET Order_Status = 'Delivered'
WHERE Order_ID = 5001;

-- Update product quantity
UPDATE Order_Details
SET Quantity = 3
WHERE Order_Detail_ID = 2;

-- Recalculate the total amount after the quantity update
UPDATE Orders
SET Total_Amount = (
    SELECT SUM(Quantity * Price)
    FROM Order_Details
    WHERE Order_Details.Order_ID = Orders.Order_ID
)
WHERE Order_ID = 5001;

-- DELETE OPERATIONS

-- Delete order details first because they reference the order
DELETE FROM Order_Details
WHERE Order_ID = 5002;

-- Delete the cancelled order
DELETE FROM Orders
WHERE Order_ID = 5002;

-- REPORT 1: CUSTOMER ORDER HISTORY
SELECT
    Customer.Customer_Name,
    Orders.Order_ID,
    Orders.Order_Date,
    Orders.Total_Amount,
    Orders.Order_Status
FROM Customer
JOIN Orders
ON Customer.Customer_ID = Orders.Customer_ID
ORDER BY Orders.Order_Date;

-- REPORT 2: PRODUCT-WISE ORDER REPORT
-- Number of times each product was ordered and total quantity sold
SELECT
    Product.Product_ID,
    Product.Product_Name,
    COUNT(DISTINCT Order_Details.Order_ID) AS Number_Of_Orders,
    SUM(Order_Details.Quantity) AS Total_Quantity_Sold
FROM Product
JOIN Order_Details
ON Product.Product_ID = Order_Details.Product_ID
GROUP BY Product.Product_ID, Product.Product_Name;

-- REPORT 3A: CUSTOMERS WITH MAXIMUM ORDERS
SELECT
    Customer.Customer_ID,
    Customer.Customer_Name,
    COUNT(Orders.Order_ID) AS Number_Of_Orders
FROM Customer
JOIN Orders
ON Customer.Customer_ID = Orders.Customer_ID
GROUP BY Customer.Customer_ID, Customer.Customer_Name
ORDER BY Number_Of_Orders DESC;

-- REPORT 3B: TOTAL SPENDING BY EACH CUSTOMER
SELECT
    Customer.Customer_ID,
    Customer.Customer_Name,
    SUM(Orders.Total_Amount) AS Total_Spending
FROM Customer
JOIN Orders
ON Customer.Customer_ID = Orders.Customer_ID
GROUP BY Customer.Customer_ID, Customer.Customer_Name
ORDER BY Total_Spending DESC;

-- REPORT 3C: AVERAGE ORDER VALUE
SELECT
    Customer.Customer_ID,
    Customer.Customer_Name,
    AVG(Orders.Total_Amount) AS Average_Order_Value
FROM Customer
JOIN Orders
ON Customer.Customer_ID = Orders.Customer_ID
GROUP BY Customer.Customer_ID, Customer.Customer_Name;
