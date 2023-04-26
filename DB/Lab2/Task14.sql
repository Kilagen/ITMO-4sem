SELECT ProductSubcategoryID, COUNT(ProductID) AS ProductCount
FROM [Production].[Product]
WHERE 
	ProductSubcategoryID IS NOT NULL
	AND Color IS NOT NULL
GROUP BY ProductSubcategoryID