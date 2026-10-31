USE EcommerceDB;
SELECT * FROM Payment;

UPDATE Payment
SET Payment_Status='Success'
WHERE Payment_ID='P102';

UPDATE Payment
SET Payment_Status='Failed'
WHERE Payment_ID='P104';

SELECT *
FROM Payment
WHERE Order_ID=5001;

SELECT *
FROM Payment
WHERE Payment_Status='Success';

SELECT *
FROM Payment
WHERE Payment_Status='Failed';

SELECT COUNT(*) AS Successful_Payments
FROM Payment
WHERE Payment_Status='Success';

SELECT COUNT(*) AS Failed_Payments
FROM Payment
WHERE Payment_Status='Failed';

UPDATE Payment
SET Payment_Status='Success'
WHERE Payment_ID='P106';

SELECT *
FROM Payment
WHERE Payment_Status='Pending';

SELECT Payment_Mode,COUNT(*) AS Total_Transactions
FROM Payment
GROUP BY Payment_Mode;

SELECT COUNT(*) AS UPI_Transactions
FROM Payment
WHERE Payment_Mode='UPI';

SELECT Payment_Mode,COUNT(*) AS Total
FROM Payment
GROUP BY Payment_Mode
ORDER BY Total DESC
LIMIT 1;

SELECT SUM(Transaction_Amount) AS Total_Revenue
FROM Payment
WHERE Payment_Status='Success';

SELECT Payment_Mode,
SUM(Transaction_Amount) AS Revenue
FROM Payment
WHERE Payment_Status='Success'
GROUP BY Payment_Mode;

SELECT AVG(Transaction_Amount) AS Average_Amount
FROM Payment;

SELECT C.Customer_Name,
       O.Order_ID,
       P.Payment_Mode,
       P.Transaction_Amount,
       P.Payment_Status
FROM Customer C
JOIN Orders O ON C.Customer_ID=O.Customer_ID
JOIN Payment P ON O.Order_ID=P.Order_ID;