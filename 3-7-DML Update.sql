SELECT * FROM Customer;

BEGIN TRANSACTION

Update Customer 
Set CustomerName =  'Farez'
WHERE CustomerID = 'CU001'

ROLLBACK