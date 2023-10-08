SELECT * FROM Customer;

-- Transaction
 -- BEGIN TRANSCATION 
 -- Perintah  
 -- Commit/Rollback
-- END


BEGIN TRANSACTION 
	INSERT INTO Customer VALUES
	(
		'CU006',
		'Alex',
		'Male',
		'123123123',
		'Jalan Bunga'
	)
COMMIT

BEGIN TRANSACTION 
	INSERT INTO Customer  (CustomerID, CustomerName) VALUES
	(
		'CU007',
		'Alexa'	
	)
ROLLBACK;


BEGIN TRANSACTION

INSERT INTO Customer VALUES 
(
		'CU007',
		'Putri',
		'Female',
		'123123123',
		'Jalan Kelopak'
)
COMMIT


BEGIN TRANSACTION

INSERT INTO Customer VALUES 
('CU008', 'Rais', 'Male', '080808', 'Jalan Melrose'),
('CU009', 'Yoga', 'Male', '090909', 'Jalan Melrose')

COMMIT