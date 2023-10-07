-- Hapus Tabel DetailSellTransaction
DROP TABLE DetailSellTransaction;


CREATE TABLE DetailSellTransaction (
	TransactionID CHAR(5) 
		REFERENCES HeaderSellTransaction ON UPDATE CASCADE ON DELETE CASCADE,

	ItemID CHAR(5)
		REFERENCES Item ON UPDATE CASCADE ON DELETE CASCADE,

	SellQuantity INTEGER,

	PRIMARY KEY (TransactionID, ItemID)
);


-- Tambah Kolom Description Pada Tabel Item
ALTER TABLE Item 
ADD "Description" VARCHAR(100);

-- Hapus Kolom Description Pada Tabel Item
ALTER TABLE Item 
DROP COLUMN "Description";