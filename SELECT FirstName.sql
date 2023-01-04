SELECT FirstName
FROM Person.Person

SELECT *
FROM Person.Person

SELECT DISTINCT
FROM Person.Person

SELECT COUNT (DISTINCT, FirstName)
FROM Person.Person

SELECT *
FROM Person.Person
WHERE FirstName='Diani'

SELECT *
FROM Person.Person
WHERE BusinessEntityID BETWEEN 31 AND 40

SELECT *
FROM Person.Person
WHERE FirstName='Diani' OR LastName='miller'

SELECT *
FROM Person.Person
ORDER BY FirsName ASC, LastName DESC

INSERT INTO Customers
    (CustomerName, City, Country)
VALUES
    ('Cardinal', 'Stavanger', 'Norway')

SELECT FirstName, LastName, Title
from Person.Person
where Title IS NOT NULL

update Person.Person
SET FirstName = 'Ali', LastName = 'Daeie'
Where BusinessEntityID = 1

DELETE
from Person.PersonPhone
Where BusinessEntityID = 1

SELECT TOP 3 *
from Person.Person
Where FirstName = 'John'

SELECT MIN(bonus)
FROM sales.salesperson

SELECT MAX(bonus)
FROM sales.salesperson

SELECT COUNT(BusinessEntityID)
FROM Sales.SalesPerson

SELECT AVG(Bonus)
FROM Sales.SalesPerson
WHERE (Bonus > 0)

SELECT SUM(Bonus)
FROM Sales.SalesPerson
WHERE (Bonus > 0)

SELECT *
FROM Person.CountryRegion
WHERE Name IN ('Andorra')

SELECT *
FROM Person.CountryRegion
WHERE Name NOT IN ('Andorra')

SELECT * FROM Customers
WHERE Country IN (SELECT Country FROM Suppliers)

SELECT * FROM Sales.SalesPerson
WHERE Bonus BETWEEN 2000 AND 4000

SELECT * FROM Sales.SalesPerson
WHERE Bonus NOT BETWEEN 2000 AND 4000

SELECT FirstName AS 'نام', LastName AS 'نام خانوادگی'
FROM Person.Person

SELECT Orders.OrderID, Customers.CustomerName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName

SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName

SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City

SELECT City FROM Customers
UNION ALL
SELECT City FROM Suppliers
ORDER BY City

CREATE DATABASE testDB

DROP DATABASE testDB

CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
)

CREATE TABLE TestTable AS
SELECT customername, contactname
FROM customers

ALTER TABLE Person.Person
ADD MMName varchar(200)

ALTER TABLE Person.Person
DROP COLUMN MMName