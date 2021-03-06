Create Table PersonContact (

	PersonID int NOT NULL,
	FirstName varchar(50),
	LastName varchar(50),
	Age int,
	City varchar(50),
	Email varchar(50),
	Phone varchar(50)

	CONSTRAINT pk_id PRIMARY KEY (PersonID) 
	)


SELECT*
FROM Production.Product
WHERE (StandardCost BETWEEN 500 AND 1000)
OR (SafetyStockLevel = 100)
ORDER BY StandardCost

SELECT*
FROM HumanResources.Employee
WHERE (SalariedFlag != 0)
AND (SickLeaveHours > 55)
ORDER BY VacationHours

SELECT*
FROM HumanResources.Department
WHERE GroupName IN('Research and Development', 'Sales and Marketing' , 'Executive General and Administration')
AND (DepartmentID < 3 OR DepartmentID > 6 )
ORDER BY DepartmentID

SELECT*
FROM Production.Product
WHERE (Color IS NOT ('NULL'))
AND (SafetyStockLevel = 500 OR SafetyStockLevel = 800 OR SafetyStockLevel = 1000)
ORDER BY SafetyStockLevel

SELECT Color
FROM Production.Product
WHERE Color IN ('RED','BLACK','SILVER')
GROUP BY Color

SELECT SafetyStockLevel
FROM Production.Product
WHERE SafetyStockLevel NOT IN ('500')
GROUP BY SafetyStockLevel
HAVING SafetyStockLevel > 100

SELECT*
FROM HumanResources.Employee
WHERE OrganizationLevel BETWEEN 2 AND 4
AND Gender != 'F'
AND JobTitle LIKE '%neer'

SELECT*
FROM person.person
INNER JOIN Person.EmailAddress
ON Person.BusinessEntityID = EmailAddress.BusinessEntityID
SELECT*
FROM person.person
INNER JOIN Person.EmailAddress
ON Person.BusinessEntityID = EmailAddress.BusinessEntityID
AND LastName LIKE ('M%')

SELECT*
FROM person.person
INNER JOIN Person.EmailAddress
ON Person.BusinessEntityID = EmailAddress.BusinessEntityID


SELECT EmailPromotion,
CASE EmailPromotion WHEN 0 THEN 'Not Promoted by e-mail'
ELSE 'Promoted by e-mail'
END AS 'Promote'
FROM Person.Person
SELECT*
FROM person.person
INNER JOIN Person.EmailAddress
ON Person.BusinessEntityID = EmailAddress.BusinessEntityID
WHERE PersonType != 'EM'
AND Title IS NOT ('NULL')
AND EmailPromotion <= 1