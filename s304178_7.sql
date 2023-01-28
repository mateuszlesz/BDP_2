CREATE TABLE AdventureWorksDW2019.dbo.CSV_Customers
(FirstName varchar(255),
LastName varchar(255),
EmailAddress varchar(255),
Address varchar(255),
City varchar(255),
Region varchar(255),
PhoneNumber varchar(255),
CREATE_TIMESTAMP datetime,
UPDATE_TIMESTAMP datetime );

SELECT * FROM dbo.CSV_Customers ORDER BY UPDATE_TIMESTAMP DESC, CREATE_TIMESTAMP DESC