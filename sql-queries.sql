#1) Table Creation:

CREATE TABLE SUPPLIER(
SUPP_ID int(10) primary key, SUPP_NAME varchar(50) not null,
SUPP_CITY varchar(30) not null, SUPP_PHONE varchar(15) not null
);

CREATE TABLE CUSTOMER(
	CUST_ID int(10) primary key,     CUS_NAME varchar(50) not null,
    CUS_PHONE varchar(15) not null,     CUS_CITY varchar(30) not null,
    CUS_GENDER char(1)
);

CREATE TABLE CATEGORY(CAT_ID int(10) primary key,     CAT_NAME varchar(20) not null );

CREATE TABLE PRODUCT (
	PRO_ID INT PRIMARY KEY, PRO_NAME VARCHAR(20) NOT NULL DEFAULT "Dummy",
	PRO_DESC VARCHAR(60), CAT_ID INT,
    FOREIGN KEY (CAT_ID) REFERENCES CATEGORY(CAT_ID)
);

CREATE TABLE SUPPLIER_PRICING(
    PRICING_ID INT PRIMARY KEY, PRO_ID INT,
	SUPP_ID INT, SUPP_PRICE INT DEFAULT 0,
    FOREIGN KEY (PRO_ID) REFERENCES PRODUCT(PRO_ID),
	FOREIGN KEY (SUPP_ID) REFERENCES SUPPLIER(SUPP_ID)
);

CREATE TABLE ORDERS (
ORD_ID INT PRIMARY KEY, ORD_AMOUNT INT NOT NULL,
ORD_DATE DATE NOT NULL, CUS_ID INT,
PRICING_ID INT, 
FOREIGN KEY (CUS_ID) REFERENCES CUSTOMER(CUST_ID),
FOREIGN KEY (PRICING_ID) REFERENCES SUPPLIER_PRICING(PRICING_ID)
);

CREATE TABLE RATING(
RAT_ID INT PRIMARY KEY,
ORD_ID INT,
RAT_RATSTARS INT NOT NULL,
FOREIGN KEY (ORD_ID) REFERENCES ORDERS(ORD_ID)
);


#2) Inserting values into Tables

INSERT INTO SUPPLIER(SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE) 
VALUES(1, 'Rajesh Retails', 'Delhi', '1234567890');

INSERT INTO SUPPLIER(SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE) 
VALUES(2, 'Appario Ltd.', 'Mumbai', '2589631470');

INSERT INTO SUPPLIER(SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE) 
VALUES(3, 'Knome products', 'Banglore', '9785462315');

INSERT INTO SUPPLIER(SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE) 
VALUES(4, 'Bansal Retails', 'Kochi', '8975463285');

INSERT INTO SUPPLIER(SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE) 
VALUES(5, 'Mittal Ltd.', 'Lucknow', '7898456532');

SELECT * FROM SUPPLIER;

INSERT INTO CUSTOMER(CUST_ID, CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER)
VALUES(1, 'AAKASH', '9999999999', 'DELHI', 'M');

INSERT INTO CUSTOMER(CUST_ID, CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER)
VALUES(2, 'AMAN', '9785463215', 'NOIDA', 'M');

INSERT INTO CUSTOMER(CUST_ID, CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER)
VALUES(3, 'NEHA', '9999999999', 'MUMBAI', 'F');

INSERT INTO CUSTOMER(CUST_ID, CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER)
VALUES(4, 'MEGHA', '9994562399', 'KOLKATA', 'F');

INSERT INTO CUSTOMER(CUST_ID, CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER)
VALUES(5, 'PULKIT', '7895999999', 'LUCKNOW', 'M');

SELECT * FROM CUSTOMER;

INSERT INTO CATEGORY(CAT_ID, CAT_NAME)
VALUES(1, 'BOOKS');

INSERT INTO CATEGORY(CAT_ID, CAT_NAME)
VALUES(2, 'GAMES');

INSERT INTO CATEGORY(CAT_ID, CAT_NAME)
VALUES(3, 'GROCERIES');

INSERT INTO CATEGORY(CAT_ID, CAT_NAME)
VALUES(4, 'ELECTRONICS');

INSERT INTO CATEGORY(CAT_ID, CAT_NAME)
VALUES(5, 'CLOTHES');

SELECT * FROM CATEGORY;

INSERT INTO PRODUCT(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID)
VALUES(1, 'GTA V', 'Windows 7 and above with i5 processor and 8GB RAM', 2);

INSERT INTO PRODUCT(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID)
VALUES(2, 'TSHIRT', 'SIZE-L with Black, Blue and White variations', 5);

INSERT INTO PRODUCT(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID)
VALUES(3, 'ROG LAPTOP', 'Windows 10 with 15inch screen, i7 processor, 1TB SSD', 4);

INSERT INTO PRODUCT(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID)
VALUES(4, 'OATS', 'Highly Nutritious from Nestle', 3);

INSERT INTO PRODUCT(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID)
VALUES(5, 'HARRY POTTER', 'Best Collection of all time by J.K Rowling', 1);

