-- CAST => CAST(nama_kolom AS tipe_data_yang_diinginkan)
SELECT [Gaji] = 'Rp ' + CAST(StaffSalary AS VARCHAR)
FROM Staff;

-- CONVERT => CONVERT(tipe_data_yang_diinginkan, nama_kolom, kode_tujuan)
SELECT [Tanggal Sudah Di Convert] = CONVERT(VARCHAR, TransactionDate, 107)
FROM HeaderSellTransaction;