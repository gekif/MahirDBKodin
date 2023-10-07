-- Buat DB
CREATE DATABASE eCommerce;


-- Gunakan DB eCommerce
USE eCommerce;


-- Buat Tabel Customer
CREATE TABLE Customer (
	CustomerID CHAR(5) NOT NULL PRIMARY KEY,
	CONSTRAINT cekCustomerID CHECK(CustomerID LIKE 'CU[0-9][0-9][0-9]'),
	
	CustomerName VARCHAR(50) NOT NULL,
	
	CustomerGender VARCHAR(10),
	CONSTRAINT cekCustomerGender CHECK(CustomerGender = 'Male' OR CustomerGender = 'Female'),

	CustomerPhone VARCHAR(13),
	CustomerAddress VARCHAR(100)
);


-- Buat Tabel Staff
CREATE TABLE Staff (
	StaffID CHAR(5) NOT NULL PRIMARY KEY,
	CONSTRAINT cekStaffID CHECK(StaffID LIKE 'SF[0-9][0-9][0-9]'),
	
	StaffName VARCHAR(50) NOT NULL,
	
	StaffGender VARCHAR(10),
	CONSTRAINT cekStaffGender CHECK(StaffGender = 'Male' OR StaffGender = 'Female'),

	StaffPhone VARCHAR(13),
	StaffAddress VARCHAR(100),
	StaffSalary NUMERIC(11,2),
	StaffPosition VARCHAR(20)
);