INSERT INTO PRODUCT(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID)
VALUES(6, 'MILK', '1L Toned MIlk', 3);

INSERT INTO PRODUCT(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID)
VALUES(7, 'Boat Earphones', '1.5Meter long Dolby Atmos', 4);

INSERT INTO PRODUCT(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID)
VALUES(8, 'Jeans', 'Stretchable Denim Jeans with various sizes and color', 5);

INSERT INTO PRODUCT(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID)
VALUES(9, 'Project IGI', 'compatible with windows 7 and above', 2);

INSERT INTO PRODUCT(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID)
VALUES(10, 'Hoodie', 'Black GUCCI for 13 yrs and above', 5);

INSERT INTO PRODUCT(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID)
VALUES(11, 'Rich Dad Poor Dad', 'Written by RObert Kiyosaki', 1);

INSERT INTO PRODUCT(PRO_ID, PRO_NAME, PRO_DESC, CAT_ID)
VALUES(12, 'Train Your Brain', 'By Shireen Stephen', 1);

SELECT * FROM PRODUCT;

INSERT INTO SUPPLIER_PRICING(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE)
VALUES(1, 1, 2, 1500);

INSERT INTO SUPPLIER_PRICING(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE)
VALUES(2, 3, 5, 30000);

INSERT INTO SUPPLIER_PRICING(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE)
VALUES(3, 5, 1, 3000);

INSERT INTO SUPPLIER_PRICING(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE)
VALUES(4, 2, 3, 2500);

INSERT INTO SUPPLIER_PRICING(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE)
VALUES(5, 4, 1, 1000);

INSERT INTO SUPPLIER_PRICING(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE)
VALUES(6, 2, 2, 8000);

INSERT INTO SUPPLIER_PRICING(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE)
VALUES(7, 3, 3, 7000);

INSERT INTO SUPPLIER_PRICING(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE)
VALUES(8, 5, 5, 6700);

INSERT INTO SUPPLIER_PRICING(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE)
VALUES(9, 2, 1, 4800);

INSERT INTO SUPPLIER_PRICING(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE)
VALUES(10, 1, 3, 6800);

INSERT INTO SUPPLIER_PRICING(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE)
VALUES(11, 4, 2, 5680);

INSERT INTO SUPPLIER_PRICING(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE)
VALUES(12, 2, 4, 6890);

INSERT INTO SUPPLIER_PRICING(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE)
VALUES(13, 3, 5, 8400);

INSERT INTO SUPPLIER_PRICING(PRICING_ID, PRO_ID, SUPP_ID, SUPP_PRICE)
VALUES(14, 1, 1, 3000);

SELECT * FROM SUPPLIER_PRICING;

INSERT INTO ORDERS(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID)
VALUES(101, 1500, "2021-10-06", 2, 1);

INSERT INTO ORDERS(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID)
VALUES(102, 1000, '2021-10-12', 3, 5);

INSERT INTO ORDERS(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID)
VALUES(103, 30000, '2021-09-16', 5, 2);

INSERT INTO ORDERS(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID)
VALUES(104, 1500, '2021-10-05', 1, 1);

INSERT INTO ORDERS(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID)
VALUES(105, 3000, '2021-08-16', 4, 3);

INSERT INTO ORDERS(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID)
VALUES(106, 1450, '2021-08-18', 1, 9);

INSERT INTO ORDERS(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID)
VALUES(107, 789, '2021-09-01', 3, 7);

INSERT INTO ORDERS(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID)
VALUES(108, 780, '2021-09-07', 5, 6);

INSERT INTO ORDERS(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID)
VALUES(109, 3000, '2021-00-10', 5 ,3);

INSERT INTO ORDERS(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID)
VALUES(110, 2500, '2021-09-10', 2, 4);

INSERT INTO ORDERS(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID)
VALUES(111, 1000, '2021-09-15', 4, 5);

INSERT INTO ORDERS(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID)
VALUES(112, 789, '2021-09-16', 4, 7);

INSERT INTO ORDERS(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID)
VALUES(113, 31000, '2021-09-16', 1, 8);

INSERT INTO ORDERS(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID)
VALUES(114, 1000, '2021-09-16', 3, 5);

INSERT INTO ORDERS(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID)
VALUES(115, 3000, '2021-09-16', 5, 3);

INSERT INTO ORDERS(ORD_ID, ORD_AMOUNT, ORD_DATE, CUS_ID, PRICING_ID)
VALUES(116, 99, '2021-09-17', 2, 14);

SELECT * FROM ORDERS;

INSERT INTO RATING(RAT_ID, ORD_ID, RAT_RATSTARS)
VALUES(1, 101, 4);

INSERT INTO RATING(RAT_ID, ORD_ID, RAT_RATSTARS)
VALUES(2, 102, 3);

INSERT INTO RATING(RAT_ID, ORD_ID, RAT_RATSTARS)
VALUES(3, 103, 1);

INSERT INTO RATING(RAT_ID, ORD_ID, RAT_RATSTARS)
VALUES(4, 104, 2);

