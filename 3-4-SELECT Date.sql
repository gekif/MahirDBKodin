-- DATENAME => DATENAME(interval, date)
-- Interval = Day, Weekday, Month, Year
SELECT [Tahun Transaksi] = DATENAME(YEAR, TransactionDate)
FROM HeaderSellTransaction;

SELECT [Hari Transaksi] = DATENAME(WEEKDAY, TransactionDate)
FROM HeaderSellTransaction;

SELECT [Tanggal Transaksi] = DATENAME(DAY, TransactionDate)
FROM HeaderSellTransaction;


-- DATEDIFF => DATEDIFF(interval, tanggal_pertama, tanggal_kedua)
SELECT [ULTAH INDONESIA] = DATEDIFF(YEAR, '1945/08/17', '2020/08/17')


-- DATEADD => DATEADD(interval, mau_tambah_berapa, date)
SELECT DATEADD(DAY, 3, '1945/08/17');
SELECT DATEADD(YEAR, 3, '1945/08/17');


