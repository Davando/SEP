USE AdventureWorks2019

-- Conceptual Questions
-- 1. CRUD stands for Create, Read, Update, Delete
-- 2. The System Databases are master, model, msdb, tempdb, mssql system resource
-- 3. OLTP captures, stores, and processes data from very recent transactions 
--    whereas OLAP holds and analyzes aggregated historical data
-- 4. DDL (Data Definition Language) is used to specify the database schema and database structure. 
--    DDL commands include: CREATE, ALTER, TRUNCATE, DROP TABLE, RENAME
--    DML (Data Manipulation Language) is used to access, modify, and retrieve data from a database.
--	  DML commands include: SELECT, INSERT, UPDATE, DELETE, and MERGE
-- 5. LIKE creates a search expression, returning a result set of where results match with a specified pattern.
-- 6. Wildcards available for LIKE: _, %, [], ^, -
-- 7. Left join returns the result set of all rows from the left table and non-NULL results from the right table.
--    Inner join on the other hand returns the result set where values from both left and right tables are not NULL.


-- Write queries for the following scenarios

-- Question 1
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product

-- Question 2
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE ListPrice != 0

-- Question 3
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE Color IS NOT NULL

-- Question 4
SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE Color IS NOT NULL AND ListPrice > 0

-- Question 5
SELECT Name + ' ' + Color
FROM Production.Product
WHERE Color IS NOT NULL

-- Question 6
SELECT Name, Color
FROM Production.Product
WHERE Name LIKE '%Crankarm' OR Name LIKE 'Chainring%'

-- Question 7
SELECT ProductID, Name
FROM Production.Product
WHERE ProductID BETWEEN 400 AND 500

-- Question 8
SELECT ProductID, Name, Color
FROM Production.Product
WHERE Color = 'black' OR Color = 'blue'

-- Question 9
SELECT Name
FROM Production.Product
WHERE Name LIKE 'S%'

-- Question 10
SELECT Name, ListPrice
FROM Production.Product
WHERE Name LIKE 'A%' OR Name LIKE 'S%'
ORDER BY Name ASC

-- Question 11
SELECT Name
FROM Production.Product
WHERE Name LIKE 'SPO[^k]%' 
ORDER BY Name ASC

-- Question 12
SELECT DISTINCT ISNULL(ProductSubcategoryID,1) [ProductSubcategoryID], ISNULL(Color, 'black') [Color]
FROM Production.Product

