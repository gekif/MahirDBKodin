-- Buat Tabel Customer
CREATE TABLE Customer (
	CustomerID CHAR(5) NOT NULL PRIMARY KEY,
	CustomerName VARCHAR(50) NOT NULL,
	CustomerGender VARCHAR(10),
	CustomerPhone VARCHAR(13),
	CustomerAddress VARCHAR(100),

	CONSTRAINT cekCustomerID CHECK(CustomerID LIKE 'CU[0-9][0-9][0-9]'),
	CONSTRAINT cekCustomerGender CHECK(CustomerGender = 'Male' OR CustomerGender = 'Female')
);


-- Buat Tabel Staff
CREATE TABLE Staff (
	StaffID CHAR(5) NOT NULL PRIMARY KEY,	
	StaffName VARCHAR(50) NOT NULL,
	StaffGender VARCHAR(10),
	StaffPhone VARCHAR(13),
	StaffAddress VARCHAR(100),
	StaffSalary NUMERIC(11,2),
	StaffPosition VARCHAR(20),

	CONSTRAINT cekStaffID CHECK(StaffID LIKE 'SF[0-9][0-9][0-9]'),
	CONSTRAINT cekStaffGender CHECK(StaffGender = 'Male' OR StaffGender = 'Female')
);


-- Buat Tabel ItemType
CREATE TABLE ItemType (
	ItemTypeID CHAR(5) NOT NULL PRIMARY KEY,
	ItemTypeName VARCHAR(50) NOT NULL,

	CONSTRAINT CekItemTypeID CHECK(ItemTypeID LIKE 'IT[0-9][0-9][0-9]')
);


-- Buat Tabel Item
CREATE TABLE Item (
	ItemID CHAR(5) NOT NULL PRIMARY KEY,

	ItemTypeID CHAR(5)
		REFERENCES ItemType ON UPDATE CASCADE ON DELETE CASCADE,

	ItemName VARCHAR(20) NOT NULL,
	Price NUMERIC(11,2),
	Quantity INTEGER,

	CONSTRAINT CekItemID CHECK(ItemID LIKE 'IM[0-9][0-9][0-9]')
);


-- Buat Tabel HeaderSellTransaction
CREATE TABLE HeaderSellTransaction (
	TransactionID CHAR(5) NOT NULL PRIMARY KEY,

	CustomerID CHAR(5)
		REFERENCES Customer ON UPDATE CASCADE ON DELETE CASCADE,

	StaffID CHAR(5)
		REFERENCES Staff ON UPDATE CASCADE ON DELETE CASCADE,

	TransactionDate DATE,
	PaymentType VARCHAR(20),

	CONSTRAINT CekTransactionID CHECK(TransactionID LIKE 'TR[0-9][0-9][0-9]')
);


-- Buat Tabel DetailSellTransaction
CREATE TABLE DetailSellTransaction (
	TransactionID CHAR(5) 
		REFERENCES HeaderSellTransaction ON UPDATE CASCADE ON DELETE CASCADE,

	ItemID CHAR(5)
		REFERENCES Item ON UPDATE CASCADE ON DELETE CASCADE,

	SellQuantity INTEGER,

	PRIMARY KEY (TransactionID, ItemID)
);