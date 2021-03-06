CREATE DATABASE SportsStore
GO

USE SportsStore
GO

CREATE TABLE Products (
	ProductID INT PRIMARY KEY IDENTITY(1,1),
	Name NVARCHAR(100) NOT NULL, 
	Description NVARCHAR(500) NOT NULL,
	Category NVARCHAR(50) NOT NULL,
	Price DECIMAL(16,2) NOT NULL
)
GO

INSERT Products VALUES('Kayak', 'A boat for one person', 'Watersports', 275)
INSERT Products VALUES('Lifejacket', 'Protective & fashionable', 'Watersports', 48.95)
INSERT Products VALUES('Soccer Ball', 'FIFA-approved size and weight', 'Soccer', 19.5)
INSERT Products VALUES('Corner flag', 'Give your playing field a professional touch', 'Soccer', 34.95)
INSERT Products VALUES('Stadium', 'Flat-packed 35.000-seat stadium', 'Soccer', 79500)
INSERT Products VALUES('Thinking Cap', 'Improve your brain efficiency by 75%', 'Chess', 16)
INSERT Products VALUES('Unsteady Chair', 'Secretly give your opponent a disavantage', 'Chess', 29.95)
INSERT Products VALUES('Human Chess Board', 'A full game for the family', 'Chess', 75)
INSERT Products VALUES('Bling-Bling King', 'Gold-plated, diamond-studded King', 'Chess', 1200)
INSERT Products VALUES('Bling-Bling Queen', 'Gold-plated, diamond-studded Queen', 'Chess', 1200)
GO

SELECT * FROM Products
GO