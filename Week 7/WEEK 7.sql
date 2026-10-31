USE EcommerceDB;

SELECT * FROM Customer;
SELECT * FROM Product;

SELECT Product_Name,Price
FROM Product;

SELECT * FROM Orders;

SELECT * FROM Payment;

SELECT Product_Name,Price
FROM Product
WHERE Price>5000;

SELECT *
FROM Product
WHERE Stock_Quantity>0;

SELECT *
FROM Customer
WHERE City='Chennai';

SELECT *
FROM Orders
WHERE Order_Status='Completed';

SELECT P.Product_Name,AVG(R.Rating) AS Average_Rating
FROM Product P
JOIN Review R ON P.Product_ID=R.Product_ID
GROUP BY P.Product_ID,P.Product_Name
HAVING AVG(R.Rating)>4;

SELECT *
FROM Product
ORDER BY Price ASC;

SELECT *
FROM Customer
ORDER BY Customer_Name ASC;

SELECT *
FROM Product
ORDER BY Price DESC
LIMIT 5;

SELECT *
FROM Orders
ORDER BY Order_Date DESC;

SELECT DISTINCT Category_ID
FROM Product;

SELECT DISTINCT Payment_Mode
FROM Payment;

SELECT DISTINCT City
FROM Customer;

SELECT *
FROM Product
WHERE Price BETWEEN 1000 AND 5000;

SELECT *
FROM Product
WHERE Category_ID=1;


SELECT *
FROM Product
WHERE Stock_Quantity>0;

SELECT *
FROM Product
WHERE Product_Name LIKE '%Mobile%';

SELECT *
FROM Product
WHERE Stock_Quantity<10;

SELECT C.Customer_Name,O.Order_ID,O.Order_Date,O.Order_Status
FROM Customer C
JOIN Orders O ON C.Customer_ID=O.Customer_ID;

SELECT P.Product_Name,P.Price,C.Category_Name
FROM Product P
JOIN Category C ON P.Category_ID=C.Category_ID;

SELECT DISTINCT C.Customer_Name
FROM Customer C
JOIN Orders O ON C.Customer_ID=O.Customer_ID
JOIN Order_Details OD ON O.Order_ID=OD.Order_ID
JOIN Product P ON OD.Product_ID=P.Product_ID
WHERE P.Product_Name='Mobile';

SELECT C.Customer_Name,P.Product_Name
FROM Customer C
JOIN Orders O ON C.Customer_ID=O.Customer_ID
JOIN Order_Details OD ON O.Order_ID=OD.Order_ID
JOIN Product P ON OD.Product_ID=P.Product_ID;

SELECT *
FROM Product
WHERE Category_ID=1 AND Price>10000;

SELECT *
FROM Customer
WHERE City IN ('Chennai','Bangalore');

SELECT *
FROM Product
WHERE Product_Name LIKE '%Mobile%';

SELECT *
FROM Orders
WHERE Order_Date BETWEEN '2026-01-01' AND '2026-12-31';

SELECT *
FROM Product
WHERE Price<1000 OR Price>10000;

SELECT Product_Name,
       Price,
       Stock_Quantity,
       CASE
           WHEN Stock_Quantity>0 THEN 'Available'
           ELSE 'Out of Stock'
       END AS Availability_Status
FROM Product;

SELECT COUNT(*) AS Total_Customers
FROM Customer;

SELECT City,COUNT(*) AS Total_Customers
FROM Customer
GROUP BY City;

SELECT *
FROM Customer
WHERE Registration_Date >= '2026-10-01';

SELECT COUNT(*) AS Total_Orders
FROM Orders;

SELECT COUNT(*) AS Completed_Orders
FROM Orders
WHERE Order_Status='Completed';

SELECT COUNT(*) AS Pending_Orders
FROM Orders
WHERE Order_Status='Pending';

SELECT COUNT(*) AS Cancelled_Orders
FROM Orders
WHERE Order_Status='Cancelled';

SELECT *
FROM Product
ORDER BY Price DESC
LIMIT 5;

SELECT P.Product_Name,COUNT(R.Review_ID) AS Total_Reviews
FROM Product P
JOIN Review R ON P.Product_ID=R.Product_ID
GROUP BY P.Product_ID,P.Product_Name
ORDER BY Total_Reviews DESC;

SELECT *
FROM Product
WHERE Stock_Quantity>0;