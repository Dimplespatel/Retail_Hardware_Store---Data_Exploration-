-- Create tables
-- Table structure for table 'INVOICE'
CREATE TABLE INVOICE(
	InvoiceId INT PRIMARY KEY NOT NULL,
	CustomerId VARCHAR(20),
	InvoiceDate DATE,
	BillingCity VARCHAR(20),
	Total DECIMAL,
	FOREIGN KEY(CustomerId) REFERENCES CUSTOMER(CustomerId)
);

-- Table structure for table 'CUSTOMER'
CREATE TABLE CUSTOMER(
	CustomerId VARCHAR(20) PRIMARY KEY NOT NULL,
	FirstName VARCHAR(10),
	LastName VARCHAR(10),
	City VARCHAR(20),
	Phone VARCHAR(10),
	Email VARCHAR(30)
);

-- Table structure for table 'INVOICELINE'
CREATE TABLE INVOICELINE(
	InvoiceLineId VARCHAR(10) PRIMARY KEY NOT NULL,
	InvoiceId INT,
	ProductId VARCHAR(20),
	UnitPrice DECIMAL,
	Quantity INT,
	FOREIGN KEY(InvoiceId) REFERENCES INVOICE(InvoiceId),
	FOREIGN KEY(ProductId) REFERENCES PRODUCT(ProductId)
);

-- Table structure for table 'PRODUCT'
CREATE TABLE PRODUCT(
	ProductId VARCHAR(20) PRIMARY KEY NOT NULL,
	Name_ VARCHAR(25),
    Brand VARCHAR(20),
	Genre VARCHAR(25)
);

-- End tables

-- Populating tables
-- Populating table 'INVOICE'
INSERT INTO INVOICE(InvoiceId, CustomerId, InvoiceDate, BillingCity, Total)
VALUES 
	(1001, 'GH124', '2022-03-01', 'Tumkur', 180500.00),
	(1002, 'GH125', '2022-03-01', 'Tumkur', 190450.00),
	(1003, 'GH123', '2022-03-01', 'Bangalore', 35255.00),
	(1004, 'GH126', '2022-03-01', 'Hubli', 20000.00),
	(1005, 'GH123', '2022-03-01', 'Bangalore', 135000.00),
	(1006, 'GH129', '2022-03-02', 'Mangalore', 151000.00),
	(1007, 'GH131', '2022-03-02', 'Shivamogga', 69000.00),
	(1008, 'GH127', '2022-03-02', 'Udupi', 137500.00),
	(1009, 'GH124', '2022-03-02', 'Tumkur', 448000.00),
	(1010, 'GH132', '2022-03-02', 'Mysore', 240000.00),
	(1011, 'GH124', '2022-03-03', 'Tumkur', 12500.00),
	(1012, 'GH128', '2022-03-03', 'Hassan', 213000.00),
	(1013, 'GH130', '2022-03-03', 'Chikkamagaluru', 54000.00),
	(1014, 'GH125', '2022-03-03', 'Tumkur', 138000.00),
	(1015, 'GH125', '2022-03-03', 'Tumkur', 515000.00)
;

-- Populating table 'CUSTOMER'
INSERT INTO CUSTOMER(CustomerId, FirstName, LastName, City, Phone, Email)
VALUES 
	('GH123', 'Surya' , 'Gowda' , 'Bangalore', 7894561233, 'suryagowda789@gmail.com'),
	('GH124', 'Rachana' , 'Rachala' , 'Tumkur', 9631125825, 'rachanarach963@gmail.com'),
	('GH125', 'Yogith' , 'Bramhne' , 'Tumkur', 8952113660, 'yogithbram895@gmail.com'),
    ('GH126', 'Abhishek' , 'Bachheti' , 'Hubli', 9117645500, 'abhishekba911@gmail.com'),
    ('GH127', 'Mohit' , 'Chowdary' , 'Udupi', 7014670423, 'mohitchow701@gmail.com'),
    ('GH128', 'Sindhu' , 'Manjunath' , 'Hassan', 7233343312, 'sindhumanj723@gmail.com'),
    ('GH129', 'Prateeksha' , 'Mishra' , 'Mangalore', 9230012557, 'prateeksh923@gmail.com'),
    ('GH130', 'Rashi' , 'Gupta' , 'Chikkamagaluru', 7124561203, 'rashigupta712@gmail.com'),
    ('GH131', 'Sanjay' , 'Nair' , 'Shivamogga', 9014561123, 'sanjoynair901@gmail.com'),
    ('GH132', 'Govind' , 'Shetty' , 'Mysore', 9400561233, 'govindshe940@gmail.com')
;
	
