-- Exists
-- operator yang digunakan untuk mengetahui subquery mengembalikan sesuai 

SELECT * 
FROM Staff 
WHERE EXISTS(
	SELECT StaffId
	WHERE StaffSalary >  7000000
)