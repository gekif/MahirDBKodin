-- Alias 
-- Subquery yang punya nama lain
-- Contoh: Customer Cs, Cs itu Alias


SELECT ItemName, Price 
FROM Item, (SELECT [Rata-rata] = AVG(Price) FROM Item) AS Tt
WHERE Price > Tt.[Rata-rata]
;

SELECT * FROM Item;

SELECT AVG(Price) FROM Item;