-- Populating table 'INVOICELINE'
INSERT INTO INVOICELINE(InvoiceLineId, InvoiceId, ProductId, UnitPrice, Quantity)
VALUES 
	('A01', 1001 , 'PL006' , 4100.00, 5),
    ('A02', 1001 , 'PL005' , 32000.00, 5),
    ('B01', 1002 , 'PA011' , 15000.00, 8),
    ('B02', 1002 , 'EL106' , 1450.00, 1),
    ('B03', 1002 , 'PA015' , 69000.00, 1),
    ('C01', 1003 , 'EL103' , 2855.00, 6),
    ('C02', 1003 , 'EL104' , 1885.00, 5),
    ('C03', 1003 , 'EL106' , 1450.00, 6),
    ('D01', 1004 , 'PA007' , 10000.00, 2),
    ('E01', 1005 , 'PA011' , 15000.00, 7),
    ('E02', 1005 , 'PA012' , 10000.00, 3),
    ('F01', 1006 , 'PL001' , 80000.00, 1),
    ('F02', 1006 , 'PL002' , 71000.00, 1),
    ('G01', 1007 , 'PA015' , 69000.00, 1),
    ('H01', 1008 , 'EL105' , 250.00, 50),
    ('H02', 1008 , 'PL003' , 25000.00, 5),
    ('I01', 1009 , 'PL001' , 80000.00, 4),
    ('I02', 1009 , 'PL005' , 32000.00, 4),
    ('J01', 1010 , 'PL002' , 71000.00, 3),
    ('J02', 1010 , 'PL004' , 9000.00, 3),
    ('K01', 1011 , 'EL101' , 250.00, 15),
    ('K02', 1011 , 'EL102' , 175.00, 50),
    ('L01', 1012 , 'PL002' , 71000.00, 3),
    ('M01', 1013 , 'PL004' , 9000.00, 6),
    ('N01', 1014 , 'PA015' , 69000.00, 2),
    ('O01', 1015 , 'PA008' , 20000.00, 5),
    ('O02', 1015 , 'PA007' , 10000.00, 4),
    ('O03', 1015 , 'PA009' , 15000.00, 6),
    ('O04', 1015 , 'PA010' , 30000.00, 3),
    ('O05', 1015 , 'PA015' , 69000.00, 4)
;

-- Populating table 'PRODUCT'
INSERT INTO PRODUCT(ProductId, Name_, Brand, Genre)
VALUES 
	('PL001', 'Washbasin', 'Grohe', 'Sanitary'),
    ('PL002', 'EWC', 'Grohe', 'Sanitary'),
    ('PL003', 'Headshower', 'Kohler', 'Sanitary'),
    ('PL004', 'Health faucet', 'Jaquar', 'Sanitary'),
    ('PL005', 'Basinmixer', 'Grohe', 'Sanitary'),
    ('PL006', 'Diverter', 'Jaquar', 'Sanitary'),
	('EL101', 'Switch plate', 'Legrand', 'Electrical'),
    ('EL102', 'Switches', 'Legrand', 'Electrical'),
    ('EL103', 'Ceiling Fan', 'Havells', 'Electrical'),
    ('EL104', 'Exhaust Fan', 'Crompton', 'Electrical'),
    ('EL105', 'Concealed light', 'Philips', 'Electrical'),
    ('EL106', 'False ceiling light', 'Philips', 'Electrical'),
	('PA007', '10ltr Premium Emulsion', 'Asian', 'Paint'),
    ('PA008', '20ltr Premium Emulsion', 'Asian', 'Paint'),
    ('PA009', '10ltr Royel Emulsion', 'Asian', 'Paint'),
    ('PA010', '20ltr Royel Emulsion', 'Asian', 'Paint'),
    ('PA011', 'Duco paint', 'Nippon', 'Paint'),
    ('PA012', 'Melamine paint', 'Berger', 'Paint'),
    ('PA013', 'Enamel paint', 'Asian', 'Paint'),
    ('PA014', 'Primer', 'Asian', 'Paint'),
    ('PA015', 'Damp Proof', 'Asian', 'Paint')
;
   
SELECT * FROM INVOICE;
SELECT * FROM CUSTOMER;
SELECT * FROM INVOICELINE;
SELECT * FROM CUSTOMER;

-- #1. Name the best customer? 
SELECT i.InvoiceId, i.Total, c.FirstName, c.LastName, c.City, c.Phone
FROM INVOICE i
INNER JOIN CUSTOMER c
ON i.CustomerId = c.CustomerId
WHERE i.Total = ( SELECT MAX(INVOICE.Total) FROM INVOICE );

-- #2. Which are the most bought products?
SELECT il.ProductId, il.Quantity, p.Name_, p.Genre
FROM INVOICELINE il
INNER JOIN PRODUCT p
ON il.ProductId = p.ProductId
ORDER BY il.Quantity DESC;

-- #3. Which products made the highest total?
SELECT i.Total, il.UnitPrice, p.Name_,p.Genre
FROM INVOICE i
INNER JOIN INVOICELINE il
ON i.InvoiceId = il.InvoiceId
INNER JOIN PRODUCT p
ON il.ProductId = p.ProductId
ORDER BY i.Total DESC;

-- #4. Find the top 2 cities with most customers?
SELECT COUNT(i.InvoiceId) AS ImpCity, c.City
FROM INVOICE i
INNER JOIN CUSTOMER c
ON i.CustomerId = c.CustomerId
GROUP BY c.City
ORDER BY ImpCity DESC
LIMIT 2;

-- #5. Find out highest purchared brand?
SELECT SUM(il.Quantity) AS ProductCount, p.Brand, p.Genre
FROM INVOICELINE il
INNER JOIN PRODUCT p
ON il.ProductId = p.ProductId
GROUP BY p.Brand
ORDER BY ProductCount DESC;
    