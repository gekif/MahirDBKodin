-- MAX 
SELECT [Gaji Terbesar] = MAX(StaffSalary)
FROM Staff;

-- MIN 
SELECT [Gaji Terkecil] = MIN(StaffSalary)
FROM Staff;

-- AVG
SELECT [Gaji Rata-rata] = AVG(StaffSalary)
FROM Staff;

-- COUNT
SELECT [Jumlah Transaksi] = COUNT(TransactionId)
FROM HeaderSellTransaction;

-- SUM 
SELECT [Total Gaji] = SUM(StaffSalary)
FROM Staff;