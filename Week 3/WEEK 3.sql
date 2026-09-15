CREATE DATABASE inventory_management;

USE inventory_management;

CREATE TABLE category(
category_id INT PRIMARY KEY,
category_name VARCHAR(100) NOT NULL
);

CREATE TABLE product(
product_id INT PRIMARY KEY,
product_name VARCHAR(100) NOT NULL,
price DECIMAL(10,2) NOT NULL,
category_id INT,
FOREIGN KEY(category_id) REFERENCES category(category_id)
);

CREATE TABLE seller(
seller_id INT PRIMARY KEY,
seller_name VARCHAR(100) NOT NULL,
phone VARCHAR(15),
email VARCHAR(100)
);

CREATE TABLE inventory(
inventory_id INT PRIMARY KEY,
product_id INT,
seller_id INT,
quantity INT NOT NULL,
reorder_level INT NOT NULL,
FOREIGN KEY(product_id) REFERENCES product(product_id),
FOREIGN KEY(seller_id) REFERENCES seller(seller_id),
UNIQUE(product_id,seller_id)
);

INSERT INTO category VALUES
(1,'Electronics'),
(2,'Clothing'),
(3,'Books'),
(4,'Home Appliances'),
(5,'Sports');

INSERT INTO product VALUES
(1,'Laptop',55000,1),
(2,'Smartphone',25000,1),
(3,'Headphones',2500,1),
(4,'T-Shirt',800,2),
(5,'Jeans',1800,2),
(6,'Java Programming',650,3),
(7,'Data Structures',750,3),
(8,'Mixer Grinder',4500,4),
(9,'Electric Kettle',1800,4),
(10,'Cricket Bat',2500,5);

INSERT INTO seller VALUES
(1,'Tech World','9876543210','techworld@gmail.com'),
(2,'Fashion Hub','9876543211','fashionhub@gmail.com'),
(3,'Book House','9876543212','bookhouse@gmail.com'),
(4,'Home Store','9876543213','homestore@gmail.com'),
(5,'Sports Zone','9876543214','sportszone@gmail.com');

INSERT INTO inventory VALUES
(1,1,1,25,5),
(2,2,1,40,10),
(3,3,1,0,10),
(4,4,2,100,20),
(5,5,2,50,10),
(6,6,3,30,5),
(7,7,3,0,5),
(8,8,4,15,5),
(9,9,4,60,10),
(10,10,5,35,5);

SELECT * FROM category;

SELECT * FROM product;

SELECT * FROM seller;

SELECT * FROM inventory;

SELECT COUNT(DISTINCT product_id) AS total_products_available
FROM inventory
WHERE quantity>0;

SELECT p.product_id,p.product_name
FROM product p
JOIN inventory i
ON p.product_id=i.product_id
WHERE i.quantity=0;

SELECT p.product_name,i.quantity
FROM product p
JOIN inventory i
ON p.product_id=i.product_id
WHERE i.quantity=(
SELECT MAX(quantity)
FROM inventory
);

SELECT AVG(quantity) AS average_inventory_quantity
FROM inventory;

SELECT
p.product_name,
c.category_name,
s.seller_name,
i.quantity,
i.reorder_level
FROM inventory i
JOIN product p
ON i.product_id=p.product_id
JOIN category c
ON p.category_id=c.category_id
JOIN seller s
ON i.seller_id=s.seller_id;