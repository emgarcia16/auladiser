-- cRud
SELECT * FROM [dbo].[Person]

SELECT Name FROM [dbo].[Person]
WHERE PersonID = 1

-- ON-PREMISES

-- Crud
INSERT INTO [dbo].[Person] ([Name]) VALUES ('Juan')

INSERT INTO [dbo].[Person] ([Name]) VALUES ('Maya')

INSERT INTO [dbo].[Person] ([Name]) VALUES ('Laura')

-- CrUd
UPDATE [dbo].[Person] SET
[Name] = 'Laura'

UPDATE [dbo].[Person] SET
[Name] = 'Javier'
WHERE PersonID = 2

UPDATE [dbo].[Person] SET
[Name] = 'Maya'
WHERE PersonID = 3

-- cruD
DELETE FROM [dbo].[Person] 
WHERE PersonID = 6

/*
	Joins:
	1. Inner join
	2. Left join
	
	Alias de una tabla: nombre virtual o en memoria
*/

-- INNER Joins
SELECT * FROM [dbo].[Items] i 

SELECT * FROM [dbo].[Person] p

SELECT p.Name, i.Completed FROM [dbo].[Items] i 
INNER JOIN [dbo].[Person] p ON i.PersonID = p.PersonID

SELECT * FROM [dbo].[Person] p
SELECT * FROM [dbo].[Items] i 

SELECT p.Name, i.Completed FROM [dbo].[Person] p
INNER JOIN [dbo].[Items] i ON p.PersonID = i.PersonID

-- Left Joins
SELECT p.Name, i.Completed FROM [dbo].[Person] p
LEFT JOIN [dbo].[Items] i ON p.PersonID = i.PersonID

-- Tipos de indexes
--   Index Cluster -> Primary Key
--   Non Cluster Index --> Indices adicionales