INSERT INTO RATING(RAT_ID, ORD_ID, RAT_RATSTARS)
VALUES(5, 105, 4);

INSERT INTO RATING(RAT_ID, ORD_ID, RAT_RATSTARS)
VALUES(6, 106, 3);

INSERT INTO RATING(RAT_ID, ORD_ID, RAT_RATSTARS)
VALUES(7, 107, 4);

INSERT INTO RATING(RAT_ID, ORD_ID, RAT_RATSTARS)
VALUES(8, 108, 4);

INSERT INTO RATING(RAT_ID, ORD_ID, RAT_RATSTARS)
VALUES(9, 109, 3);

INSERT INTO RATING(RAT_ID, ORD_ID, RAT_RATSTARS)
VALUES(10, 110, 5);

INSERT INTO RATING(RAT_ID, ORD_ID, RAT_RATSTARS)
VALUES(11, 111, 3);

INSERT INTO RATING(RAT_ID, ORD_ID, RAT_RATSTARS)
VALUES(12, 112, 4);

SELECT * FROM RATING;

#3) QUERIES:

#3) Display the total number of customers based on gender who have placed orders of worth at least Rs.3000. 

Select cus_id from orders where ORD_AMOUNT >= 3000 group by CUS_ID;

select cus_gender, count(CUST_ID) from customer where cust_id in (Select cus_id from orders where ORD_AMOUNT >= 3000 group by CUS_ID) group by cus_gender;

#4) Display all the orders along with product name ordered by a customer having Customer_Id=2 

select * from orders;
select * from product;
select * from SUPPLIER_PRICING;
select * from supplier_pricing sp, product p, orders o where o.CUS_ID = 2 and sp.PRO_ID = p.pro;

#5) Display the Supplier details who can supply more than one product. 

select * from supplier where supp_id in (
select supp_id from supplier_pricing group by supp_id having count(pro_id) > 1);


#6) Find the least expensive product from each category and print the table with category id, name, product name and price of the product 

select sp.pro_id, min(sp.supp_price), p.PRO_NAME, p.PRO_DESC, p.CAT_ID from supplier_pricing sp, product p where p.pro_id = sp.pro_id group by p.cat_id;

select sp.pro_id, min(sp.supp_price), p.PRO_NAME, p.PRO_DESC, p.CAT_ID from supplier_pricing sp, product p where p.pro_id = sp.pro_id group by sp.pro_id;

select pro_id from supplier_pricing group by pro_id having min(SUPP_PRICE);


#7) Display the Id and Name of the Product ordered after “2021-10-05”. 
select * from ORDERS where ord_date > "2021-10-05";

select pricing_id,pro_id from supplier_pricing where pricing_id in (select pricing_id from ORDERS where ord_date > "2021-10-05");

select pro_id, pro_name from product where pro_id in (select pro_id from supplier_pricing where pricing_id in (select pricing_id from ORDERS where ord_date > "2021-10-05"));


#8) Display customer name and gender whose names start or end with character 'A'. 

select cus_name, CUS_GENDER from customer where cus_name like 'A%' or cus_name like '%A';

#9) Create a stored procedure to display supplier id, name, rating and Type_of_Service. For Type_of_Service, If rating =5, print “Excellent Service”,If rating = 4 print “Good Service”, If rating >2 print “Average Service” else print “Poor Service”.

#SQL QUERY without procedure to genrate type of service
SELECT *,
CASE WHEN RAT_RATSTARS = 5 THEN 'Excellent Service'
WHEN RAT_RATSTARS = 4 THEN 'Good Service'
WHEN RAT_RATSTARS > 2 THEN 'Average Service'
ELSE 'Poor Service'
END AS Type_Of_Service
FROM RATING;

#Full sql query

select s.supp_id,s.supp_name,r.RAT_RATSTARS, 
CASE WHEN R.RAT_RATSTARS = 5 THEN 'Excellent Service'
WHEN R.RAT_RATSTARS = 4 THEN 'Good Service'
WHEN R.RAT_RATSTARS > 2 THEN 'Average Service'
ELSE 'Poor Service'
END AS Type_Of_Service
from rating r join orders o on
r.ord_id = o.ord_id join supplier_pricing sp on o.pricing_id = sp.pricing_id
join supplier s on sp.supp_id = s.supp_id;

#With Procedure:

drop procedure if exists Type_of_Service;

DELIMITER &&
Create Procedure Type_of_Service ()
Begin
select s.supp_id,s.supp_name,r.RAT_RATSTARS, 
CASE WHEN R.RAT_RATSTARS = 5 THEN 'Excellent Service'
WHEN R.RAT_RATSTARS = 4 THEN 'Good Service'
WHEN R.RAT_RATSTARS > 2 THEN 'Average Service'
ELSE 'Poor Service'
END AS Type_Of_Service
from rating r join orders o on
r.ord_id = o.ord_id join supplier_pricing sp on o.pricing_id = sp.pricing_id
join supplier s on sp.supp_id = s.supp_id;End &&

DELIMITER ;

call Type_of_Service();
