SELECT CustomerName 
FROM Customer, HeaderSellTransaction 
WHERE DATENAME(DAY, TransactionDate) = 21
;

SELECT CustomerName 
FROM Customer Cs, HeaderSellTransaction Hst 
WHERE
	Cs.CustomerID = Hst.CustomerID AND 
	DATENAME(DAY, TransactionDate) = 21
;


-- Inner Join 
SELECT CustomerName 
FROM Customer Cs
INNER JOIN HeaderSellTransaction Hst 
	ON Cs.CustomerID = Hst.CustomerID
WHERE
	DATENAME(DAY, TransactionDate) = 21
;