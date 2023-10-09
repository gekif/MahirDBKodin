--1
SELECT 
	[Maksimum Price] = MAX(Price),
	[Minimum Price] = MIN(Price),
	[Average Price] = AVG(Price)
From Item;


--2
SELECT 
	[Gender] = LEFT(StaffGender,1),
	[Rata-rata Salary] = 'Rp. ' + CAST (AVG(StaffSalary) AS VARCHAR) 
FROM Staff
GROUP BY StaffGender
;


--3
SELECT
	ItemTypeName,
	[Total Transaction] = COUNT(TransactionID)
FROM ItemType It, DetailSellTransaction Dst, Item Im
WHERE 
	It.ItemTypeID = Im.ItemTypeID AND
	Dst.ItemID = Im.ItemID
GROUP BY ItemTypeName
;

SELECT * FROM DetailSellTransaction



--4
SELECT 
	TransactionID, [Qty Per Trx] = SUM(SellQuantity)
FROM DetailSellTransaction
GROUP BY TransactionID
