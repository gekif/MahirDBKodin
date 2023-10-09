SELECT * FROM Item;

SELECT  ItemTypeId, [Jumlah] = SUM(Quantity)
FROM Item 
GROUP BY ItemTypeId

SELECT ItemTypeId, [Jumlah] = SUM(Quantity) 
FROM Item 
GROUP BY ItemTypeId
HAVING SUM(Quantity) > 100