USE EcommerceDB;

UPDATE Review
SET Review_Text='Excellent product and quality'
WHERE Review_ID='R101';

DELETE FROM Review
WHERE Review_ID='R105';

SELECT *
FROM Review
WHERE Product_ID=201;

SELECT P.Product_Name,R.Rating,R.Review_Text
FROM Product P
JOIN Review R ON P.Product_ID=R.Product_ID;

SELECT C.Customer_Name,R.Review_Text,R.Rating
FROM Customer C
JOIN Review R ON C.Customer_ID=R.Customer_ID;

SELECT P.Product_Name,COUNT(R.Review_ID) AS Total_Reviews
FROM Product P
JOIN Review R ON P.Product_ID=R.Product_ID
GROUP BY P.Product_ID,P.Product_Name
ORDER BY Total_Reviews DESC
LIMIT 1;

SELECT *
FROM Review
ORDER BY Review_Date DESC;
SELECT *
FROM Review
WHERE Rating>4;

SELECT Product_ID,AVG(Rating) AS Average_Rating
FROM Review
GROUP BY Product_ID;

SELECT Product_ID,COUNT(*) AS Total_Reviews
FROM Review
GROUP BY Product_ID;

SELECT Product_ID,AVG(Rating) AS Average_Rating
FROM Review
GROUP BY Product_ID
ORDER BY Average_Rating DESC
LIMIT 1;

SELECT Product_ID,AVG(Rating) AS Average_Rating
FROM Review
GROUP BY Product_ID
HAVING AVG(Rating)>4;

SELECT P.Product_Name,
       COUNT(R.Review_ID) AS Total_Reviews,
       AVG(R.Rating) AS Average_Rating
FROM Product P
LEFT JOIN Review R ON P.Product_ID=R.Product_ID
GROUP BY P.Product_ID,P.Product_Name;

SELECT P.Product_Name,COUNT(R.Review_ID) AS Total_Reviews
FROM Product P
JOIN Review R ON P.Product_ID=R.Product_ID
GROUP BY P.Product_ID,P.Product_Name
ORDER BY Total_Reviews DESC;

SELECT P.Product_Name,AVG(R.Rating) AS Average_Rating
FROM Product P
JOIN Review R ON P.Product_ID=R.Product_ID
GROUP BY P.Product_ID,P.Product_Name
HAVING AVG(R.Rating)>=4;

SELECT P.Product_Name,AVG(R.Rating) AS Average_Rating
FROM Product P
JOIN Review R ON P.Product_ID=R.Product_ID
GROUP BY P.Product_ID,P.Product_Name
HAVING AVG(R.Rating)<3;

SELECT Rating,COUNT(*) AS Total
FROM Review
GROUP BY Rating
ORDER BY Rating DESC;

SELECT COUNT(*) AS Five_Star_Ratings
FROM Review
WHERE Rating=5;

SELECT COUNT(*) AS Four_Star_Ratings
FROM Review
WHERE Rating=4;

SELECT COUNT(*) AS Low_Rated_Reviews
FROM Review
WHERE Rating<=2;