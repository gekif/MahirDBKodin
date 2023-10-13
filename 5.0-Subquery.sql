-- Subquery
-- Query dalam query 
-- Bisa menggunakan subqery untuk return data yang akan digunakan pada query utama 

-- In 
-- Memungkinkan untuk menguji apakah nilai terdapat pada kandungannya 
SELECT * FROM Staff 
WHERE StaffPosition IN ('Cashier', 'Supervisor');

SELECT * FROM Staff;

SELECT StaffID 	FROM Staff 
WHERE StaffSalary > 7000000;

SELECT * FROM Staff 
WHERE StaffID IN (
	SELECT StaffID 
	FROM Staff 
	WHERE StaffSalary > 7000000
);

