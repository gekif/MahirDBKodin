--1
SELECT * 
FROM HeaderSellTransaction;

SELECT * FROM Customer;


BEGIN TRANSACTION

UPDATE Customer
SET CustomerName = LEFT(CustomerName, CHARINDEX(' ', CustomerName) - 1)
FROM Customer Cs, HeaderSellTransaction Hst 
WHERE Cs.CustomerID = Hst.CustomerID AND 
DATENAME(DAY, TransactionDate) = 21

ROLLBACK


--2
BEGIN TRANSACTION

UPDATE HeaderSellTransaction 
SET PaymentType = 'Hutang'
FROM Customer Cs, HeaderSellTransaction Hst
WHERE Cs.CustomerID = Hst.CustomerID AND 
Cs.CustomerID = 'CU001'

ROLLBACK


--3
BEGIN TRANSACTION

DELETE FROM Staff Where StaffSalary < 7000000

ROLLBACK

SELECT * FROM STAFF;


-- 4
SELECT 
	TransactionDate,
	CustomerName,
	ItemName,
	[Discount] = 0.2 * Price, 
	PaymentType
FROM 
	Customer Cs, HeaderSellTransaction Hst, DetailSellTransaction Dst, Item Im 
WHERE 
	Cs.CustomerID = Hst.CustomerID AND 
	Hst.TransactionID = Dst.TransactionID AND 
	Dst.ItemID = Im.ItemID AND 
	DATENAME(DAY, TransactionDate) = 22